<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Activities Memories - Help</title>
    <link rel="icon" type="image/png" sizes="32x32" href="../images/favicon.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.9.1/css/OverlayScrollbars.min.css'>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <!-- Bulma Version 0.9.0-->
    <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.0/css/bulma.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/blog.css">
</head>

<body>
    <!-- START NAV -->
    <nav class="navbar">
        <div class="container">
            <div class="navbar-brand">
                <a class="navbar-item" href="main.do">
                    <img src="https://github.com/roqhdehd502/ActivitiesMemoriesProject/blob/main/Images/AMLogoNano.png?raw=true" alt="Logo">
                </a>
                <span class="navbar-burger burger" data-target="navbarMenu">
                        <span></span>
                <span></span>
                <span></span>
                </span>
            </div>
            <div id="navbarMenu" class="navbar-menu">
                <div class="navbar-end">
                    <a class="navbar-item is-active" href="main.do">
                            Home
                    </a>
                    <a class="navbar-item" href="boardList.do">
                            List Page
                    </a>
                </div>
            </div>
        </div>
    </nav>
    <!-- END NAV -->

    <section class="hero is-info is-medium is-bold">
        <div class="hero-body">
            <div class="container has-text-centered">
                <h1 class="title">운동일지 작성을 어떻게 해야 될지 막막한가요?<br>그렇다면 아래와 같은 방법은 어떠신가요?</h1>
            </div>
        </div>
    </section>


    <div class="container">
        <!-- START ARTICLE FEED -->
        <section class="articles">
            <div class="column is-8 is-offset-2">
                <!-- START ARTICLE -->
                <div class="card article">
                    <div class="card-content">
                        <div class="media">
                            <div class="media-content has-text-centered">
                                <p class="title article-title">운동일지, 이렇게 해보세요.</p>
                            </div>
                        </div>
                        <section class="hero is-info is-bold is-small promo-block">
		                    <div class="hero-body">
		                        <div class="container">
		                            <center><h1 class="title">운동일지 작성</h1></center>
		                        </div>
		                    </div>
		                </section>                  
                        <div class="content article-body">
                        	<p><img src="img/Write_Guide-1.jpg"></p>                       	
                            <p><h4 class="has-text-centered">11시 방향에 있는 Write 버튼을 누릅니다.</h4></p>
                            <p><img src="img/Write_Guide-2.jpg"></p>                       	
                            <p><h4 class="has-text-centered">이름과 종목, 일지 내용을 작성 후<br> '일지작성' 버튼을 누르면 운동일지가 작성됩니다.</h4></p>
                        </div>
                        <section class="hero is-info is-bold is-small promo-block">
		                    <div class="hero-body">
		                        <div class="container">
		                            <center><h1 class="title">작성한 운동일지 확인</h1></center>
		                        </div>
		                    </div>
		                </section>                  
                        <div class="content article-body">
                        	<p><img src="img/View_Guide-1.jpg"></p>                       	
                            <p><h4 class="has-text-centered">11시 방향에 있는 Write 버튼을 누릅니다.</h4></p>
                            <p><img src="img/View_Guide-2.jpg"></p>                       	
                            <p><h4 class="has-text-centered">이름과 종목, 일지 내용을 작성 후<br> '일지작성' 버튼을 누르면 운동일지가 작성됩니다.</h4></p>
                        </div>
                        <section class="hero is-info is-bold is-small promo-block">
		                    <div class="hero-body">
		                        <div class="container">
		                            <center><h1 class="title">모든 준비가 끝났습니다!<br>이제 하나하나 만들어가볼까요?</h1></center>
		                        </div>
		                    </div>
		                </section>
		                <div class="content article-body">                	
                            <p><a href="boardList.do"><h3 class="has-text-centered">운동일지 작성하기</h4></a></p>      
                        </div>     
                    </div>
                </div>
                <!-- END ARTICLE -->                 
              </div>

        </section>
        <!-- END ARTICLE FEED -->
        </div>
        <script async type="text/javascript" src="../js/bulma.js"></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.9.1/js/OverlayScrollbars.min.js'></script>
        <script>
        document.addEventListener("DOMContentLoaded", function() {
        //The first argument are the elements to which the plugin shall be initialized
        //The second argument has to be at least a empty object or a object with your desired options
        OverlayScrollbars(document.querySelectorAll("body"), { });
        });
        </script>
</body>

</html>