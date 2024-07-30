class Restaurant {
    constructor(name, latitude, longitude) {
        this.name = name;
        this.latitude = latitude;
        this.longitude = longitude;
    }
}

class Grid {
    constructor(size) {
        this.size = size;
        this.cells = new Map();
    }

    getCellKey(latitude, longitude) {
        const x = Math.floor(latitude / this.size);
        const y = Math.floor(longitude / this.size);
        return `${x},${y}`;
    }

    addRestaurant(restaurant) {
        const key = this.getCellKey(restaurant.latitude, restaurant.longitude);
        if (!this.cells.has(key)) {
            this.cells.set(key, []);
        }
        this.cells.get(key).push(restaurant);
    }

    getNearbyRestaurants(latitude, longitude) {
        const x = Math.floor(latitude / this.size);
        const y = Math.floor(longitude / this.size);
        const nearbyRestaurants = [];
        for (let dx = -1; dx <= 1; dx++) {
            for (let dy = -1; dy <= 1; dy++) {
                const key = `${x + dx},${y + dy}`;
                if (this.cells.has(key)) {
                    nearbyRestaurants.push(...this.cells.get(key));
                }
            }
        }
        return nearbyRestaurants;
    }
}

const gridSize = 0.01;
const grid = new Grid(gridSize);
const restaurants = [
    new Restaurant("Pizza Place", 40.7125, -74.0055),
    new Restaurant("Burger Joint", 40.7130, -74.0045),
    new Restaurant("Sushi Bar", 40.7140, -74.0035),
    new Restaurant("Taco Stand", 40.7128, -74.0060),
    new Restaurant("Coffee Shop", 40.7135, -74.0050),
    new Restaurant("Steak House", 40.7122, -74.0065),
    new Restaurant("Vegan Deli", 40.7119, -74.0050),
    new Restaurant("Fish Market", 40.7138, -74.0040),
    new Restaurant("Dumpling House", 40.7127, -74.0070),
    new Restaurant("Ice Cream Parlor", 40.7132, -74.0062),
];

restaurants.forEach(restaurant => grid.addRestaurant(restaurant));

const map = L.map('map').setView([40.7128, -74.0060], 14);
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

restaurants.forEach(restaurant => {
    L.marker([restaurant.latitude, restaurant.longitude]).addTo(map)
        .bindPopup(`${restaurant.name}<br>(${restaurant.latitude.toFixed(4)}, ${restaurant.longitude.toFixed(4)})`);
});

function onMapClick(e) {
    const numRestaurants = parseInt(document.getElementById('numRestaurants').value);
    const nearbyRestaurants = grid.getNearbyRestaurants(e.latlng.lat, e.latlng.lng);
    const sortedRestaurants = nearbyRestaurants.sort((a, b) => {
        const distA = Math.hypot(a.latitude - e.latlng.lat, a.longitude - e.latlng.lng);
        const distB = Math.hypot(b.latitude - e.latlng.lat, b.longitude - e.latlng.lng);
        return distA - distB;
    }).slice(0, numRestaurants);

    let popupContent = `<b>Nearby Restaurants (${numRestaurants})</b><br>`;
    sortedRestaurants.forEach(restaurant => {
        popupContent += `${restaurant.name} (${restaurant.latitude.toFixed(4)}, ${restaurant.longitude.toFixed(4)})<br>`;
    });

    L.popup()
        .setLatLng(e.latlng)
        .setContent(popupContent)
        .openOn(map);
}

map.on('click', onMapClick);

function resetMap() {
    map.eachLayer(layer => {
        if (layer instanceof L.Marker || layer instanceof L.Popup) {
            map.removeLayer(layer);
        }
    });

    restaurants.forEach(restaurant => {
        L.marker([restaurant.latitude, restaurant.longitude]).addTo(map)
            .bindPopup(`${restaurant.name}<br>(${restaurant.latitude.toFixed(4)}, ${restaurant.longitude.toFixed(4)})`);
    });
}
