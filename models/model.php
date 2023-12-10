<?php

class model
{
    private $host = 'localhost';
    private $dbname = 'transkript';
    private $username = 'postgres';
    private $password = 'password';

    public $connect;

    public function __construct()
    {
        try {
            $this->connect = new \PDO("pgsql:host=$this->host;dbname=$this->dbname", $this->username, $this->password);
            $this->connect->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }

    public function addStudent($studentInfo)
    {
        try {
            $stmt = $this->connect->prepare("INSERT INTO students (id, name, surname, phone, mail, address, section, school_mail) VALUES (:value1, :value2, :value3, :value4, :value5, :value6, :value7, :value8)");
            $stmt->bindParam(':value1', $studentInfo['value1']);
            $stmt->bindParam(':value2', $studentInfo['value2']);
            $stmt->bindParam(':value3', $studentInfo['value3']);
            $stmt->bindParam(':value4', $studentInfo['value4']);
            $stmt->bindParam(':value5', $studentInfo['value5']);
            $stmt->bindParam(':value6', $studentInfo['value6']);
            $stmt->bindParam(':value7', $studentInfo['value7']);
            $stmt->bindParam(':value8', $studentInfo['value8']);
            $stmt->execute();
            return true;
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return false;
        }
    }


    public function studentIdInfo()
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM students ORDER BY id DESC");
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function studentList()
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM students ORDER BY id");
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function sectionName($id)
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM sections WHERE id = :id");
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function studentDetails($id)
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM students WHERE id = :id");
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function sectionList()
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM sections");
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function teacherDetails($id)
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM teachers WHERE id = :id");
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function teachersList()
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM teachers");
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function lessonList()
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM lessons");
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function noteList($id)
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM notes WHERE student = :id");
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }

    public function lessonDetails($id)
    {
        try {
            $stmt = $this->connect->prepare("SELECT * FROM lessons WHERE id = :id");
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            return $stmt->fetchAll(\PDO::FETCH_ASSOC);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
            return array();
        }
    }
}
