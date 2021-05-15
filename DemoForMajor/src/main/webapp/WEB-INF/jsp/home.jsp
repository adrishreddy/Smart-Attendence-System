<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Login</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
          <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Bebas+Neue&family=Merienda+One&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="/css/home.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital@1&display=swap" rel="stylesheet">


<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400|Roboto:300,400,500">

<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">

		<link rel="stylesheet" href="/css/loader.css">
		<title>
       		 MLR Institute of Technology | Best Engineering College in Hyderabad |MLRIT
   		</title>
   		
   			<link rel="icon" href="/images/icon.png">


</head>
<body>
	
		



    <div id="head" class="example-screen">

        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <img src="/images/mlr.png" style="width: 150px; height: 100px;">
                <form action="/logout">
                	<button type="submit" id="logout"  style="margin-right: 0px;" class="btn btn-success getdetails">
						<i class="fa fa-sign-out-alt" ></i>  Log out
					</button>
                </form>
            </div>
        </nav>
        <div class="jumbo example-screen">
             <br>
            <br>
            <h1 class="display-4 example-screen">Welcome ${username}</h1>
            
            <h2 class="example-screen">Your Attendance is here...!</h2>
            <br>
            
            <br>
        </div>
    </div>
    
    


    
    
    
    
    <br><br><br>
    
  <div class="part2">
	  		<div class="example-screen">
				<ul class="nav nav-pills mb-3 justify-content-center example-screen" id="pills-tab" role="tablist" >
					<!-- <div class="row"> -->
					<li class="nav-item col-lg-3 " role="presentation">
						<a class="nav-link active  button1 example-screen" id="pills-home-tab" data-toggle="pill" href="#students" role="tab" aria-controls="pills-home" aria-selected="true" >My Students</a>
					</li>
					<li class="nav-item col-lg-3" role="presentation">
						<a class="nav-link button1 example-screen" id="pills-profile-tab" data-toggle="pill" href="#presentee" role="tab" aria-controls="pills-profile" aria-selected="false">Presentees</a>
					</li>
					<li class="nav-item col-lg-3" role="presentation">
						<a class="nav-link button1 example-screen" id="pills-contact-tab" data-toggle="pill" href="#absentee" role="tab" aria-controls="pills-contact" aria-selected="false">Absentees</a>
					</li>
					<li class="nav-item col-lg-3" role="presentation">
						<a class="nav-link button1 example-screen" id="pills-contact-tab" data-toggle="pill" href="#report" role="tab" aria-controls="pills-contact" aria-selected="false">Report</a>
					</li>
					<!-- </div> -->
				</ul>
			</div>
		
