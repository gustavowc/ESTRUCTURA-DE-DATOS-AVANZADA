-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2024 a las 04:12:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`) VALUES
(1, 'El Quijote', 'Miguel de Cervantes'),
(2, 'Cien Años de Soledad', 'Gabriel Garcia Marquez'),
(3, 'Don Juan Tenorio', 'Jose Zorrilla'),
(4, 'La Celestina', 'Fernando de Rojas'),
(5, 'La Casa de los Espíritus', 'Isabel Allende'),
(6, 'Los Miserables', 'Victor Hugo'),
(7, 'Crimen y Castigo', 'Fyodor Dostoevsky'),
(8, 'Guerra y Paz', 'Leo Tolstoy'),
(9, 'Orgullo y Prejuicio', 'Jane Austen'),
(10, '1984', 'George Orwell'),
(11, 'Matar a un Ruiseñor', 'Harper Lee'),
(12, 'El Gran Gatsby', 'F. Scott Fitzgerald'),
(13, 'En Busca del Tiempo Perdido', 'Marcel Proust'),
(14, 'La Odisea', 'Homero'),
(15, 'Los Hermanos Karamazov', 'Fyodor Dostoevsky'),
(16, 'Ulises', 'James Joyce'),
(17, 'Madame Bovary', 'Gustave Flaubert'),
(18, 'El Retrato de Dorian Gray', 'Oscar Wilde'),
(19, 'Anna Karenina', 'Leo Tolstoy'),
(20, 'El Proceso', 'Franz Kafka'),
(21, 'El Señor de los Anillos', 'J.R.R. Tolkien'),
(22, 'El Principito', 'Antoine de Saint-Exupéry'),
(23, 'Drácula', 'Bram Stoker'),
(24, 'El Nombre de la Rosa', 'Umberto Eco'),
(25, 'Fahrenheit 451', 'Ray Bradbury'),
(26, 'Cumbres Borrascosas', 'Emily Bronte'),
(27, 'Frankenstein', 'Mary Shelley'),
(28, 'Las Aventuras de Tom Sawyer', 'Mark Twain'),
(29, 'El Retrato de una Dama', 'Henry James'),
(30, 'El Lobo Estepario', 'Hermann Hesse'),
(31, 'Los Pilares de la Tierra', 'Ken Follett'),
(32, 'Memorias de una Geisha', 'Arthur Golden'),
(33, 'La Sombra del Viento', 'Carlos Ruiz Zafón'),
(34, 'La Historia Interminable', 'Michael Ende'),
(35, 'La Metamorfosis', 'Franz Kafka'),
(36, '1984', 'George Orwell'),
(37, 'Moby Dick', 'Herman Melville'),
(38, 'Rayuela', 'Julio Cortázar'),
(39, 'El Amor en los Tiempos del Cólera', 'Gabriel Garcia Marquez'),
(40, 'El Camino de los Reyes', 'Brandon Sanderson'),
(41, 'La Canción de Aquiles', 'Madeline Miller'),
(42, 'Los Juegos del Hambre', 'Suzanne Collins'),
(43, 'La Chica del Tren', 'Paula Hawkins'),
(44, 'El Código Da Vinci', 'Dan Brown'),
(45, 'Ángeles y Demonios', 'Dan Brown'),
(46, 'Inferno', 'Dan Brown'),
(47, 'La Hoguera de las Vanidades', 'Tom Wolfe'),
(48, 'La Isla del Tesoro', 'Robert Louis Stevenson'),
(49, 'Robinson Crusoe', 'Daniel Defoe'),
(50, 'El Conde de Montecristo', 'Alexandre Dumas'),
(51, 'El Silencio de los Inocentes', 'Thomas Harris'),
(52, 'El Hombre Invisible', 'H.G. Wells'),
(53, 'La Máquina del Tiempo', 'H.G. Wells'),
(54, 'Los Viajes de Gulliver', 'Jonathan Swift'),
(55, 'El Mundo Perdido', 'Arthur Conan Doyle'),
(56, 'La Guerra de los Mundos', 'H.G. Wells'),
(57, 'La Naranja Mecánica', 'Anthony Burgess'),
(58, 'El Hobbit', 'J.R.R. Tolkien'),
(59, 'Las Crónicas de Narnia', 'C.S. Lewis'),
(60, 'Harry Potter y la Piedra Filosofal', 'J.K. Rowling'),
(61, 'Harry Potter y la Cámara Secreta', 'J.K. Rowling'),
(62, 'Harry Potter y el Prisionero de Azkaban', 'J.K. Rowling'),
(63, 'Harry Potter y el Cáliz de Fuego', 'J.K. Rowling'),
(64, 'Harry Potter y la Orden del Fénix', 'J.K. Rowling'),
(65, 'Harry Potter y el Misterio del Príncipe', 'J.K. Rowling'),
(66, 'Harry Potter y las Reliquias de la Muerte', 'J.K. Rowling'),
(67, 'El Alquimista', 'Paulo Coelho'),
(68, 'El Demonio y la Señorita Prym', 'Paulo Coelho'),
(69, 'Once Minutos', 'Paulo Coelho'),
(70, 'Veronika Decide Morir', 'Paulo Coelho'),
(71, 'La Quinta Montaña', 'Paulo Coelho'),
(72, 'El Zahir', 'Paulo Coelho'),
(73, 'Aleph', 'Paulo Coelho'),
(74, 'Adulterio', 'Paulo Coelho'),
(75, 'Brida', 'Paulo Coelho'),
(76, 'El Guerrero de la Luz', 'Paulo Coelho'),
(77, 'El Manuscrito Encontrado en Accra', 'Paulo Coelho'),
(78, 'El Vencedor está Solo', 'Paulo Coelho'),
(79, 'Los Detectives Salvajes', 'Roberto Bolaño'),
(80, '2666', 'Roberto Bolaño'),
(81, 'La Ciudad y los Perros', 'Mario Vargas Llosa'),
(82, 'La Fiesta del Chivo', 'Mario Vargas Llosa'),
(83, 'Pantaleón y las Visitadoras', 'Mario Vargas Llosa'),
(84, 'Conversación en La Catedral', 'Mario Vargas Llosa'),
(85, 'La Casa Verde', 'Mario Vargas Llosa'),
(86, 'La Guerra del Fin del Mundo', 'Mario Vargas Llosa'),
(87, 'Travesuras de la Niña Mala', 'Mario Vargas Llosa'),
(88, 'Los Cachorros', 'Mario Vargas Llosa'),
(89, 'El Héroe Discreto', 'Mario Vargas Llosa'),
(90, 'Cinco Esquinas', 'Mario Vargas Llosa'),
(91, 'El Otoño del Patriarca', 'Gabriel Garcia Marquez'),
(92, 'El Coronel no Tiene quien le Escriba', 'Gabriel Garcia Marquez'),
(93, 'Crónica de una Muerte Anunciada', 'Gabriel Garcia Marquez'),
(94, 'Relato de un Náufrago', 'Gabriel Garcia Marquez'),
(95, 'La Mala Hora', 'Gabriel Garcia Marquez'),
(96, 'El Amor y Otros Demonios', 'Gabriel Garcia Marquez'),
(97, 'Del Amor y Otros Demonios', 'Gabriel Garcia Marquez'),
(98, 'Doce Cuentos Peregrinos', 'Gabriel Garcia Marquez'),
(99, 'El General en su Laberinto', 'Gabriel Garcia Marquez'),
(100, 'Vivir para Contarla', 'Gabriel Garcia Marquez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
