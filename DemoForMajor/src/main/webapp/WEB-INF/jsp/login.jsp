<html>
    <head>
        
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
		
		
		<script src="/js/jquery-1.11.1.min.js"></script>
        <script src="/bootstrap/js/bootstrap.min.js"></script>
        <script src="/js/jquery.backstretch.min.js"></script>
        <script src="/js/wow.min.js"></script>
        <script src="/js/retina-1.1.0.min.js"></script>
        <script src="/js/scripts.js"></script>
        

        <link rel="stylesheet" href="/css/login.css">
         <link rel="stylesheet" href="/css/loader.css">     
        <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>

 		<title>
       		 MLR Institute of Technology | Best Engineering College in Hyderabad |MLRIT
   		</title>
   		
   			<link rel="icon" href="/images/icon.png">
    </head>
    <body>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6 logtemp card shadow-lg  bg-white rounded" style="padding-left: 50px;" >
                
                <lottie-player src="https://assets5.lottiefiles.com/packages/lf20_SgQLT9.json"  background="transparent"  speed="1"  style="width: 100px; height: 100px;  margin: 0 auto;"  loop  autoplay></lottie-player>
                <h1 class="display-4" style="text-align: center;">Faculty Login</h1>
                <marquee>Please Login with your credentials to manage the attendence of your students and send messages with in seconds</marquee>
                <hr style="border: 0;
                height: 1px;
                background: #333;
                background-image: linear-gradient(to right, #ccc, #333, #ccc);">
                
                
                
                
                
                
                
                <form action="/login" method="post">
                <div class="text-center">	${SPRING_SECURITY_LAST_EXCEPTION.message }</div>
                    <div class="mb-3">
                      <label for="exampleInputEmail1" style="font-size: 20px;" class="form-label">Username or Faculty ID</label>
                      <input type="text" class="form-control" name='username' id="exampleInputEmail1" aria-describedby="emailHelp" required>
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputPassword1" style="font-size: 20px;" class="form-label">Password</label>
                      <input type="password" class="form-control" name='password' id="exampleInputPassword1" required>
                    </div>
                   
                    <button type="submit" name='submit' class="btn btn-primary " style="margin-left: 300px;">Submit</button>
                  </form>
                  
                  <form action="/">
                    <button  type="submit" name='submit' class="btn btn-primary " style="margin-left: 293px;">Go Home</button>
                  </form>
                
                  
                  
            </div>
            <div class="col-lg-3"></div>
        </div>

		 <!-- Loading square for squar.red network -->
        
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