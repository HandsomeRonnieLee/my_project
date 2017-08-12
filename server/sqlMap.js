var sqlMap = {

    user: {
        add: 'INSERT INTO user VALUES (null,?,?,?,?,?)',
        login:'SELECT * FROM user WHERE telephone=? AND upwd=?'
    },
    car_list:{
        detail:'SELECT * FROM car_list WHERE pid=?',
        list:'SELECT * FROM car_list LIMIT ?,?'        
    },
    car_cart:{
        collect:'INSERT INTO car_cart VALUES(null,?,?)',
        select:'SELECT * FROM car_cart WHERE uid=? AND pid=?',
        collection:'SELECT c.uid,c.pid,l.pid,l.carName,l.guidPrice,l.img FROM car_list l,car_cart c WHERE c.uid=? AND l.pid=c.pid'
    }
}

module.exports = sqlMap;
