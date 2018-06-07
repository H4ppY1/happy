<%--
  Created by IntelliJ IDEA.
  User: haopeng
  Date: 2018/5/19
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/public/fileinput.css"/>
<script src="js/public/fileinput.js" type="text/javascript"></script>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.8/js/locales/zh.js"></script>
<div class = "wrapper">
    <%@include file="../../public/top.jsp"%>
    <%@include file="../../public/menu.jsp"%>
    <div id="page-wrapper">
        <form enctype="multipart/form-data">
            <div class="form-group">
                <input id="fileUpload" class="file" type="file" multiple>
            </div>
        </form>
    </div>
</div>

<script>
    $('#fileUpload').fileinput({
        language: 'zh',
        uploadUrl: 'D',
        allowedFileExtensions : []
    });
</script>

