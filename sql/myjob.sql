create table menulist (currentid int primary key,menuNmae varchar(20)) charset utf8 collate utf8_general_ci

SELECT *from menulist

INSERT INTO menulist values (1,'最爱吃的')

INSERT INTO menulist(currentid,menuNmae) 
VALUES
(2,'肉蛋'),
(3,'蔬菜'),
(4,'水果'),
(5,'甜品'),
(6,'海鲜水产'),
(7,'冷饮冻食'),
(8,'休闲食品');

create table food (foodid int primary key,foodname varchar(20),foodtypeid int,eatnum int,img varchar(255)) charset utf8 collate utf8_general_ci

SELECT *from food

INSERT INTO food(foodid,foodname,foodtypeid,eatnum,img) 
VALUES
(46,'扇贝',6,0,'shanbei.jpg'),
(47,'鲈鱼',6,0,'luyu.jpg'),
(48,'三文鱼',6,0,'sanwenyu.jpg'),
(49,'蛤蜊',6,0,'geli.jpg'),
(50,'帝王蟹',6,0,'diwangxie.jpg'),
(51,'波士顿龙虾',6,0,'Bostonlongxia.jpg'),
(52,'鱿鱼',6,0,'youyu.jpg'),
(53,'生蚝',6,0,'shenghao.jpg'),
(54,'小龙虾',6,0,'xiaolongxia.jpg'),
(55,'鲫鱼',6,0,'jiyu.jpg'),
(56,'青蟹',6,0,'qingxie.jpg')


select *from food where foodtypeid=2
select *from food where eatnum>2





create table order_goodlist (id int primary key,orderid int(11),foodid int(20),count int(10)) charset utf8 collate utf8_general_ci
create table orderstatus (id int primary key,statusid int(11),statusname varchar(20)) charset utf8 collate utf8_general_ci
create table useraddress (id int primary key,username varchar(20),Telphone varchar(20),province varchar(10),city varchar(10),Area varchar(10),detailaddress varchar(50)) charset utf8 collate utf8_general_ci

select *from useraddress
select *from order_goodlist;
select *from orderlist


insert into orderstatus(statusid,statusname) values(5,'已取消')
select *from orderstatus

INSERT into useraddress(username,Telphone,province,city,Area,detailaddress,usestatus) values
('张先生','18663431643','广东省','深圳市','宝安区','壹方商业中心地下停车场',0)

INSERT into order_goodlist(id,orderid,foodid,count) values
(6,2,11,1),
(7,2,40,1),

INSERT into orderlist(orderid,ordernum,goodtolprice,payprice,deliveryprice,Reciinfo,orderdate,orderstatus)VALUES
(2,'1553756056',22.7,27.7,5,2,'2019-03-28 14:54:16',1)








select 
a.orderid,a.ordernum,a.goodtolprice,a.payprice,a.deliveryprice,a.Reciinfo,a.orderdate,a.orderstatus,
d.id as addid,d.username,d.Telphone,d.province,d.city,d.Area,d.detailaddress,
b.orderid as food_orderid,b.foodid,b.count,
c.foodid as foodinfoid,c.foodname,c.foodtypeid,c.price,c.img,c.content,
e.statusid,e.statusname
from orderlist as a 
INNER join useraddress as d on a.Reciinfo=d.id 
left join order_goodlist as b on a.orderid=b.orderid 
left join food as c on b.foodid=c.foodid 
left join orderstatus as e on a.orderstatus=e.statusid












select 
a.orderid,a.ordernum,a.goodtolprice,a.payprice,a.deliveryprice,a.Reciinfo,a.orderdate,a.orderstatus,
group_concat(b.foodid),group_concat(b.count)
from orderlist as a 
right join order_goodlist as b on a.orderid=b.orderid 










1  140.00  2019-03-21 16:30:22  13  '待付款'  'wuhuameat.jpg,Chickenwings.jpg,zhouheiya.jpg,steak.jpg,luyu.jpg'

2  27.70   2019-03-28 14:54:16  13  '待付款'  'qingzao.jpg,mangguo.jpg'




select 
a.orderid,a.ordernum,a.goodtolprice,a.payprice,a.deliveryprice,a.Reciinfo,a.orderdate,a.orderstatus,
group_concat(d.username),group_concat(d.Telphone),group_concat(d.province),group_concat(d.city),group_concat(d.Area),group_concat(d.detailaddress),
group_concat(e.statusname)
from orderlist as a 
INNER join useraddress as d on a.Reciinfo=d.id
left join orderstatus as e on a.orderstatus=e.statusid  group by a.Reciinfo , a.orderstatus



select group_concat(o.statusname) FROM orderstatus as o right join
(select 
a.orderid,a.ordernum,a.goodtolprice,a.payprice,a.deliveryprice,a.Reciinfo,a.orderdate,a.orderstatus,
group_concat(b.foodid),group_concat(b.count)
from orderlist as a 
right join order_goodlist as b on a.orderid=b.orderid 
group by a.orderid) as s on o.statusid=s.orderstatus


select * from a right join b on a.id=b.aid;
select a.id, group_concat(b.name) from a right join b on a.id=b.aid group by a.id

























select *from orderlist
UPDATE useraddress set username='老徐',Telphone='13097212696',province='广东省',city='深圳市',Area='宝安区',detailaddress='新安街道裕安二路大家好广场综合楼一栋8楼801号',usestatus=1 where id = 1;



select *from useraddress

DELETE from useraddress where id = 9














