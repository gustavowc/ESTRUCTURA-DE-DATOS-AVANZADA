class BKTree {
    constructor() {
        this.root = null;
    }

    add(product) {
        if (this.root === null) {
            this.root = new BKNode(product);
        } else {
            this.root.add(product);
        }
    }

    search(query, threshold) {
        if (this.root === null) {
            return [];
        } else {
            return this.root.search(query, threshold);
        }
    }
}

class BKNode {
    constructor(product) {
        this.product = product;
        this.children = {};
    }

    add(product) {
        const distance = this.calculateDistance(this.product, product);
        if (!this.children[distance]) {
            this.children[distance] = new BKNode(product);
        } else {
            this.children[distance].add(product);
        }
    }

    search(query, threshold) {
        const results = [];
        const distance = this.calculateDistance(this.product, query);
        if (distance <= threshold) {
            results.push(this.product);
        }
        for (let i = Math.max(0, distance - threshold); i <= distance + threshold; i++) {
            if (this.children[i]) {
                results.push(...this.children[i].search(query, threshold));
            }
        }
        return results;
    }

    calculateDistance(product1, product2) {
        // Example distance function based on price, category, and rating
        // You can customize this function to consider other features as well
        let distance = Math.abs(product1.price - product2.price);
        if (product1.category !== product2.category) {
            distance += 10; // Arbitrary penalty for different categories
        }
        distance += Math.abs(product1.rating - product2.rating);
        return distance;
    }
}
