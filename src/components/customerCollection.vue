<template>
  <div class="collection">
    <el-row>
      <el-col :span="24">
        <span>我的收藏列表</span>
      </el-col>
    </el-row>
    <el-row>
      <el-col>
        <ul >
          <li v-for="item in list" :key="item.pid">
            <div @click="goDetail(item.pid)">
            <el-card :body-style="{ padding: '0px'}">
            <el-col :span="8">
              <div class="pic-size">
                <img class="image" :src="item.img">
              </div>
            </el-col>
            <el-col :span="12">
              <div class="table-box">
                <div class="table">
                <div  class="cell">
                  <el-row class="cell-item">
                    <span class="car-name">{{item.carName }}</span>
                  </el-row>
                  <el-row class="cell-item">
                    <time class="time price">{{item.price }}</time>
                  </el-row>
                </div>
              </div>
              </div>
            </el-col>
            <el-col :span="4" :offset="20" class="btn-buy">
              <div class="table">
                <div class="cell">
                  <el-button type="primary" size="small" @click.stop="goOrder(item.pid)">定购</el-button>
                </div>
              </div>
            </el-col>
            </el-card>
            </div>
          </li>
        </ul>
      </el-col>
    </el-row>
  </div>
</template>

<script>


export default {

  name: 'collection',
  data () {
    return {
      list:{}
    }
  },
  created:function(){
    var uid=1;
      this.$http.get('/api/user/collection',{params:{uid:uid}})
       .then(function(response){
         this.list = response.data;
         console.log(this.list)
         
       })
  },
  methods:{
    goDetail:function(parameters){
      this.$router.push({name:'detail',params:{pid:parameters}});
    },
    goOrder:function(parameters){
      this.$router.push({name:'order',params:{pid:parameters}});
    }
  },
  
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.collection{
  font-size: 1rem;
}
ul{
  list-style: none;
  padding: 0;
  margin: 0;
}
.el-card{
  margin-top: 0.4rem;
  position: relative;
  width: 100%;
}
.image{
    width: 100%; 
    vertical-align: middle;
}
.table-box{
    position:absolute;
    width:50%;
    height: 100%;
    box-sizing: border-box;
    overflow: hidden;
  }
.table{
    display: table;
    width:100%;
    height: 100%;
    vertical-align: middle;
    text-align: center; 
    box-sizing: border-box; 
  }
.cell {
    display: table-cell;
    vertical-align: middle;
    text-align: center;
    width: 100%;
  }
.btn-buy{
  position:absolute;
    width:16.5%;
    height: 100%;
}
.price{
    overflow: hidden;
    color: red;
  }
.cell-item{
  padding: 0.1rem;
} 
</style>
