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
    <!--<link href="https://fonts.googleapis.com/css?family=Roboto+Mono:400,500,700" rel="stylesheet">-->
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="${pageContext.request.contextPath}/resources/newcss/notify/toastr.min.css" rel="stylesheet"/>
    <style>
        .wrapper {
            display: grid;
            grid-gap: 1em;
            /*grid-auto-rows: minmax(20px, auto);*/
        }

        .nested {
            display: grid;
            grid-template-columns: 1fr;
            grid-auto-rows: minmax(30px, auto);
        }

        .subgrid {
            display: grid;
            grid-template-columns: 3fr 1fr;
        }

        .nestedGrid {
            display: grid;
            grid-template-columns: 1fr 5fr;
            grid-gap: 1em;
            /*grid-auto-rows: minmax(20px, auto);*/
        }

        .wrapper > div {
            padding: 1em;
        }
    </style>
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
                <a class="codrops-icon codrops-icon--drop" href="#"
                   title="Want to know more about instabook?">
                    <svg class="icon icon--drop">
                        <use xlink:href="#icon-drop"></use>
                    </svg>
                </a>
            </div>
        </header>
        <a class="pater" href="/login">
            <svg class="pater__deco" width="300" height="240" viewBox="0 0 1000 800">
                <path d="M27.4,171.8C73,42.9,128.6,1,128.6,1s0,0,0,0c58.5,0,368.3,0.3,873.2,0.8c38.5,211,42.1,373.5,38.9,476.7c-2.5,80.3-10.6,174.9-76.7,247.8c-15.1,16.6-37.4,41.2-72.8,53.9c-92.4,33.1-173-50.8-283.9-99.4c-224.3-98.4-334.9,51.4-472.2-45.6C-6.3,535.2-14.5,290.6,27.4,171.8z"/>
            </svg>
            <h4 class="pater__title">Wanna Try?</h4>
            <p class="pater__desc">Click here to login or signup.</p>
        </a>
        <div class="deco deco--title">2018 ART PRODUCTIONS</div>
    </div>
    <div class="content-wrap">
        <div class="content content--layout content--layout-1">
            <img class="content__img" src="${pageContext.request.contextPath}/resources/images/3.jpg" alt="Some image"/>
            <h3 class="content__title">instabook</h3>
            <p class="content__author" style="color: white">Ankur Upadhyay</p>
            <p class="content__desc" style="color: lightgray">Lost or found? That's the question today.</p>
            <div href="#" class="content__link" style="color: lightgray">Discover Yourself</div>
        </div>
    </div>
    <!-- Related demos -->
    <section class="content content--related">
        <div id="notification" style="display: none">${message}</div>
        <div class="limiter" style="width: 100vw;">
            <div class="container-login100">
                <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33"
                     style="padding: 40px 20px 20px 20px; width: 70%">
                    <div class="wrapper">
                        <span class="login100-form-title p-b-53" style="padding-bottom: 10px">Recent Posts</span>
                        <c:forEach items="${recentresources}" var="resource">
                            <div class="nestedGrid"
                                 style="border-bottom: 1px solid grey; border-top: 1px solid grey; border-radius: 10px;">
                                <div>
                                    <img style="width: 150px; height:150px" class="content__img"
                                         src="/UserProfilePic?uname=${resource.createdBy.username}"
                                         alt="Some image"/>
                                </div>
                                <div class="nested" style="color: black">
                                    <div class="subgrid">
                                        <h2 style="text-align: left">${resource.createdBy.firstname} ${resource.createdBy.lastname}</h2>
                                        <h3 style="x`x`text-align: left">${resource.topic.name}</h3>
                                    </div>
                                    <div class="subgrid">
                                        <div style="text-align: left">${resource.createdBy.username}</div>
                                        <div style="text-align: left">
                                            <a href="#" class="fa fa-facebook"></a>
                                            <a href="#" class="fa fa-twitter"></a>
                                            <a href="#" class="fa fa-google"></a>
                                        </div>
                                    </div>
                                    <div style="text-align: justify">${resource.description}</div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<script src="${pageContext.request.contextPath}/resources/newjs/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/newjs/notify/toastr.min.js"></script>

<script>
    var notifyvalue = $("#notification").text();
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
    if(notifyvalue != ""){
        toastr["success"](notifyvalue);
    }
</script>

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
