<%--
  Created by IntelliJ IDEA.
  User: ankur
  Date: 20/7/17
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Instabook</title>
</head>
<body>
<div class="row well">
    <%--<div>
        <div class="col-md-6 col-sm-6">
            <a class="a1 rowheader" style="text-decoration: none">Instabook</a>
        </div>
        <div class="col-md-6 col-sm-6">
            <div class="input-group ">
                <a href="#" data-toggle="modal" data-target="#searchPublicTopicModal"> <span
                        class="input-group-addon glyphicon glyphicon-search"></span></a>
            </div>
        </div>
        <div class="col-md-5 col-sm-4">
            <a href="#" class="pull-right"><img class="media-object" src="/UserProfilePic?uname=${username}"
                                                style="background-size: 100% 100%;  width:37px; height: 37px"></a>
        </div>
        <div class="col-md-2 col-sm-4 pull-right" style="padding: 0;margin-right: 0">
                    <span class="dropdown" style="float: right">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">${username}
                        <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="/logout">Logout</a></li>
                            </ul>
                    </span>
        </div>
    </div>--%>
        <div>
            <div class="col-md-6 col-sm-6">
                <a class="a1 rowheader" style="text-decoration: none">Instabook</a>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="col-md-4 col-sm-4 ">
                    <div class="input-group ">
                        <a href="#"  data-toggle="modal" data-target="#searchPublicTopicModal"> <span class="input-group-addon glyphicon glyphicon-search"></span></a>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4" style="padding-right: 0">
                    <a href="#" data-toggle="modal" data-target="#createTopicModel"><span class="glyphicon glyphicon-comment spanicons"></span></a>
                    <a href="#" data-toggle="modal" data-target="#SendInvitationModel"><span class="glyphicon glyphicon-envelope spanicons"></span></a>
                    <a href="#" data-toggle="modal" data-target="#linkedresourcemodel"><span class="glyphicon glyphicon-link spanicons"></span></a>
                    <a href="#" data-toggle="modal" data-target="#documentresourcemodel"><span class="glyphicon glyphicon-copy spanicons"></span></a>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="col-md-3 col-sm-4">
                        <a href="/userProfilePage" class="pull-right" style="padding-right:5px;"><img class="media-object" src="/UserProfilePic?uname=<%=session.getAttribute("uname")%>" style="background-size: 100% 100%;  width:37px; height: 37px"></a>
                    </div>
                    <div class="col-md-9 col-sm-4 pull-right" style="padding: 0;margin-right: 0">
                    <span class="dropdown" style="float: right">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">${username}
                        <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                               <c:if test="${admin}">
                                   <li><a href="logOut">Users</a></li>
                                   <li><a href="logOut">Topics</a></li>
                                   <li><a href="logOut">Posts</a></li>
                               </c:if>
                                <li><a href="/logout">Logout</a></li>
                            </ul>
                    </span>
                    </div>
                </div>
            </div>
        </div>
</div>
</body>
</html>
