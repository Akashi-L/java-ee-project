<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all"> 
</head>
<body style="height: 100%; width: 100%; margin: 0; padding: 0;">
    <!--背景图片的地址在这里换--> 
  <div style=" margin: 0; padding: 0; position: absolute;  background-image: url(layui/images/bg/login_bg.jpg);background-repeat:no-repeat;background-size:100%;background-attachment: fixed; width:100%; height: 100%;">
        <div style=" background-color:beige; margin-left:55%;margin-top:10%; height: 55%; width: 25%;padding-left:50px;padding-right:50px;">
            
            <div style="margin-top: 20px; height: 80px; text-align: center; vertical-align: middle;padding-top: 10%;">
                <span style="width: 100%;height: 100%; font-size: 30px;color:rgb(83, 82, 82);font-family:幼圆">社区宝 </span>
            </div>
            <form class="layui-form bg-blue"  action="" style="width:100%; position: relative;">    

                <div class="layui-form-item " style="width: 100%; text-align:center; padding-bottom: 20px;">
                    <label class="layui-form-label">用户名  
                        <i class="layui-icon">&#xe66f;</i>        
                    </label>
                    <div class="layui-input-inline" >
                        <input type="username" name="username" required lay-verify="username" placeholder="请输入用户名" autocomplete="off" class="layui-input" lay-verType="msg">      
                    </div>
               </div>

                <div class="layui-form-item" style="width: 100%; text-align:center">
                    <label class="layui-form-label">密码
                        <i class="layui-icon"> &#xe672;</i>     
                    </label>
                    <div class="layui-input-inline">
                    <input type="userpassword" name="userpassword" required lay-verify="userpassword" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>           
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                       <input type="checkbox" name="" title="记住我" lay-skin="primary" checked>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                    <button type="button" class="layui-btn" lay-submit lay-filter="login">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
    </div>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>

  <script src="/layui/layui.js" charset="utf-8"></script>
  <script>
        layui.use('form', function(){
            //部分表单元素才会自动修饰
            var form = layui.form; 
            //监听提交
            form.on('submit(login)', function(){
                $.ajax({
                    async:false,
                    url:'http://81.70.33.143:8080/test/hello',
                    type:'POST',
                    dataType:'json',
                    data:{
                        username:$('input[name="username"]').val(),
                        userpassword:$('input[name="userpassword"]').val()
                    },
                    success:function(msg){
                        console.log(hello);

                    },
                    error:function(msg){
                        console.log(msg);
                    }
            });
        });
        form.render();
        });      
      
  </script>
</body>


</html>
