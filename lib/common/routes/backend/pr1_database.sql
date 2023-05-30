

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `comment` (
  `id` int NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



INSERT INTO `comment` (`id`, `nickname`, `description`) VALUES
(1, 'rerer', 'erwerwe');


ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
