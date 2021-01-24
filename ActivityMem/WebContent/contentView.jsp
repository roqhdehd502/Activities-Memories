<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Activities Memories - ConetentView</title>
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
        <h3 class="title is-2">Content</h3>
        <h4 class="subtitle is-5">작성한 운동일지를 확인하세요.<br> 수정 및 삭제도 가능합니다.</h4>
      </div>
      <br>
	  <form action="modify.do" method="post">
	  	  input type="hidden" name="bId" value="${contentView.bId}">	
	      <div class="columns">
	        <div class="column is-6 is-offset-3">
	          <div class="box">
	          	<div class="field">
	              <label class="label">Views</label>
	              <div class="control">
	                ${contentView.bHit}
	              </div>
	            </div>
	          
	            <div class="field">
	              <label class="label">Name</label>
	              <div class="control">
	                <input class="input" type="text" name="bName" value="${contentView.bName}">
	              </div>
	            </div>
	
	            <div class="field">
	              <label class="label">Title</label>
	              <div class="control">
	                <input class="input" type="text" name="bTitle" value="${contentView.bTitle}">
	              </div>
	            </div>
	
	            <div class="field">
	              <label class="label">Diary Contents</label>
	              <div class="control">
	                <textarea class="textarea">${contentView.bContent}</textarea>
	              </div>
	            </div>
	
	            <div class="field is-grouped has-text-centered">
	              <div class="control">
	              	<input class="button is-link is-large" type="submit" value="일지수정">
	              	<!-- 
	              		<button class="button" onclick="location.href='boardList.do'">목록</button>&nbsp;&nbsp;
					<button class="button" onclick="location.href='delete.do?bId=${contentView.bId}'">삭제</button>&nbsp;&nbsp;
					<button class="button" onclick="location.href='likeAction.do?bId=${contentView.bId}'">추천</button>
	              	 -->
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