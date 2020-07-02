# 项目简介
## 功能介绍
数据库大作业，一个简单的个体商户的通用管理系统，将以纯Web页面应用的方式展现。主要功能有管理货物、管理账目、管理收支状况等。
## 项目安装
### windows的wampserver环境下的安装：
新建文件夹MGMS，把项目中的所有文件放置在文件夹MGMS中，然后将该文件夹放置在wampserver安装目录下的www目录中。然后，需要导入数据库myDB，导入文件为myDB.sql，已附在项目文件中。同时，在导入数据库文件后，需要./php/modify.php中配置连接MySQL数据库的账户和密码。
网页的登陆入口为：http:localhost/MGMS/index/login.html，默认测试用户的用户名为：root，密码为root。
# 页面介绍
## 登陆页面
用户可以在这个页面进行账户登陆，同时也可以选择进入注册页面。用户登陆自己的账户，后台会在简单的验证之后跳转到功能页面。
## 注册页面
用户可以在这个页面进行账户的注册。
## 功能页面
这个页面有3个选项，分别进入货物管理、客户管理和收支管理模块。
## 货物管理页面
在这个页面中，有4个功能选项，分别是：查询、货物出/入库、新增数据、修改/删除数据。

**查询功能**，可以对页面进行查询，在表格底下的筛选输入框中可以输入文本，查询操作可以在此基础上查找所有包含文本框信息的商品，默认不填写信息时，将查询所有数据。同时，用户可以选择筛选方式：NAME是按照商品名称进行筛选，ID是按照商品编号进行筛选。同时，在表格的右下角的选项可以选择数据展示的排序方式。

**货物出/入库功能**，同样可以对数据进行查询的筛选以及排序，不过用户可以在表格中操作，方便的对仓库中的货物数量进行增减。例如，用户可以某货物信息行的出库数量中输入一个数值，再点击"-"号，就可以对该货物进行相应数目的出库了，若不输入数值，默认出/入库数量为1。

**新增数据**，这个模块的筛选查询和排序功能都是失效的，不过用户可以点击表格中的"+"号，添加一行空白行，再在后续的输入框中输入相应的货物数据，在填写完货物信息后，需要点击"确认添加"，插入数据信息才能生效。

**修改/删除数据**，可以对数据进行修改和删除，这个模块同样提供了数据查询的筛选和排序的功能，同时用户可以在表格中对货物的数据进行编辑，编辑数据完成之后需要点击表格后方的"√"按钮，方可生效。如果用户需要删除某行货物信息，则需要点击该行前方的"-"号按钮。

# 数据库myDB的介绍
- 数据库类别：MySQL
- Character set: utf8
- Collation: utf8_bin
## 数据表
- user, 用户表, 存放着所有用户的登陆名，密码等。所有用户都有一个唯一标识uid。
- goods, 货物表, 存放了所有用户的所有货物信息，使用用户的uid区分不同用户的货物。
### user (用户)
- 数据表结构：
    - username, varchar(50), 用户名
    - nickname, varchar(255), 昵称
    - uid, int(13), 用户唯一标识, 主键
    - password, varchar(50), 用户密码

### goods (货物)
- 数据表结构：
    - uid, int(13), 用户的唯一标识, 不可为空
    - good_name, varchar(255), 货物名称
    - good_id, varchar(50), 货物编号，一般是条形码等，用户可自行定义, 不可为空
    - in_price, decimal(10, 2), 两位小数，长度最高为10，货物的进购价格
    - out_price, decimal(10, 2), 两位小数，长度最高为10，货物的销售价格
    - position, varchar(255), 货物的来源地或是存储地点
    - amount, int(25), 货物的剩余数量
    - unit, varchar(20), 货物单位
    - remarks, varchar(255), 货物备注, 例如标注其是否为促销产品、产品类别等, 默认为空