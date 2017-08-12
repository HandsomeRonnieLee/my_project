<template>
  <div class="configuration">
    <el-row type="flex" class="configuration-title" justify="space-around">
      <el-col :span="24">
        <div >——详情——</div>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="12">
        <ul class="configuration-left">
          <li>参数配置</li>
          <li>排量(L)</li>
          <li>变速箱</li>
          <li>综合工况油耗(L/100km)</li>
          <li>长X宽X高</li>
          <li>环保标准</li>
          <li>最高车速(km/h)</li>
          <li>整备质量</li>
          <li>进气形式</li>
          <li>轴距(mm)</li>
          <li>最大马力(Ps)</li>
        </ul>
        </el-col>
        <el-col :span="12">
        <ul class="configuration-right">
          <li>更多</li>
          <li>{{carConfig.displacement}}</li>
          <li>{{carConfig.tranCase}}</li>
          <li>{{carConfig.oil}}</li>
          <li>{{carConfig.size}}</li>
          <li>{{carConfig.environmental}}</li>
          <li>{{carConfig.maxSpeed}}</li>
          <li>{{carConfig.curbWight}}</li>
          <li>{{carConfig.inlet}}</li>
          <li>{{carConfig.wheelbase}}</li>
          <li>{{carConfig.horsepower}}</li>
        </ul>
      </el-col>
    </el-row>
    <el-row class="configuration-all">
        <el-col :span="24">
          全部参数
        </el-col>
    </el-row>
  </div>
</template>

<script>


export default {

  name: 'configuration',
  data () {
    return {
      
    }
  },
  props:['carConfig']
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
li{
  list-style: none;
  font-size: 0.3rem;
  padding: 0.4rem;
  margin: 0;
  
}
ul{
  padding: 0;
  margin: 0;
  font-size: 0.3rem;
}
.configuration-title{
  background: #ccc;
  width: 100%;
  font-size: 0.2rem;
  padding: 0.4rem;
  margin-top: 0.3rem;
  color: #999;
}
.configuration-left{
  text-align: left;
  margin-top: 0.1rem;
}
.configuration-right{
  text-align: right;
  margin-top: 0.1rem;
}
.configuration-all{
  background:lightblue;
  border-radius: 5px;
  padding: 0.3rem
}
</style>
