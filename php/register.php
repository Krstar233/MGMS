<?php require "modify.php"?>
<?php
$username = $_POST["username"];
$nickname = $_POST["nickname"];
$password = $_POST["password"];

$sql = "SELECT * FROM `user` WHERE username='$username'";
$res = select($conn, $sql);
$ret = array('code'=>0);

if (isset($res['username'])){
    $ret['isset'] = 1;
    echo json_encode($ret);
    exit;
}else $ret['isset'] = 0;

$sql = "SELECT MAX(uid) AS uid FROM `user`";
$uid = select($conn, $sql)['uid'][0] + 1;

$sql = "INSERT INTO `user`(uid, username, nickname, `password`) ". 
    "VALUES($uid, '$username', '$nickname', '$password')";
$res = mysqli_query($conn, $sql);
if ($res)
    $ret["code"] = 1;
mysqli_close($conn);
echo json_encode($ret);
?>