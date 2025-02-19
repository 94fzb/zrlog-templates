<%@ page language="java" session="false" import="java.util.*" pageEncoding="UTF-8"%>
<script src="assets/js/jquery.liteuploader.min.js"></script>
<script>
	$(document).ready(function() {
		$("#template").click(function(e){
		  $.post('api/admin/template/setting',$("#template-form").serialize(),function(data){
              if(data.error == 0){
                  var message;
                  if(data.message!=null && data.message!=''){
                      message = data.message;
                  }else{
                      message = "操作成功...";
                  }
                  new PNotify({
                        title: message,
                        type: 'success',
                        delay:3000,
                        hide: true,
                        styling: 'bootstrap3'
                  });
              }else{
                  var message;
                  if(data.message!=null && data.message!=''){
                      message = data.message;
                  }else{
                      message = "发生了一些异常...";
                  }
                  new PNotify({
                        title: message,
                        delay:3000,
                        type: 'error',
                        hide: true,
                        styling: 'bootstrap3'
                   });
              }
          });
		});
	});
</script>
<form id="template-form" class="form-horizontal">
    <input type="hidden" name="template" value="${template}">
    <div class="form-group row">
        <label
            class="col-sm-3 control-label no-padding-right"> 导航栏 </label>

        <div class="col-sm-9">
            <input type="text" name="navBarBrand" value="${_res.navBarBrand}"
                class="form-control col-xs-10 col-sm-5" placeholder="Zrlog"
               >
        </div>
    </div>

    <div class="form-group row">
        <label
            class="col-sm-3 control-label no-padding-right">
            底部链接（html） </label>
        <div class="col-sm-9">
            <textarea name="footerLink" class="form-control" rows="5">${_res.footerLink}</textarea>
        </div>
    </div>
    <div class="ln_solid"></div>
    <div class="form-group row">
        <div class="col-md-offset-3 col-md-9">
            <button id="template" type="button" class="btn btn-info">
                <i class="icon-check bigger-110"></i> 提交
            </button>
        </div>
    </div>
</form>