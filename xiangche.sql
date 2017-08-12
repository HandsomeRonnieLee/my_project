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

INSERT INTO car_list VALUES(null,"途昂 2017款 380TSI 四驱舒适版",'30.89-51.89','32.89万','2','双离合/7档','8.8','5039X1989X1773','国5','210','2025','增压','2980','220',"./static/img/tuang_2017_380TSI .jpg");
INSERT INTO car_list VALUES(null,"奔驰GLC级 2017款 200 4MATIC",'39.6--57.9','39.34','2','手自一体/9档','7.2','4661X1898X1664','欧5','210','','增压','2873','184',"./static/img/benchiGLC-4MATIC.jpg");
INSERT INTO car_list VALUES(null,"奥迪A6L 2017款 TFSI 技术型",'41.53--75.76','41.88','1.8','双离合/7档','6.5','5036X1874X1466','国5','235','1750','增压','3012','190',"./static/img/aodiA6L.jpg");
INSERT INTO car_list VALUES(null,"XR-V 2017款 1.5L LXi 自动 经典版",'12.78--16.28','13.78','1.5','CVT无级变速/无级档','5.9','4270X1772X1605','国4,国5','185','1205','自然吸气','2610','131',"./static/img/bentianXR-V.jpg");
INSERT INTO car_list VALUES(null,"皇冠 2017款 2.0T 运动版",'25.48--38.98','29.48','2','手自一体/8档','7.4','5020X1805X1480','国5','230','1680','增压','2925','235',"./static/img/huangguan.jpg");
INSERT INTO car_list VALUES(null,"传祺GS5 2014款 1.8T 自动 两驱 超享版",'9.98--16.18','15.08','1.8','手自一体/5档','','4732X1854X1680','国4,国5','192','','增压','2710','177',"./static/img/chuanqiGS5.jpg");
INSERT INTO car_list VALUES(null,"索纳塔 2017款 1.6T 双离合 GS 时尚型",'17.48--24.98','17.98','1.6','双离合/7档','6.9','4855X1865X1485','','210','1500','','','',"./static/img/suotanaGS.jpg");
INSERT INTO car_list VALUES(null,"英朗 2017款 15N 自动 进取型",'10.99--15.99','11.99','1.5','手自一体/6档','5.9','4587X1798X1463','国5','180','1255','自然吸气','2640','114',"./static/img/yinglang.jpg");
INSERT INTO car_list VALUES(null,"奥迪Q5 2017款 Plus40TFSI 进取型",'38.34--56.7','39.96','2','手自一体/8档','8.4','4629X1898X1655','国5','230','1900','增压','2807','230',"./static/img/aodiQ5.jpg");
INSERT INTO car_list VALUES(null,"奥迪A3 2017款 Sportback 35TFSI 时尚型",'21.26','2.48','1.4','双离合/7档','5.7','4321X1785X1426','京5','215','1340','增压','2629','150',"./static/img/aodiA3.jpg");

CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(30),
	idcard VARCHAR(20),
	telephone VARCHAR(20),
	upwd VARCHAR(30),
	email  VARCHAR(50)
);
INSERT INTO user VALUES(null,'小明','510902199101010101','18388888888','123456','532334070@qq.com');


CREATE TABLE car_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
	uid  INT,
	pid INT
);
INSERT INTO car_cart  VALUES(null,0,3);
