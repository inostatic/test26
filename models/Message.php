<?php 
class Messages {
    
    public static function getMessages($flag) {
       $sort = [
           "1" => "ORDER BY date DESC",
           "2" => "ORDER BY date",
           "3" => "ORDER BY username DESC",
           "4" => "ORDER BY username",
           "5" => "ORDER BY email DESC",
           "6" => "ORDER BY email"
       ];
       $row = Db::get_results("SELECT * FROM messages ".$sort[$flag]." LIMIT 0, 24 ");
       
       $flagDate = 1;
       $flagUsername = 3;
       $flagEmail = 5;
       
       switch($flag) {
           case '1': $flagDate = 2;
               break;
           case '2': $flagDate = 1;
               break;
           case '3': $flagUsername = 4;
               break;
           case '4': $flagUsername = 3;
               break;
           case '5': $flagEmail = 6;
               break;
           case '6': $flagEmail = 5;
               break;
       }

       return [$row, $flagDate, $flagUsername, $flagEmail];
    }
}