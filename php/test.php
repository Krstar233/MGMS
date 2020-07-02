<?php require 'modify.php'?>
<?php
$sql = "SELECT * FROM user WHERE id=''";
$result = $conn->query($sql);
if ($result->num_rows > 0){
  echo "数据查询成功";
  while($row = $result->fetch_assoc()) {
    echo "id: " . $row["id"]. " - pw: " . $row["pw"];
}
}else{
  echo $result == true;
  echo '<br>';
  echo "ERROR!";
}
?>