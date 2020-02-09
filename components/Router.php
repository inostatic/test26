<?php

session_start();

class Router {

    private $routes;

    public function __construct() {
        $routesPath = ROOT . '/config/routes.php';
        $this->routes = include($routesPath);
    }

    private function getURI() {
        if (!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'], '/');
        }
    }

    public function run() {
        $uri = $this->getURI();
        foreach ($this->routes as $uriPattern => $path) {
            if (preg_match("#^$uriPattern$#", $uri)) {
                $interalRoute = preg_replace("#^$uriPattern$#", $path, $uri);
                $segments = explode("/", $interalRoute);
                $controllerName = ucfirst(array_shift($segments)) . "Controller";
                $methodName = 'method' . ucfirst(array_shift($segments));
                $params = $segments;
                $controllerFile = ROOT . '/controllers/' . $controllerName . '.php';
                if (file_exists($controllerFile)) {
                    include_once $controllerFile;
                }
                $controllerObject = new $controllerName;
                $result = call_user_func_array(array($controllerObject, $methodName), $params);
                if ($result != null) {
                    break;
                }
            }
        }
    }

}
