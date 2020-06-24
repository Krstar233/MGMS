<?php require "modify.php"?>
<?php
// function search(){
//     $search_type = $_POST[''];
// }
?>
<?php
$method = $_POST['method'];
$uid = $_POST['uid'];
if ($method == "search" || $method == "io_goods_search"){
    $name_map = array(
        'id_way' => 'good_id',
        'name_way' => 'good_name',
        'id' => 'good_id',
        'name' => 'good_name',
        'nums' => 'amount',
        'unit' => 'unit',
        'inprice' => 'in_price',
        'outprice' => 'out_price',
        '正序' => 1,
        '逆序' => 0);
        
    $search_type = $name_map[$_POST['search_type']];
    $search_text = $_POST['search_text'];
    $sort_way = $name_map[$_POST['sort_way']];
    $order = $name_map[$_POST['order']];
    $limit_num = $_POST['rows'];
    $limit_min = $_POST['page'] * $limit_num;
    $ret = array('code'=>0);
    $sql = "";
     
    if ($method == "search"){
        $sql = "SELECT good_id, good_name, amount, unit, in_price, out_price, position, remarks ".
        "FROM goods WHERE uid=$uid AND $search_type LIKE '%$search_text%' ORDER BY $sort_way";
    }
    if ($method == "io_goods_search"){
        $sql = "SELECT good_id, good_name, amount, unit, in_price ".
        "FROM goods WHERE uid=$uid AND $search_type LIKE '%$search_text%' ORDER BY $sort_way";
    }
    if (!$order) $sql = $sql . " DESC";
    $sql = $sql . " LIMIT $limit_min, $limit_num";
    $ret = select($conn, $sql);
    $sql = "SELECT COUNT(*) as nums FROM goods WHERE uid=$uid AND $search_type LIKE '%$search_text%'";
    $count = select($conn, $sql);
    if ($count['code'] == 0)
        $ret['code'] = 0;
    $ret['data_count'] = $count['nums'][0];
    echo json_encode($ret);  
}

if ($method == "add_amount" || $method == "sub_amount"){
    $ret = array('code'=>0);
    $good_id = $_POST['good_id'];
    $amount = $_POST['amount'];
    $change_num = $_POST['change_num'];
    if ($method == "add_amount")
        $amount += $change_num;
    if ($method == "sub_amount")
        $amount -= $change_num;

    // 设置上下界
    if ($amount < 0)
        $amount = 0;
    if ($amount > 9999999999)
        $amount = 9999999999;
    
    $sql = "UPDATE goods SET amount = $amount WHERE uid=$uid AND good_id = '$good_id'";
    $ret = update($conn, $sql);
    $ret['amount'] = $amount;
    echo json_encode($ret);
}

if ($method == "add_data"){
    $ret = array('code'=>1, 'fail_rows'=>array());
    $good_id = $_POST['good_id'];
    $good_name = $_POST['good_name'];
    $amount = $_POST['amount'];
    $unit = $_POST['unit'];
    $in_price = $_POST['in_price'];
    $out_price = $_POST['out_price'];
    $position = $_POST['position'];
    $remarks = $_POST['remarks'];
    $rows = count($good_id);
    for ($i = 0; $i < $rows; $i++){
        if ($good_id[$i] == "")
            continue;
        $sql = "SELECT * FROM GOODS WHERE good_id=$good_id[$i]";
        $result = select($conn, $sql);
        if (isset($result['good_id'])){
            $ret['fail_rows'][] = $i;
            continue;
        }
        $sql = "INSERT INTO GOODS(uid, good_id, good_name, amount, unit, in_price, out_price, position, remarks) " .
            "VALUES($uid, '$good_id[$i]', '$good_name[$i]', $amount[$i], '$unit[$i]', $in_price[$i], $out_price[$i], '$position[$i]', '$remarks[$i]')";
        $result = insert($conn, $sql);
        if ($result['code'] == 0)
            $ret['fail_rows'][] = $i;
    }
    echo json_encode($ret);
}

if ($method == "delete_id"){
    $good_id = $_POST['good_id'];
    $sql = "DELETE FROM goods WHERE uid = $uid AND good_id = '$good_id'";
    $ret = delete($conn, $sql);
    echo json_encode($ret);
}

if ($method == "update"){
    $good_id = $_POST['good_id'];
    $good_name = $_POST['good_name'];
    $amount = $_POST['amount'];
    $unit = $_POST['unit'];
    $in_price = $_POST['in_price'];
    $out_price = $_POST['out_price'];
    $position = $_POST['position'];
    $remarks = $_POST['remarks'];
    $id = $_POST['id'];
    $sql = "UPDATE goods SET good_id=$good_id, good_name='$good_name', amount=$amount, unit='$unit', in_price=$in_price, out_price=$out_price, position='$position', remarks='$remarks' WHERE uid=$uid AND good_id=$id";
    $ret = update($conn, $sql);
    echo json_encode($ret);
}
?>