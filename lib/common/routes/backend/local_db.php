<?php

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

// Получение данных из базы данных
$sql = "SELECT nickname, description FROM comment";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $comments = array();
    while ($row = $result->fetch_assoc()) {
        $nickname = $row['nickname'];
        $description = $row['description'];

        // Добавление данных в массив
        $comments[] = array(
            'nickname' => $nickname,
            'description' => $description
        );
    }

    // Преобразование массива в JSON
    $jsonComments = json_encode($comments);

    // Установка заголовка ответа в формате JSON
    header('Content-Type: application/json');

    // Вывод данных в формате JSON
    echo $jsonComments;
} else {
    echo "Нет доступных комментариев";
}

// Закрытие соединения с базой данных
$conn->close();

?>
