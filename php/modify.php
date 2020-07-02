<?php 
header("Content-Type:application/json;charset=utf-8");
?>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "myDB";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error){
    die("连接失败:" . $conn->connect_error);
}
mysqli_query($conn, "SET NAMES utf8");
function select($conn, $sql){
    $ret = array("code"=>0);
    $res = mysqli_query($conn, $sql);
    if ($res){
        $ret['code'] = 1;
        while ($row = mysqli_fetch_assoc($res)){
            foreach($row as $k=>$v){
                $ret[$k][] = $v;
            }
        }
    }
    return $ret;
}
function U_D_I($conn, $sql){
    $ret = array("code"=>0);
    $res = mysqli_query($conn, $sql);
    if ($res)
        $ret['code'] = 1;
    return $ret;
}
function update($conn, $sql){
    return U_D_I($conn, $sql);
}
function delete($conn, $sql){
    return U_D_I($conn, $sql);
}
function insert($conn, $sql){
    return U_D_I($conn, $sql);
}
?>