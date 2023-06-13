<?php

header("Access-Control-Allow-Origin: *");

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

// Получение данных из базы данных (GET-запрос)
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
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
}

// Добавление данных в базу данных (POST-запрос)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nickname = $_POST['nickname'];
    $description = $_POST['description'];

    // Добавление данных в базу данных
    $sql = "INSERT INTO comment (nickname, description) VALUES ('$nickname', '$description')";
    if ($conn->query($sql) === TRUE) {
        echo "Данные успешно добавлены в базу данных";
    } else {
        echo "Ошибка при добавлении данных в базу данных: " . $conn->error;
    }
}

// Закрытие соединения с базой данных
$conn->close();

?>
