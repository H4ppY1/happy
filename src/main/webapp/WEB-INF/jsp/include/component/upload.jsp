<%--
  Created by IntelliJ IDEA.
  User: haopeng
  Date: 2018/5/19
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/public/fileinput.css"/>
<script src="js/public/fileinput.js" type="text/javascript"></script>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.8/js/locales/zh.js"></script>

<form enctype="multipart/form-data">
    <div class="form-group">
        <input id="fileUpload" class="file" type="file" multiple>
    </div>
</form>
<script>
    $('#fileUpload').fileinput({
        language: 'zh',
        uploadUrl: '#',
        allowedFileExtensions : []
    });
</script>
