$(function(){
   $("button[name='update']").click(
   	 function(){
   	 	 $(this).replaceWith("<button name='save' type='submit' class='btn btn-success' >确认修改</button>");

   	 	//获取表格内的值
         var name=$("tr:eq(0)").find("td:eq(0)>span").text();
         var age=$("tr:eq(1)").find("td:eq(0)>span").text();
          var sex=$("tr:eq(2)").find("td:eq(0)>span").text();
         var stuNum=$("tr:eq(3)").find("td:eq(0)>span").text();
         var stuCollege=$("tr:eq(4)").find("td:eq(0)>span").text();
         var stuPro=$("tr:eq(5)").find("td:eq(0)>span").text();
         var address=$("tr:eq(6)").find("td:eq(0)>span").text();
         var email=$("tr:eq(7)").find("td:eq(0)>span").text();
         var phone=$("tr:eq(8)").find("td:eq(0)>span").text();
         var QQ=$("tr:eq(9)").find("td:eq(0)>span").text();
         var perInfo=$("tr:eq(10)").find("td:eq(0)>span").text();
         //alert(name);
   	 	//将值放入文本框
   	 	var colleges=new Array("信息与计算机工程学院","园林学院");
   	 	var professions=new Array("软件工程","信息管理与信息系统","计算机科学与技术");
   	 	var selectCollege=getSelect(colleges,stuCollege);
   	 	var radioSex=getRadio(new Array("男","女"),sex);
   	 	var selectPro=getSelect(professions,stuPro);
   	 	$("tr:eq(0)>td:eq(0)").html('<strong>姓名：</strong><input type="text" value="'+name+'"/>');
   	 	$("tr:eq(1)>td:eq(0)").html('<strong>年龄：</strong><input type="text" value="'+age+'"/>');
   	 	$("tr:eq(2)>td:eq(0)").html('<strong>性别：</strong>'+radioSex);
   	 	$("tr:eq(3)>td:eq(0)").html('<strong>学号：</strong><input type="text" value="'+stuNum+'"/>');
   	 	$("tr:eq(4)>td:eq(0)").html('<strong>学院：</strong>'+selectCollege);
   	 	$("tr:eq(5)>td:eq(0)").html('<strong>专业：</strong>'+selectPro);
   	 	$("tr:eq(6)>td:eq(0)").html('<strong>籍贯：</strong><input type="text" value="'+address+'"/>');
		$("tr:eq(7)>td:eq(0)").html('<strong>邮箱：</strong><input type="text" value="'+email+'"/>');
		$("tr:eq(8)>td:eq(0)").html('<strong>电话：</strong><input type="text" value="'+phone+'"/>');
        $("tr:eq(9)>td:eq(0)").html('<strong>  QQ：</strong><input type="text" value="'+QQ+'"/>');
        $("tr:eq(10)>td:eq(0)").html('<strong>个人评价：</strong><p>'+getTextArea(perInfo));
        $("#stuPhotoDiv").html('<strong>选择照片：</strong><input type="file" name="file"/>');
         

   	 }

   	 
   	);
})

var getSelect=function(options,value){
   	 	var strOption="<select>";
        for(var i=0;i<options.length;i++){
        	if(options[i]==value){
				 strOption+="<option value="+options[i]+" selected>"+options[i]+"</option>";
				}else{
				  strOption+="<option value="+options[i]+">"+options[i]+"</option>";	
				}
           } 
          return strOption+"</select>";
   	 }

 var getRadio=function(array,value){
 	var strRadio="";
	 for(var i=0;i<array.length;i++){
	 	 if(value==array[i]) 
	 	 {
	 	 	strRadio+="<input type='radio' name='sex' value='"+array[i]+"' checked />"+array[i];
	 	 }else{
	 	 	strRadio+="<input type='radio' name='sex' value='"+array[i]+"'  />"+array[i];
	 	 }
	     
	 }
	 return strRadio;

 }
 
 /*var getTextArea=funtion(value){
   var strTextArea="<textarea cols='10' rows='5'>"+value+"</textarea>";
 }
*/
 var getTextArea= function(value){
     var strTextArea="<textarea cols='60' rows='5'>"+value+"</textarea>";
     return strTextArea;
 }