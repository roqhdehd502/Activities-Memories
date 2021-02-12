<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Activities Memories - List</title>
  <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.0/css/bulma.min.css" />
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="css/bulma-divider.min.css">

  <style>
    nav.navbar {
      height: 6rem !important;
      box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06) !important;
    }
  </style>
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
          <a class="navbar-item is-size-5 has-text-weight-semibold" href="writeView.do">
            Write
          </a>
        </div>
      </div>
    </div>
  </nav>
  <!-- END NAV -->

  <!-- Image -->
  <section class="hero ">
    <div class="hero-body">
      <div class="container">
        <div class="columns">
          <div class="column is-center is-offset-5 ">
          	<figure class="image is-128x128">
  				<img class="is-rounded" src="https://raw.githubusercontent.com/roqhdehd502/roqhdehd502.github.io/main/assets/img/avatar-icon.png">
			</figure>
          </div>
        </div>

		<c:forEach items="${boardList}" var="dto">
        <section class="section">
          <div class="columns">
            <div class="column is-8 is-offset-2">
              <div class="content is-medium">
                <h2 class="subtitle is-4">
					<fmt:formatDate value="${dto.bDate}" pattern="YYYY-MM-DD"/>
				</h2>
                <h1 class="title">
                	<a href="contentView.do?bId=${dto.bId}">${dto.bTitle}</a>
                </h1>
                <h2 class="subtitle is-4">
					Views ${dto.bHit}
				</h2>
                <h2 class="subtitle is-4">
					Like ${dto.bLike}
				</h2>
              </div>
            </div>
          </div>
        </section>

        <div class="is-divider"></div>
		</c:forEach>

      </div>
    </div>
  </section>

  <footer class="footer">
    <div class="content has-text-centered">
      <p>
        <strong>Bulma - Blog theme</strong> by <a href="https://gonzalojs.com">Gonzalo Gutierrez</a>. Based on the <a
          href="http://jigsaw-blog-staging.tighten.co/">jigsaw-blog</a>. The source code is licensed
        <a href="http://opensource.org/licenses/mit-license.php">MIT</a>
      </p>
    </div>
  </footer>

</body>

</html>