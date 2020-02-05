<?php

class Db {

    private static function getConnection() {
        $paramsPath = ROOT . '/config/db_params.php';
        $params = include($paramsPath);
        $db = new PDO("mysql:host={$params['host']};dbname={$params['db_name']}", $params['user'], $params['password']);
        return $db;
    }

    public static function get_results($query) {
        $db = self::getConnection();
        $tmp = $db->query($query);
        $result = [];
        $tmp->setFetchMode(PDO::FETCH_ASSOC);
        while ($row = $tmp->fetch()) {
            $result[] = $row;
        }
        return $result;
    }

    public static function insert_into($query) {
        $db = self::getConnection();
        return $db->query($query);
    }

}
