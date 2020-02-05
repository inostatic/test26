<?php

class MessageController {
    
    public function methodIndex($flag) {
        include_once ROOT . '/models/Add.php';
        $capthes = ['1234' => '1', '4321' => '2', 'qwerty' => '3', 'asdf' => '4', '6673' => '5'];
        if (isset($_POST['submit'])) {
            if (!empty($_POST['captcha'])) {
                $key = $_POST['captcha'];
                if (array_key_exists($key, $capthes)) {
                    if (!empty($_POST['username']) && !empty($_POST['email']) && !empty($_POST['text'])) {
                        $username = htmlspecialchars($_POST['username']);
                        $email = htmlspecialchars($_POST['email']);
                        $text = htmlspecialchars($_POST['text']);
                        if (!empty($_POST['homepage'])) {
                            $homepage = htmlspecialchars($_POST['homepage']);
                        } else {
                            $homepage = "NULL";
                        }
                        $data = ['username' => $username, 'email' => $email, 'text' => $text, 'homepage' => $homepage];
                        Add::methodAdd($data);
                        header('Location: '.URL);
                    }
                }
            }
        }
        $captha = array_flip($capthes);
        $k = mt_rand(1, count($captha));
        $srcCaptha = $captha[$k];
        list($messagesList, $flagDate, $flagUsername, $flagEmail) = $this->getMessages($flag);
        
        
        
        
        include_once ROOT . '/views/index.php';
    }
    
    private function getMessages($flag) {
        include_once ROOT . '/models/Message.php';
        return Messages::getMessages($flag);
    }

}
