/**
 * Created by acer on 2017/5/31.
 */
var permissionId;
var permissionParentId;
$(function(){

    $('#myModal').on('show.bs.modal', function (e) {
        $("#select").empty();

        if(permissionParentId==""){
            $("#select").append("<option value='' selected>-请选择-</option>");
        }else{
            $("#select").append("<option value=''>-请选择-</option>");
        }

        $.ajax({
            type:'GET',
            url:'/permission/findAllParentPermissions',
            async:true,
            success:function (res) {
                var res = JSON.parse(res);
                for(var i=0;i<res.data.length;i++){
                    var permission = res.data[i];
                    if(permissionParentId!=""&&permissionParentId==permission.permissionId){
                        $("#select").append("<option value='"+permission.permissionId+"-"+permission.permissionName+"' selected >"+permission.permissionName+"</option>");
                    }else{
                        $("#select").append("<option value='"+permission.permissionId+"-"+permission.permissionName+"'>"+permission.permissionName+"</option>");
                    }
                }

            }


        })
    })

    $("#submit").click(function(){
        var permissionParentIdModal;
        var permissionParentNameModal;

        var permissionName=$("#permissionName").val();
        var permissionLink=$("#permissionLink").val();
        var permissonParent=$("#select").val();
        if(permissonParent==""||permissonParent==null){
            permissionParentIdModal="0";
            permissionParentNameModal="无";
        }else{
            permissonParent = permissonParent.split('-');
            permissionParentIdModal=permissonParent[0];
            permissionParentNameModal=permissonParent[1];
        }
        //alert(permissionName+"-"+permissionParentId+"-"+permissionParentName);
        //调用ajax
        $.ajax({
            type:'POST',
            url:'/permission/saveAndUpdatePermission',
            async:true,
            data:{
                permissionName:permissionName,
                permissionLink:permissionLink,
                permissionParentId:permissionParentIdModal,
                permissionParentName:permissionParentNameModal,
                permissionId:permissionId
            },
            //返回结果处理
            success:function (res) {
                var res = JSON.parse(res);

                var strHtml=' <tbody id="tbody">';
                if(res.success==true){
                    var rows=res.data;
                    console.log(rows.length)
                    for(var i=0;i<rows.length;i++){
                        var permissionType='';
                        if(rows[i].permissionParentId==0){
                            permissionType='一级权限';
                        }else{
                            permissionType='二级权限';
                        }
                        var permissionParentName=rows[i].permissionParentName==undefined?"":rows[i].permissionParentName;
                        var permissionLink=rows[i].permissionLink==undefined?"":rows[i].permissionLink;
                        var permissionParentId=rows[i].permissionParentId==undefined?"":rows[i].permissionParentId;
                        strHtml+='<tr>'
                            +'<td>'+rows[i].permissionName+'</td><input type="hidden" id="permissionParentId" value="'+rows[i].permissionId+'">'
                            +'<td>'+permissionType+'</td>'
                            +'<td>'+permissionParentName+'</td><input type="hidden" id="permissionParentId" value="'+permissionParentId+'">'
                            +'<td>'+permissionLink+'</td>'
                            +'<td> <a href="javascript:void(0);" onclick="updatePermission(this)" class="btn btn-success" ><i class="fa fa-edit "></i><span>修改</span></button> <a href="javascript:void(0);" onclick="delePermission(\''+rows[i].permissionId+'\',this)" class="btn btn-danger" ><i class="glyphicon glyphicon-home"></i><span>删除</span></button></td>';
                        +'</tr>';
                    }
                    strHtml+='</tbody>';
                    $('tbody').replaceWith(strHtml);
                    permissionId="";
                    $(this).attr("disabled",true);
                }
                //<input type="hidden" value='+rows[i].permissionId+' id="permissionId" />
                // <input type="hidden" id="permissionParentId" value='+rows[i].permissionParentId+'/>
            }
        })
    })




})



function delePermission(permissionId,element){
    var otr = $(element).parents('tr');
    //var permissionId=otr.find('input[id="permissionId"]').val();
    $.ajax({
        type:'GET',
        url:"/permission/delPermissionById?permissionId="+permissionId,
        async:true,
        success:function (res) {
            var res = eval('(' + res + ')');
            if(res.success==true){
                alert("删除成功");
                otr.remove();
            }
        }
    })
}


function updatePermission(element){
    var otr = $(element).parents('tr');
    var permissionName=otr.find('td:eq(0)').text();
     var permissionLink=otr.find("td:eq(3)").text();
     permissionParentId=otr.find("input:eq(0)").val();
     permissionId=otr.find("input:eq(1)").val();
     alert(permissionId);
    $("#myModalLabel").text("修改权限");
    //获取值 填在model 里面 如果id有值就将标题改为修改 否则改为新增
    $("#permissionName").val(permissionName);
    $("#permissionLink").val(permissionLink);
    $("#myModal").modal("show");


}

//新增按钮点击的时候，将permissionId置空