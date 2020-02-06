<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf8">
        <title>Гостевая книга</title>
        <link rel="stylesheet" href="../template/style.css?a=3">
    </head>
    <body>
        <nav>
            <h1>Гостевая книга</h1>
            <table>
                <tr>
                    <th><a href="<?= URL; ?>/sort/<?= $flagDate; ?>">Дата добавления</a></th>
                    <th><a href="<?= URL; ?>/sort/<?= $flagUsername; ?>">Имя пользователя</a></th>
                    <th><a href="<?= URL; ?>/sort/<?= $flagEmail; ?>">e-mail</a></th>
                    <th width="800px">Текст</th>
                    <th>homepage</th>
                    <th>JSON</th>
                </tr>
                <?php foreach ($messagesList as $message) : ?>
                    <tr>  
                        <td><?= $message['date']; ?></td>
                        <td><?= $message['username']; ?></td>
                        <td><?= $message['email']; ?></td>
                        <td width="800px"><?= $message['text']; ?></td>
                        <td><?= $message['homepage']; ?></td>
                        <td><button onclick='func(<?= json_encode($message); ?>);'>JSON</button></td>
                    </tr>
                <?php endforeach; ?>
            </table>
        </nav>
        <article>
            <form method="POST" action="">
                <p class='title'><label>Имя пользователя</label></p>
                <input type="text" name="username" placeholder="Введите имя пользователя*">
                <p class='title'><label>Email</label></p>
                <input type="email" name="email" placeholder="Введите email*">
                <p class='title'><label>Домашняя страница</label></p>
                <input type="url" name="homepage" placeholder="Введите домашнюю страницу">
                <p class='title'><label>Текст</label></p>
                <textarea name="text" placeholder="Введите ваше сообщение*" maxlength="300"></textarea><br>
                <img src="../template/images/<?= $srcCaptha; ?>.png" width="150px"><br>
                <input type="text" name="captcha" placeholder="Введите код с картинки*"><br>
                <input type="submit" name="submit">
            </form> 
        </article>
         <script type="text/javascript" src="../template/js.js"></script>	
    </body>
</html>
