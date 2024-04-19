<?php
    include '../../config.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin về quán</title>
    <link rel="icon" href="https://raw.githubusercontent.com/TokisakiNinoVn/MyOfficialWebsite/main/assets/image/Avt_cicle.ico">

    <link rel="stylesheet" href="<?= BASE_URL;?>css/morong.css">
    <link rel="stylesheet" href="<?= BASE_URL;?>css/style.css">
</head>
<body>
    <div class="main_content">
        <div class="main_top">
            <div class="">
                <img class="img_quan" src="<?= BASE_URL;?>upload/order/loginElysia.jpg" alt="Nino" class="logo">
            </div>
            <div class="content_infor">
                <span class="ten_quan">Nino Dev Quán 🍀</span>
                <span class="name">"Quán có dev hết đơn 24/24, order là có liền".</span>
                <span class="name">Địa chỉ: 1 Đinh Tiên Hoàng, Phường Đa Kao, Quận 1, Thành phố Hồ Chí Minh.</span>
                <span class="name">Số điện thoại: 090 123 45 67.</span>
                <span class="name">Email: ninodevquan@gmail.com</span>
            </div>
        </div>
        <div class="map_quan">
            <img class="img_map_quan" src="<?= BASE_URL;?>upload/order/mapQuan.png" alt="Nino" class="map">
            <a class="link_map" href="https://nino.is-a.dev/" target="_blank" rel="noopener noreferrer">Vị trí quán trên map</a>
        </div>
        <a class="editdev link_map" href="https://nino.is-a.dev/" target="_blank" rel="noopener noreferrer">
            <span class="edit">&copy; 2024, Edited by @tokisakininovn </span>
        </a>
    </div>

    <a class="link_to_more" href="<?= BASE_URL;?>views/layouts/login.php">
        <ion-icon name="chevron-back-outline"></ion-icon>
        <span class="more_web">Trang Login</span>
    </a>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>