CREATE DATABASE xiangche CHARSET=UTF8;
USE xiangche;

CREATE TABLE car_list(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	carName VARCHAR(100),
	tranPrice VARCHAR(20),
	guidPrice VARCHAR(20),
	displacement VARCHAR(10),
	tranCase  VARCHAR(20),
	oil  VARCHAR(20),
	size VARCHAR(30),
	environmental VARCHAR(10),
	maxSpeed VARCHAR(20),
	curbWight VARCHAR(20),
	inlet VARCHAR(10),
	wheelbase VARCHAR(20),
	horsepower VARCHAR(20),
	img  VARCHAR(150)
);

INSERT INTO car_list VALUES(null,";�� 2017�� 380TSI �������ʰ�",'30.89-51.89','32.89��','2','˫���/7��','8.8','5039X1989X1773','��5','210','2025','��ѹ','2980','220',"./static/img/tuang_2017_380TSI .jpg");
INSERT INTO car_list VALUES(null,"����GLC�� 2017�� 200 4MATIC",'39.6--57.9','39.34','2','����һ��/9��','7.2','4661X1898X1664','ŷ5','210','','��ѹ','2873','184',"./static/img/benchiGLC-4MATIC.jpg");
INSERT INTO car_list VALUES(null,"�µ�A6L 2017�� TFSI ������",'41.53--75.76','41.88','1.8','˫���/7��','6.5','5036X1874X1466','��5','235','1750','��ѹ','3012','190',"./static/img/aodiA6L.jpg");
INSERT INTO car_list VALUES(null,"XR-V 2017�� 1.5L LXi �Զ� �����",'12.78--16.28','13.78','1.5','CVT�޼�����/�޼���','5.9','4270X1772X1605','��4,��5','185','1205','��Ȼ����','2610','131',"./static/img/bentianXR-V.jpg");
INSERT INTO car_list VALUES(null,"�ʹ� 2017�� 2.0T �˶���",'25.48--38.98','29.48','2','����һ��/8��','7.4','5020X1805X1480','��5','230','1680','��ѹ','2925','235',"./static/img/huangguan.jpg");
INSERT INTO car_list VALUES(null,"����GS5 2014�� 1.8T �Զ� ���� �����",'9.98--16.18','15.08','1.8','����һ��/5��','','4732X1854X1680','��4,��5','192','','��ѹ','2710','177',"./static/img/chuanqiGS5.jpg");
INSERT INTO car_list VALUES(null,"������ 2017�� 1.6T ˫��� GS ʱ����",'17.48--24.98','17.98','1.6','˫���/7��','6.9','4855X1865X1485','','210','1500','','','',"./static/img/suotanaGS.jpg");
INSERT INTO car_list VALUES(null,"Ӣ�� 2017�� 15N �Զ� ��ȡ��",'10.99--15.99','11.99','1.5','����һ��/6��','5.9','4587X1798X1463','��5','180','1255','��Ȼ����','2640','114',"./static/img/yinglang.jpg");
INSERT INTO car_list VALUES(null,"�µ�Q5 2017�� Plus40TFSI ��ȡ��",'38.34--56.7','39.96','2','����һ��/8��','8.4','4629X1898X1655','��5','230','1900','��ѹ','2807','230',"./static/img/aodiQ5.jpg");
INSERT INTO car_list VALUES(null,"�µ�A3 2017�� Sportback 35TFSI ʱ����",'21.26','2.48','1.4','˫���/7��','5.7','4321X1785X1426','��5','215','1340','��ѹ','2629','150',"./static/img/aodiA3.jpg");

CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(30),
	idcard VARCHAR(20),
	telephone VARCHAR(20),
	upwd VARCHAR(30),
	email  VARCHAR(50)
);
INSERT INTO user VALUES(null,'С��','510902199101010101','18388888888','123456','532334070@qq.com');


CREATE TABLE car_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
	uid  INT,
	pid INT
);
INSERT INTO car_cart  VALUES(null,0,3);
