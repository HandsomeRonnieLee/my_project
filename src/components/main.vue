<template>
  <div class="main">
    <el-row>
      <el-col :span="18">
        <el-input  placeholder="请输入内容"></el-input>
      </el-col>
      <el-col :span="6">
        <el-button type="primary" icon="search">搜索</el-button>
      </el-col>
    </el-row>
    <el-row  v-for="item in list" :key="item.carName" >
        <el-col :span="24" >
          <div @click="goDetail(item.pid)">
          <!--<router-link :to="{name:'detail',query:{params:item.pid}}">-->
            <el-card :body-style="{ padding: '0px'}" >
            <el-col :span="10" :offset="0">
              <div class="pic-size">
                <img  class="image" :src="item.img">
              </div>
            </el-col>
            <el-col :span="13" :offset="1">
              <div class="table-box">
                <div class="table">
                <div  class="cell">
                  <el-row>
                    <span class="car-name">{{item.carName }}</span>
                  </el-row>
                  <el-row>
                    <time class="time price">{{item.price }}</time>
                  </el-row>
                </div>
              </div>
              </div>
            </el-col>
            </el-card>
            <!--</router-link>-->
            </div>
          </el-col>
    </el-row>
  </div>
</template>

<script>


export default {

  name: 'mainComponent',
  data () {
    return {
      list: []
      }
  },
  created:function(){
      this.$http.get('/api/user/product_list',{params:{limit:0,amount:10}})
       .then(function(response){
         this.list = response.data;
       })
  },  
  
  methods:{
    goDetail:function(parameters){
      this.$router.push({name:'detail',params:{pid:parameters}})
      
    }
    
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.main{
  font-size: 0.5rem;
}

.search{
  margin-top:40px;
}
.time {
    font-size: 13px;
    color: #999;
  }
.image {
    width: 100%;
    display: block;
    vertical-align: middle;
  }
.el-card{
  margin-top: 0.4rem;
  position: relative;
  width: 100%;
}
.table-box{
    position:absolute;
  
    width:50%;
    height: 100%;
  }
.table{
    display: table;
    width: 100%;
    height: 100%;
    vertical-align: middle;
    text-align: center;
  }
.cell {
    display: table-cell;
    vertical-align: middle;
    text-align: center;
    width: 100%;
  }
  
.car-name{
    overflow: hidden;
  }
.price{
    overflow: hidden;
  }
</style>
