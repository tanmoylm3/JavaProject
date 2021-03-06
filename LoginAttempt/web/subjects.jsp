<!DOCTYPE html>
<%
    String id= (String)session.getAttribute("SESS_STU_ID");
if(id==null){
%>
<jsp:forward page="LOGIN_STUDENT.jsp" />
<%
}
%>


<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DaoImplement.DbConnectionImpl"%>
<%@page import="DaoInterface.QueryInterface"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>


<%@page import="login.database.*"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student- subjects</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <style type="text/css">
    	* {
  box-sizing: border-box;
}


body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
 /* float: left;*/
  width: 50%;
  padding: 0 10px;
  height: 25%;
}

/* Remove extra left and right margins, due to padding in columns */
.row {margin: 0 -10px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 32px;
  text-align: left;
  background-color: #fff;


}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}



    </style>


</head>

<body id="page-top" >

<div id="wrapper" style="background: #2C6E8B">

        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" >

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <!-- <div class="sidebar-brand-text mx-3">S R M S<sup>2</sup></div> -->
                <div class="sidebar-brand-text mx-3 h3">S R M S</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
      <!--       <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading" style="text-align: center;">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="TEST ON Percentage Applications (19th Nov).pdf" >
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Class Routine</span>
                </a>
               <!--  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div> -->
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item" style="background-color:#F2F3F6;" >
                <a class="nav-link collapsed" href="#" >
                   <!--  <i class="fas fa-fw fa-wrench"></i> -->
                    <span style="color: rgba(0, 0, 0, 1.0);">Subjects</span>
                </a>
                <!-- <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="utilities-color.html">Colors</a>
                        <a class="collapse-item" href="utilities-border.html">Borders</a>
                        <a class="collapse-item" href="utilities-animation.html">Animations</a>
                        <a class="collapse-item" href="utilities-other.html">Other</a>
                    </div>
                </div> -->
            </li>

            <!-- Divider -->
            <!-- <hr class="sidebar-divider"> -->

            <!-- Heading -->
       <!--      <div class="sidebar-heading">
                Addons
            </div> -->

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item" >
                <a class="nav-link collapsed" href="Teacher.html" >
                   <!--  <i class="fas fa-fw fa-folder"></i> -->
                    <span >Teachers</span>
                </a>
                <!-- <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login.html">Login</a>
                        <a class="collapse-item" href="register.html">Register</a>
                        <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.html">404 Page</a>
                        <a class="collapse-item" href="blank.html">Blank Page</a>
                    </div>
                </div> -->
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <!-- <i class="fas fa-fw fa-chart-area"></i> -->
                    <span>Feedback</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <!-- <i class="fas fa-fw fa-table"></i> -->
                    <span>About Institution</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
        <!--     <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
 -->
            <!-- Sidebar Message -->
            <div class="sidebar-card d-none d-lg-flex">
                <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
                <p class="text-center mb-2"><strong>S R M S </strong> is packed with premium features, components, and more!</p>
                <p class="text-center mb-2"> CONTACT : XXXXX XXXXX</p>
                <p class="text-center mb-2"> EMAIL : ######@xxxx.com</p>
                <p class="text-center mb-2"> ADDRESS : XXXXXXXXXXXXX</p>


               <!--  <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a> -->
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

               <nav class="navbar navbar-expand navbar-light topbar mb-4 static-top shadow w-100 fixed-top" style="background-color: #2C6E8B; position: sticky;">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <!-- <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    
 -->
                    <!-- Topbar Navbar -->
                    <h3 style="color:#fff ">Welcome, STUDENT</h3>
                    <button class="btn btn-light ml-auto">Sign Out</button>
                    

                </nav>
 <%
try{
    
Connection connection=null;
connection =  DbConnectionImpl.getConnection();
PreparedStatement preparedStatement=connection.prepareStatement(QueryInterface.FetchStudentSemSubjectsSQL);
String sem= (String)session.getAttribute("SESS_STU_SEM");
preparedStatement.setString(1, sem);
ResultSet resultSet = null;
resultSet = preparedStatement.executeQuery();
resultSet.next();
%>
            
            
            

	<h1 style="text-align:center;">THEORY SUBJECTS</h1>


<div class="card-body" >
                                    <div class="chart-area">
                                        <!--  <canvas id="myAreaChart"></canvas> -->
                                        <div class="row" >
                                            <div class="column" style="margin-top: 5px;">
                                                <div class="card border-left-info shadow text-info" ><%=resultSet.getString("SUBJECT_ID") %>  :  <%=resultSet.getString("SUBJECT_NAME") %><% resultSet.next(); %></div>
										    
										  </div>
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-warning shadow text-warning" ><%=resultSet.getString("SUBJECT_ID") %>  :  <%=resultSet.getString("SUBJECT_NAME") %><% resultSet.next(); %></div>
										  </div>
										 
									<!-- 	</div>


										<div class="row" style="margin-top: 25px;"> -->
											  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-primary shadow text-primary" ><%=resultSet.getString("SUBJECT_ID") %>  :  <%=resultSet.getString("SUBJECT_NAME") %><% resultSet.next(); %></div>
										  </div>

										    <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-success shadow text-success" ><%=resultSet.getString("SUBJECT_ID") %>  :  <%=resultSet.getString("SUBJECT_NAME") %><% resultSet.next(); %></div>
										  </div>

											 <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-info shadow text-info" ><%=resultSet.getString("SUBJECT_ID") %>  :  <%=resultSet.getString("SUBJECT_NAME") %></div>
										  </div>

                                         
									
										</div>


                                    </div>

                                    <h1 style="text-align:center;">PRACTICAL SUBJECTS</h1>

                                    <div class="card-body" >
                                    <div class="chart-area">
                                        <!--  <canvas id="myAreaChart"></canvas> -->
                                        <div class="row" >
                                          <div class="column" style="margin-top: 5px;">
                                            <div class="card border-left-info shadow text-info" ></div>
                                            
                                          </div>
                                          <div class="column" style="margin-top: 5px;">
                                            <div class="card border-left-warning shadow text-warning" ></div>
                                          </div>
                                         
                                   
                                         
                                    
                                        </div>


                                    </div>
 </div> 
                                    
<% 


} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
