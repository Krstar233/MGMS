## 数据库myDB的介绍
Character set: utf8
Collation: utf8_bin
- 数据表
    - user, 用户表, 存放着所有用户的登陆名，密码等。所有用户都有一个唯一标识uid。
    - goods, 货物表, 存放了所有用户的所有货物信息，使用用户的uid区分不同用户的货物。
- user (用户)
数据表结构：
username, varchar(50), 用户名
nickname, varchar(255), 昵称
uid, int(13), 用户唯一标识, 主键
password, varchar(50), 用户密码

- goods (货物)
数据表结构：
uid, int(13), 用户的唯一标识, 不可为空
good_name, varchar(255), 货物名称
good_id, varchar(50), 货物编号，一般是条形码等，用户可自行定义, 不可为空
in_price, decimal(10, 2), 两位小数，长度最高为10，货物的进购价格
out_price, decimal(10, 2), 两位小数，长度最高为10，货物的销售价格
position, varchar(255), 货物的来源地或是存储地点
amount, int(25), 货物的剩余数量
unit, varchar(20), 货物单位
remarks, varchar(255), 货物备注, 例如标注其是否为促销产品、产品类别等, 默认为空 