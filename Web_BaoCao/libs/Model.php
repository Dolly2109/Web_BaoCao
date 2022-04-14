<?php
    class Model {
        function __construct() {
            $this->db = new Database;
            $this->c = $this->db->conn;
        }
        function setQuery($sql){
            return $this->c->query($sql);
        }

        function getAll($sql){
            $result = $this->setQuery($sql);
            $a = array();
            while($row = $result->fetch_assoc()){
                $a[] = $row;
            }
            return $a;
        }

        function getOne($sql){
            $result = $this->setQuery($sql);
            if($result->num_rows == 1){
                $row = $result->fetch_assoc();
                return $row;
            }
        }
        // add tai khoan vao sql to
        function addRecord($table, $params = array()){
            $txtKey = "";
            $txtValue = "";
            $i = 0;
            foreach ($params as $key => $value){
                if($i<count($params) - 1){
                    $txtKey .= $key . " , ";  
                    $txtValue .= "'". $value ."' ,";  
                }
                else{
                    $txtKey .= $key;
                    $txtValue .= "'" . $value ."'"; 
                }
                $i++;
            }
            $sql = "INSERT INTO ". $table ."(". $txtKey .") VALUES
                (". $txtValue .")";
                // print_r($sql);
            $this->setQuery($sql);
        }
        
    }
?>