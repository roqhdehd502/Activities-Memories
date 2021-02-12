<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Activities Memories - Write</title>
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
  <!-- Bulma Version 0.9.0-->
  <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.0/css/bulma.min.css" />
  <link rel="stylesheet" type="text/css" href="css/personal.css">
  <script async type="text/javascript" src="js/bulma.js"></script>
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
          <a class="navbar-item is-active is-size-5 has-text-weight-semibold" href="main.do">
            Home
          </a>
          <a class="navbar-item is-size-5 has-text-weight-semibold" href="boardList.do'">
            List
          </a>
        </div>
      </div>
    </div>
  </nav>
  <!-- END NAV -->

  <!-- Contact -->
  <div>
  	&nbsp;<br>
  </div>
  <section class="section" id="contact">
    <div class="container">
      <div class="section-heading">
        <h3 class="title is-2">Write Diary</h3>
        <h4 class="subtitle is-5">오늘 운동은 어떠셨나요?<br> 쉬울때도 힘들때도 있는거죠. 무엇이든 작성하세요.</h4>
      </div>
      <br>
	  <form action="write.do" method="post">
	      <div class="columns">
	        <div class="column is-6 is-offset-3">
	          <div class="box">
	            <div class="field">
	              <label class="label">이름</label>
	              <div class="control">
	                <input class="input" type="text" name="bName" placeholder="당신의 이름을 입력하세요.">
	              </div>
	            </div>
	
	            <div class="field">
	              <label class="label">종목</label>
	              <div class="control">
	                <input class="input" type="text" name="bTitle" placeholder="일지의 종목을 입력하세요.">
	              </div>
	            </div>
	
	            <div class="field">
	              <label class="label">일지내용</label>
	              <div class="control">
	                <textarea class="textarea" placeholder="운동일지 내용을 입력하세요."></textarea>
	              </div>
	            </div>
	
	            <div class="field is-grouped has-text-centered">
	              <div class="control">
	              	<input class="button is-link is-large" type="submit" value="일지작성">&nbsp;&nbsp;
	              	<button class="button is-link is-large" type="button" onclick="location.href='boardList.do'">목록</button>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
      </form>	
    </div>
  </section>

  <!-- Footer -->
  <footer class="footer">
    <div class="section-heading">
      <p>
        <strong>Bulma Personal Template</strong> by <a href="https://mubaidr.js.org">Muhammad Ubaid Raza</a>. The
        source code is licensed
        <a href="http://opensource.org/licenses/mit-license.php">MIT</a>.
      </p>
    </div>
  </footer>
</body>

</html>