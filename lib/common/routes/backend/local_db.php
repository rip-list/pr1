<?php

// Получение данных из POST-запроса
$nickname = $_POST['nickname'];
$description = $_POST['description'];

// Подключение к базе данных
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pr1_database";

$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка соединения
if ($conn->connect_error) {
    die("Ошибка подключения к базе данных: " . $conn->connect_error);
}

// Вставка данных в таблицу
$sql = "INSERT INTO comment (nickname, description) VALUES ('$nickname', '$description')";

if ($conn->query($sql) === TRUE) {
    echo "Данные успешно добавлены в базу данных";
} else {
    echo "Ошибка при добавлении данных: " . $conn->error;
}

// Закрытие соединения с базой данных
$conn->close();

?>
