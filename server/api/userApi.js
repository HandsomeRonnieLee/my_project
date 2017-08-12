var models = require('../db');
var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var $sql = require('../sqlMap');

// 连接数据库
var conn = mysql.createConnection(models.mysql);

conn.connect();
var jsonWrite = function(res, ret) {
  if(typeof ret === 'undefined') {
    res.json({
      code: '1',
      msg: '操作失败'
    });
  } else {
    res.json(ret);
  }
};

//用户注册
  router.post('/addUser', (req, res) => {
    var sql = $sql.user.add;
    var params = req.body;
    conn.query(sql, [params.uname, params.idCard,params.telephone,params.upwd,params.email], function(err, result) {
    if (err) {
      console.log(err);
    }
    if (result) {
      jsonWrite(res, result);
    }
  })
  });

//登陆验证
  router.post('/loginOn', (req, res) => {
    var sql = $sql.user.login;
    var params = req.body;
    conn.query(sql,[params.telephone,params.upwd], function(err, result) {
    if (err) {
      console.log(err);
    }
    if (result) {
      if(result.uid){
        var msg={'code':'1','msg':'登陆成功'}
        jsonWrite(res,msg);
      }else{
        var msg= {'code':'-1','msg':'登陆失败，未注册'}
        jsonWrite(res,msg);
      }      
    }
    })
  });

//查询产品详情
  router.get('/product_detail', (req, res) => {
    var sql = $sql.car_list.detail;
    var query = req.query;
    conn.query(sql,[query.pid], function(err, result) {
    if (err) {
      console.log(err);
    }
    if (result) {
      
      jsonWrite(res,result);    
    }
  })
});

//用户添加收藏
router.post('/collect', (req, res) => {
    var sql = $sql.car_cart.select;
    var params = req.body;
    conn.query(sql,[params.uid,params.pid], function(err, result) {
    if (err) {
      console.log(err);
    }
    if (result.length==0) {
        var sql = $sql.car_cart.collect;
        conn.query(sql,[params.uid,params.pid], function(err, resultCollect) {
            if (err) {
              console.log(err);
            }
            var msg={'code':'1','msg':'添加成功'}
              jsonWrite(res,msg);
          })    
    }else{
      var msg={'code':'-1','msg':'该商品已添加'}
        jsonWrite(res,msg); 
    }
  })
});

//查询主页产品列表
router.get('/product_list', (req, res) => {
    var sql = $sql.car_list.list;
    var query = req.query;
    var limit = Number(query.limit) ;
    var amount = Number(query.amount);
    
    conn.query(sql,[limit,amount], function(err, result) {
    if (err) {
      console.log(err);
    }
    if (result) {
      
      jsonWrite(res,result);    
    }
  })
});

//查询用户收藏列表
router.get('/collection', (req, res) => {
    var sql = $sql.car_cart.collection;
    var query = req.query;
    var uid = Number(query.uid) ; 
    conn.query(sql,[uid], function(err, result) {
    if (err) {
      console.log(err);
    }
    if (result) {
      jsonWrite(res,result);    
    }
  })
});

module.exports = router;
