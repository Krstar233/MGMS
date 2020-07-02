<?php require 'modify.php'?>
<?php
$login_usr = $_POST['usr'];
$login_pw = $_POST['pw'];

$sql = "SELECT password, uid FROM USER WHERE username='$login_usr'";
$ret = select($conn, $sql);
if (count($ret["password"]) == 1){
    $ret["ok"] = 0;
    if ($login_pw == $ret["password"][0]){
        $ret["ok"] = 1;
    }
}
mysqli_close($conn);
echo json_encode($ret);
?>