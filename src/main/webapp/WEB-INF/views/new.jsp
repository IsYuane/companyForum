<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%
        //        pageContext.setAttribute("APP_PATH",request.getContextPath());
        pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
<%--    <link href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="${APP_PATH}/static/weblib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${APP_PATH}/static/weblib/jquery/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${APP_PATH}/static/weblib/bootstrap/js/bootstrap.min.js"></script>
    <title>创作新主题 › mhj </title>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

    <div style="width: 70%;margin:1% 2% 1% 5%;float: left;">
    <div class="panel panel-default" id="main" style="">
        <div class="panel-heading" style="background-color: white">
            mhj › 创作新主题
        </div>

        <div class="panel-body">
            <form action="${APP_PATH}/topic/add" method="post" id="replyForm">
                <div class="form-group">
                    <label for="title">主题标题</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="请输入主题标题，如果标题能够表达完整内容，则正文可以为空" required="required">
                </div>
                <div class="form-group">
                    <label for="content">正文</label>
                    <textarea class="form-control" rows="10" id="content" name="content"></textarea>
                </div>

                <div class="form-group">
                    <label for="tab">板块</label><br/>
                    <div class="col-sm-10" style="width: 40%">
                        <select class="form-control" id="tab" name="tab">
                            <c:forEach items="${tabs}" var="tab">
                            <option value="${tab.id}">${tab.tabName}</option>
                            </c:forEach>

                        </select>
                    </div>
                </div><br/><br>
                <input type="submit" class="btn btn-default btn-sm" value="发布主题">

            </form>
        </div>

    </div>



</div>


    <div class="panel panel-default" id="sidebar2" style="width: 20%;margin:1% 2% 1% 0%;float: right">
        <div class="panel-heading" style="background-color: white;text-align: center">
            发帖提示
        </div>
        <ul class="list-group" style="width: 100%">
            <li class="list-group-item">
                <h5>主题标题</h5>
                <p>
                    请在标题中描述内容要点。如果一件事情在标题的长度内就已经可以说清楚，那就没有必要写正文了。
                </p>
            </li>

            <li class="list-group-item">
                <h5>正文</h5>
                <p>
                    请清楚地表达所要说明的内容。
                </p>
            </li>
        </ul>
    </div>


    <div class="panel panel-default" id="sidebar1" style="width: 20%;margin:1% 2% 1% 0%;float: right">
        <img src="${APP_PATH}/static/images/3.jpg" class="img-rounded"  width="305px" height="250px">
    </div>


<!-- 引入footer文件 -->
<%--<%@ include file="footer.jsp"%>--%>

<script>
    function submitValidate(flag){
        return flag;
    }
    $("#replyForm").submit(function () {
        if($("#title").val()==''){
            alert("请填写标题！");
            return submitValidate(false);
        }else {
            var ifSubmit=confirm("确定发表该主题吗?");
            if (ifSubmit == true){

            }else {
                return submitValidate(false);
            }
        }
    })
</script>
</body>
</html>