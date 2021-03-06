<%-- 
    Document   : index
    Created on : Dec 28, 2021, 12:29:04 AM
    Author     : Tanmoy
--%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SRMS</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
	<style type="text/css">
  body{
    margin: 0;
    padding: 0;
    background-color: #CBE9BF;
  }

	.modal-body .btn{
		border-radius: 100%;
		/*font-size: 50px;*/
	}
 /* nav{
    overflow: hidden;
    position: fixed;
    width: 100%;
  }*/

	.btn-circle{
		width: 170px;
		height: 170px;
		/*padding: 10px 16px;
		border-radius: 50px;*/
		font-size: 40px;
		text-align: center;
		margin-right: 60px;
	}
  .modal-body a{
    text-decoration: none;
    color: inherit;
  }
  .title{
    font-family: Georgia,serif;

  }
  .modal-backdrop{
    position: unset !important;
  }
  .carousel-inner{
    width: 100%;
    max-height: 600px !important;
  }
     .unit-7 {
  padding-top: 70px;
  padding-bottom: 70px;
  background-size: cover;
  background-position: center center; }
  .unit-7.overlay {
    position: relative; }
    .unit-7.overlay:before {
      position: absolute;
      content: "";
      left: 0;
      right: 0;
      bottom: 0;
      top: 0;
      z-index: 1;
      background: rgba(0, 0, 0, 0.5); }
  .unit-7 > .container {
    z-index: 2;
    position: relative; }
  .unit-7 h2 {
    color: #fff;
 }
	</style>
</head>

<body >

<!-- ***********Navbar area starts****************** -->


  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
      <div class="container-fluid">
      	<!-- Pic area -->
        <a class="navbar-brand p-0" href="#"><img src="Images/logo1.jpg" height="60px" width="80px"></a>
        <!-- Tittle Area -->
        <p class="navbar-nav font-weight-bold h5 text-primary title" href="#" >Student Record Management System</p>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0 ml-auto h5">
          	<!-- menu area -->
            <li class="nav-item text-primary">
              <a class="nav-link active text-primary" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="About_us_page.html">About Us</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Dropdown
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
          </ul>
          <form class="d-flex ml-auto ">
          	<!-- Button trigger modal -->
    		    <button type="button" class="btn btn-outline-primary btn-lg"  data-bs-toggle="modal" data-bs-target="#exampleModal">Login</button>
          	<!-- Modal -->
    		  <div class="modal fade" id="exampleModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      		<div class="modal-dialog-centered modal-dialog modal-lg">
        	<div class="modal-content">
          		<div class="modal-header">
            		<h5 class="modal-title" id="staticBackdropLabel">Login Categories</h5>
            		
          		</div>
         		 <div class="modal-body">
           	 	 	<button class="btn btn-outline-success btn-circle" style="margin-left: 55px;"><a href="LOGIN_STUDENT.jsp"> Student</a></button>
            	 	<button class="btn btn-outline-primary btn-circle "><a href="LOGIN_TEACHER.html">Teacher</a></button>
            		<button class="btn btn-outline-warning btn-circle"><a href="LOGIN_ADMIN.html">Admin</a></button>
          		</div>
          		<div class="modal-footer">
            		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            		
          		</div>
        	</div>
      		</div>
    		</div>

            
          </form>
        </div>
      </div>
    </nav>
</header>

<!-- ***********Navbar area ends****************** -->


<!-- ***********Carousel image area starts****************** -->




 <div id="carouselExampleCaptions" class="carousel slide mb-2" data-bs-ride="carousel" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner" style="width: 100%;height: 700px;">
    <div class="carousel-item active ">
      <img src="Images/background1.jpg" class="d-block w-100" alt="...">
      <!-- image caption area -->
      
      <div class="carousel-caption d-flex text-primary" style="width: 100%;height: 600px;margin-left: 100px;">
        <h1>Welcome To Student Record Management System</h1>
      </div>
      <div class="carousel-caption d-flex" style="width: 100%;height: 550px;margin-left: 100px;">
        <h2>Find All Your Information Here</h2>
    </div>
      <!-- image caption area ends-->
    </div>
    <div class="carousel-item">
      <img src="Images/background2.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-flex" style="width: 100%;height: 600px;margin-left: 200px;">
        <h1>First slide label</h1>
      </div>
      <div class="carousel-caption d-flex" style="width: 100%;height: 550px;margin-left: 200px;">
        <h2>First slide label</h2>
        
      </div>
    </div>
    <div class="carousel-item">
      <img src="Images/background3.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-flex" style="width: 100%;height: 600px;margin-left: 200px;">
        <h1>First slide label</h1>
      </div>
      <div class="carousel-caption d-flex" style="width: 100%;height: 550px;margin-left: 200px;">
        <h2>First slide label</h2>
        
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev" style="background: none; border: none;">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next" style="background: none; border: none;">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



<!-- ***********Carousel image area ends****************** -->
<section >
        <div class="unit-7 overlay mb-2" style="background-image: url('Images/myfile.jpg');">
            <div class="container text-center">
                  <div class="row">
                      <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                        <h2 >Over 12000</h2>
                        
                        <h3 class="text-info">Students</h3>
                      </div>
                      <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                        <h2 >Over 6000</h2>
                        
                        <h3 class="text-info">Resumes</h3>
                      </div>
                      <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                        <h2 >Over 500</h2>
                        
                        <h3 class="text-info">Teachers</h3>
                      </div>
                      
                  </div>
            </div>
        </div>
    </section>
<!-- ***********Carousel card area starts****************** -->
<section>
  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner bg-dark" style="width: 100%;height: 400px;">
    <div class="carousel-item active">
      <div class="row p-3">
    <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/dog1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/dog1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/dog1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/dog1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

</div>
      
    </div>
    <div class="carousel-item">
      <div class="row p-3">
    <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/dog2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/dog2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/dog2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/dog2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

</div>
    </div>
    <div class="carousel-item">
      <div class="row p-3">
    <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/madann.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/madann.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/madann.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

 <div class="col-md-3 col-lg-3 col-6">
  <div class="card m-3" style="width: 18rem;">
  <img src="Images/madann.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>

</div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev" style="background: none; border: none;">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next" style="background: none; border: none;">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</section>

<!-- ***********Carousel card area ends****************** -->




<!-- ***********card about area starts****************** -->

<section>
  <div class="container-fluid bg-white mt-5">
    <h1 class="text-center">about something part</h1>
    <div class="row mb-5 p-5">
     <div class="col-md-6 col-lg-6 col-12">
  <div >
  <img src="Images/dog1.jpg" class="img-fluid" alt="..." >
  </div> 
</div>


<div class="col-md-6 col-lg-6 col-12">
 
  <h1 class="text-center">lorem spam</h1>
  <p>ssjfkhheewtuiuttyieuggjcgjfsghsjglisjiugjkxhgisguyhiujusdhrfxifuhg,
  jdhgu,jkhojfhg,jkxjkgukfshrujy
sample text area</p>
<button class="btn btn-outline-primary">any button</button>
</div>


</div>
  </div>
</section>

<!-- *********** card about area ends****************** -->

<footer>
  
</footer>

</body>
</html>