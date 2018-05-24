<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to Instabook</title>
    <meta name="description" content="A page background effect where SVG shapes morph and transform on scroll"/>
    <meta name="keywords" content="background, svg, morph, animation, scroll, shape, web development, css, javascript"/>
    <meta name="author" content="Codrops"/>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="${pageContext.request.contextPath}/resources/newcss/normalize.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/demo.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/pater.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/main.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/util.css" rel="stylesheet"/>
    <!--<link th:href="@{/css/font-awesome.min.css}" rel="stylesheet"/>-->
    <!--<link th:href="@{/css/icon-font.min.css}" rel="stylesheet"/>-->
    <link href="${pageContext.request.contextPath}/resources/newcss/animate.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/hamburgers.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/animsition.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/select2.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/daterangepicker.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/loginutil.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/newcss/loginmain.css" rel="stylesheet"/>
    <%--<link href="${pageContext.request.contextPath}/resources/newcss/toastr.min.css" rel="stylesheet"/>--%>
    <script>
        document.documentElement.className = 'js';
        var supportsCssVars = function () {
            var s = document.createElement('style'),
                support;

            s.innerHTML = "root: { --tmp-var: bold; }";
            document.head.appendChild(s);
            support = !!(window.CSS && window.CSS.supports && window.CSS.supports('font-weight', 'var(--tmp-var)'));
            s.parentNode.removeChild(s);
            return support;
        }
        if (!supportsCssVars()) alert('Please view this demo in a modern browser that supports CSS Variables.')
    </script>
</head>
<body class="demo-2 loading">
<svg class="hidden">
    <symbol id="icon-drop" viewBox="0 0 24 24">
        <title>drop</title>
        <path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/>
        <path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
    </symbol>
</svg>
<main>
    <div class="morph-wrap">
        <svg class="morph" width="1400" height="770" viewBox="0 0 1400 770">
            <path d="M 262.9,252.2 C 210.1,338.2 212.6,487.6 288.8,553.9 372.2,626.5 511.2,517.8 620.3,536.3 750.6,558.4 860.3,723 987.3,686.5 1089,657.3 1168,534.7 1173,429.2 1178,313.7 1096,189.1 995.1,130.7 852.1,47.07 658.8,78.95 498.1,119.2 410.7,141.1 322.6,154.8 262.9,252.2 Z"/>
        </svg>
    </div>
    <div class="content content--fixed">
        <header class="codrops-header">
            <div class="codrops-links">
                <a class="codrops-icon codrops-icon--drop" href="https://tympanus.net/codrops/?p=31190"
                   title="Want to know more about instabook?">
                    <svg class="icon icon--drop">
                        <use xlink:href="#icon-drop"></use>
                    </svg>
                </a>
            </div>
        </header>
        <div class="deco deco--title">2018 ART PRODUCTIONS</div>
    </div>
    <!-- Related demos -->
    <section class="content content--related">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="padding-top: 40px;">
                    <form id="loginForm" class="login100-form validate-form flex-sb flex-w" action="/loginProcess" method="post">
                        <span class="login100-form-title p-b-53" style="padding-bottom: 30px;">Sign In With</span>
                        <a href="#" class="btn-face m-b-20" style="margin-bottom: 0; height:50px">
                            <img src="${pageContext.request.contextPath}/resources/images/icon-facebook.png" width="40px" alt="facebook">
                            Facebook
                        </a>
                        <a href="#" class="btn-google m-b-20" style="margin-bottom: 0; height:50px">
                            <img src="${pageContext.request.contextPath}/resources/images/icon-google.png" alt="google">
                            Google
                        </a>
                        <div style="text-align: center; width: 100%; padding-top: 20px">
                            <span class="txt1">Or Login Manually</span>
                        </div>
                        <div class="p-t-31 p-b-9">
                            <span class="txt1">Username</span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Username is required">
                            <input class="input100" type="text" id="username" name="username" style="height:50px">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="p-t-13 p-b-9" style="margin-top: 18px">
                            <span class="txt1">Password</span>

                            <a href="#" class="txt2 bo1 m-l-5">Forgot?</a>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <input class="input100" type="password" id="password" name="password" style="height:50px">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="container-login100-form-btn m-t-17" style="height:50px; margin-top: 30px;">
                            <button class="login100-form-btn" type="submit">Sign In</button>
                        </div>
                        <div class="w-full text-center p-t-55" style="padding-top: 30px">
                            <span class="txt2" >Not a member?</span>
                            <a href="/signup" class="txt2 bo1">Sign up now</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</main>
<script src="${pageContext.request.contextPath}/resources/newjs/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/notify/toastr.min.js"></script>
<%--<div th:if="${param.error}">
    <script>
        toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": true,
            "progressBar": false,
            "positionClass": "toast-top-center",
            "preventDuplicates": true,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }
        toastr["error"]("An error occurred while logging in");
    </script>
</div>--%>
<script src="${pageContext.request.contextPath}/resources/newjs/imagesloaded.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/anime.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/scrollMonitor.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/demo2.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/animsition.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/countdowntime.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/main.js"></script>
</body>
</html>