<div class="tab-content " id="pills-tabContent">
  <div class="tab-pane fade show active example-screen" id="students" role="tabpanel" aria-labelledby="pills-home-tab">
  
  
  <div class="card-body container-fluid">
    		
			<c:choose>
					<c:when test="${hasany1 == false}">
						<div class="card  shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body" style="text-align:center">
								
								<img src="/images/tick.png" width="80px" height="100px"><br>
								No Students...........!
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="row text-center">
						<c:forEach items="${td}" var="td">
							<div class="col-lg-6" style="margin-bottom: 20px">
								<div class="card">
									<div class="card-body a">
										<div class="row" style = "padding-botttom: 25px">
											<div class="col-lg-4 ">
											<br><br>
												<div class=" d-flex align-items-center justify-content-center">
												<h4 class="">${td.name}</h4><br></div><br>
												<a  class="btn btn-success getdetails" href = "mailto: ${td.email}"><i class="fas fa-envelope"></i> Send Mail</a>
											</div>
											<div class="col-lg-4 d-flex align-items-center justify-content-center details" >
													
													${td.rollno}<br>
													${td.gender}<br>
													${td.email}<br>
													${td.phno } <br>
													
											</div>
											<div class="col-lg-4 d-flex align-items-center justify-content-center">
													<img src="/team_imgs/${td.rollno }.jpg" class="img-thumbnail" style="width: 150px; height: 175px;">
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						</div>
    				</c:otherwise>
    		</c:choose>
			
			
    	
  
  </div>
  </div>
  
  
  <div class="tab-pane fade example-screen" id="presentee" role="tabpanel" aria-labelledby="pills-profile-tab">
  <div class="card-body">
			<c:choose>
					<c:when test="${hasany2 == false}">
						<div class="card d-flex align-items-center justify-content-center shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body " >
								<div class="d-flex align-items-center justify-content-center">
								<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
								<lottie-player src="https://assets2.lottiefiles.com/packages/lf20_hfnjm1i3.json"  background="transparent"  speed="1"  style="width: 200px; height: 200px;"    autoplay></lottie-player>
								
								</div>
								
								<h3 class="text-center"  style="margin-top: 0px;" >No Student is Present</h3>
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
						
						<div class="row text-center">
						<div class="col-lg-4"></div>
						<div class="col-lg-4"> <a type="button" id="get-details" href="/sendp " class="btn btn-success getdetails" style="margin-bottom: 30px;"><i class="fas fa-sms fa-5x"></i> <br>
						 <span style=font-size:25px">Send Messages to all presentees</span></a>
                       </div>
                      <div class="col-lg-4"></div>
						<c:forEach items="${pre}" var="pre">
							<div class="col-lg-4">
								<div class="card mb-3" style="max-width: 540px;">
									<div class="row no-gutters a">
									  <div class="col-md-4 d-flex align-items-center justify-content-center">
										<img src="/team_imgs/${pre.rollno}.jpg" class="card-img img-thumbnail" style="width: 150px; height: 175px;">
									  </div>
									  <div class="col-md-8 d-flex align-items-center justify-content-center">
										<div class="card-body align-items-center justify-content-center">
										  <!-- <h5 class="card-title">Adrish Reddy Komma</h5> -->
										  <h5 class="card-title">${pre.rollno}</h5>
										  <div class="alert alert-success" role="alert"  style="font-size: large;">
											Present @ ${pre.date }
										  </div>
										</div>
									  </div>
									</div>
								  </div>

							</div>
						</c:forEach>
						</div>
    				</c:otherwise>
    		</c:choose>
			
			
			
			
    	</div>
  </div>
  
  
  <div class="tab-pane fade example-screen" id="absentee" role="tabpanel" aria-labelledby="pills-contact-tab">
  		<div class="card-body">
			<c:choose>
					<c:when test="${hasany == false}">
						<div class="card d-flex align-items-center justify-content-center shadow-none p-3 mb-5 bg-light rounded">
							<div class="card-body " >
								<div class="d-flex align-items-center justify-content-center">
								<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
								<lottie-player src="https://assets5.lottiefiles.com/packages/lf20_sgzw5ogf.json"  background="transparent"  speed="1"  style="width: 200px; height: 200px;"    autoplay></lottie-player>
								
								</div>
								<h3 class="text-center"  style="margin-top: 0px;" >No Student is Absent</h3>
							
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="row text-center">
							<div class="col-lg-4"></div>
						<div class="col-lg-4"> <a type="button" id="get-details" href="/send" class="btn btn-success getdetails" style="margin-bottom: 30px;"><i class="fas fa-sms fa-5x"></i> <br>
						 <span style=font-size:25px">Send Messages to all absentees</span></a>
                       </div>
                      <div class="col-lg-4"></div>
                     
						<c:forEach items="${abs}" var="abs">
							<div class="col-lg-4">
								<div class="card mb-3" style="max-width: 540px;">
									<div class="row no-gutters a">
									  <div class="col-md-4 d-flex align-items-center justify-content-center">
										<img src="/team_imgs/${abs.rollno}.jpg" class="card-img img-thumbnail" style="width: 150px; height: 175px;">
									  </div>
									  <div class="col-md-8 d-flex align-items-center justify-content-center">
										<div class="card-body align-items-center justify-content-center">
										<!--  <h5 class="card-title">Adrish Reddy Komma</h5>  --> 
										  <h5 class="card-title">${abs.rollno}</h5>
										  <div class="alert alert-danger" role="alert"  style="font-size: large;">
											Absent
										  </div>
										</div>
									  </div>
									</div>
								  </div>

							</div>
						</c:forEach>
						</div>
			</c:otherwise>
			</c:choose>
  		</div>
  </div>

  <div class="tab-pane fade example-screen" id="report" role="tabpanel" aria-labelledby="pills-contact-tab">
  		
			  <div class="card-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<h2 class="d-flex align-items-center justify-content-center">Attendance Report</h2>
							

						</div>

					<hr style="
						border: 0;
						height: 1px;
						background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));">
						<div class="example-screen text-center">
							<button class="btn btn-secondary " onclick="window.print()"><i class="fas fa-table fa-3x"></i> <br> Generate Report</button>

						</div>
						
						<div class="row" style="font-size: 20px;">
							<div class="col-lg-5 d-flex align-items-center justify-content-center">
								Name of Faculty: ${username}<br>
								Department: Computer Science Engineering<br>
								Class: CSE-C
							</div>
							<div class="col-lg-4 d-flex align-items-center justify-content-center">
								<img src="/images/mlr.png" style="width: 150px; height: 100px;" class="example-print">
							</div>
							<div class="col-lg-3 d-flex align-items-center justify-content-center">
								Date: ${date}
							</div>
						</div>

						<!-- pie chat -->
						
						

						<div class="d-flex align-items-center justify-content-center" id="piechart"></div>
						<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
						
						
						<script >
						google.charts.load('current', {'packages':['corechart']});
						google.charts.setOnLoadCallback(drawChart);

						// Draw the chart and set the chart values
						function drawChart() {
						  var data = google.visualization.arrayToDataTable([
						  ['Category', 'No of students'],
						  ['Absentees', ${noOfAbe}],
						  ['Presentees', ${noOfPre}],
						  
						]);

						  // Optional; add a title and set the width and height of the chart
						  var options = {'title':'Attendance today', 'width':650, 'height':500 ,is3D: true,};

						  // Display the chart inside the <div> element with id="piechart"
						  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
						  chart.draw(data, options);
						}
						
						</script>

						<!-- Absentees and presentee -->
						<br>
						<h4 class="text-center">List of Absentees and Presentees</h4>
						<div class="row">
							<div class="col-lg-6">
								Presentees
								<table class="table">
									<thead >
									  <tr class="table-success">
										<th scope="col">Roll No</th>
										
										<th scope="col">Time</th>
										<th scope="col">Status</th>
									  </tr>
									</thead>
									<tbody>
										<c:forEach items="${pre}" var="pre">
									
									  <tr>
										<td>${pre.rollno}</td>
										<td>${pre.date}</td>
										<td>Present</td>
									  </tr>
									</c:forEach>
									</tbody>
								  </table>
							</div>
							<div class="col-lg-6">
								Absentees
								<table class="table">
									<thead>
									  <tr class="table-danger">
										<th scope="col">Roll No</th>
										<th scope="col">Status</th>
									  </tr>
									</thead>
									<tbody>
											<c:forEach items="${abs}" var="abs">
									
												  <tr>
													<td>${abs.rollno}</td>
													<td>Absent</td>
												  </tr>
									  
									  </c:forEach>
									</tbody>
								  </table>
							</div>
						</div>
						<!-- <div class="example-screen">You only see me in the browser</div>

						<div class="example-print">You only see me in the print</div>	 -->
					</div>	
				</div>
				
    		
			
			
			 
			</div>
  
  		
	</div>
  
  </div>
  </div>
  
  
  
  
  <!-- <script src="/js/home.js"></script> --> 
    <!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>

<!-- Loading square for squar.red network -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <div class = "loader-wrapper">
		<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets10.lottiefiles.com/private_files/lf30_ftzbav2t.json"  background="#FFDE59"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
		</div>
		
		<script>
		$(window).on("load",function(){
		     $(".loader-wrapper").fadeOut("slow");
		});
		</script>

</body>
</html>