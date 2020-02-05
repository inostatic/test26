<?php
class Add {
    public static function methodAdd($data) {
        
        $row = Db::insert_into("INSERT INTO messages SET username = '$data[username]', email = '$data[email]', homepage = '$data[homepage]', text = '$data[text]' ");
        
    }
}