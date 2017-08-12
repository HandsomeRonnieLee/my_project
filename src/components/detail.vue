<template>
  <div class="detail">
    <el-row>
      <el-col :span="24">
        <div class="pic-size">
          <img class="image" :src="list.img">
        </div>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="20" :offset="1" class="g-text-left">
        <p class="product-name ">{{list.carName}}</p>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="15" :offset="1" class="g-text-left">
        <span class="g-text-price"><span>厂商指导价：</span>{{list.guidPrice}}</span>
        <p class="g-text-guide"><span>指导价：</span>{{list.tranPrice}}<span>万</span></p>
      </el-col>
      <el-col :span="8" class="g-text-right">
        <el-button type="primary" size="small" @click="collected(list.pid)">加入收藏</el-button>
      </el-col>
    </el-row>
    <el-row type="flex"  justify="center">
      <el-col :span="6"><div class="g-btn-operate g-operate-left">贷款</div></el-col>
      <el-col :span="6"><div class="g-btn-operate g-operate-middle">置换</div></el-col>
      <el-col :span="6"><div class="g-btn-operate g-operate-right">询底价</div></el-col>      
    </el-row>
    <configuration-component :car-config="list"></configuration-component>
      <el-row>
        <el-col>
          <hr class="cut-off">
        </el-col>
      </el-row>
      <evaluate-component></evaluate-component>
  </div>
</template>

<script>
import EvaluateComponent from './evaluate' 
import ConfigurationComponent from './configuration'
export default {
  components:{EvaluateComponent,ConfigurationComponent},
  name: 'detail',
  data () {
    return {
     list:{},
     pid:''
    }
    
  }, 
  created:function(){
      this.pid = this.$route.params.pid
      this.$http.get('/api/user/product_detail',{params:{pid:this.pid}})
       .then(function(response){
         this.list = response.data[0];
       })
  },
  methods:{
    collected:function(pid){
      var uid=1;
      this.$http.post('/api/user/collect',{uid:uid,pid:pid})
      .then(function(response){
        if(response.data.code<0){
          this.$message('该商品已添加，请勿重复添加');
        }else if(response.data.code>0){
          this.$message('添加成功');
        }
      })
    }
  }
  
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.detail{
  padding-bottom: 60px;
}
p{
  padding: 0;
  margin: 0;
}

.image {
    width: 100%;
    height: auto;
  }
.pic-size{
    width: 100%;
    text-align: center;
    box-sizing: border-box;
  }
.g-text-left{
  text-align: left;
}
.g-text-right{
  text-align: right;
}
.product-name{
  font-size: 0.8rem;
  margin-top: 0.2rem;
}
.g-text-price{
  color:red;
  font-weight: bold;
  font-size: 1rem;
  padding: 0.2rem 0;
}
.g-text-guide{
  color:#aaa;
  font-size: 0.5rem;
  padding: 0.2rem 0;
}
.g-btn-operate{
  padding: 2px;
  width: 100%;
  border: 1px solid #eee;
  box-sizing: border-box;
  font-size: 0.5rem;
}
.g-btn-operate:active{
  background: #20A0FF;
}
.g-operate-left{
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
}
.g-operate-right{
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}
.g-operate-middle{
  border-left: none;
  border-right: none;
}

.cut-off{
  margin-top: 1rem;
  margin-bottom: 1rem;
}
</style>
