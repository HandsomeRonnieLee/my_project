<template>
  <div>
    <el-row type="flex" class="bg-blue header header-color" justify="space-around">
      <el-col :span="24">
        <div>香车App</div>
        
      </el-col>
    </el-row>
  </div>

</template>

<script>
export default {
  name: 'header',
  data () {
    return {

    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.bg-blue{
background:#20A0FF;
}
.header{
  position:fixed;
    top:0;
    left:0;
    height:50px;
    width:100%;
    line-height:50px;
    z-index: 999;
}
.header-color{
  color:white;
}


</style>
