<?php
if (isset($_GET['generated']) && $_GET['generated'] == "false") {
    unset($_GET['generated']);
    echo '<script>alert("Timetable not generated yet!!");</script>';
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>TimeTable Management System</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FONT AWESOME CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- FLEXSLIDER CSS -->
    <link href="assets/css/flexslider.css" rel="stylesheet"/>
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet"/>
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'/>

</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top " id="menu">
    <div class="container">
        <div align="center">
            <h3 align="center">TIME TABLE MANAGEMENT SYSTEM, MCA, VISHWAKARMA UNIVERSITY</h3>
        </div>
    </div>

    <div class="navigation">
        <button data-scroll-reveal="enter from the bottom after 0.2s"
            id="teacherLoginBtn" >Teacher login</button>
        <button data-scroll-reveal="enter from the bottom after 0.2s"
            id="adminLoginBtn" >Admin login</button>
        <div>
            <form  style="margin:0;padding:0;" data-scroll-reveal="enter from the bottom after 0.2s" action="studentvalidation.php" method="post">
                <select id="select_semester" name="select_semester" >
                    <option selected disabled>Select Semester</option>
                    <option value="3"> MCA ( Semester I )</option>
                    <option value="4"> MCA ( Semester II )</option>
                    <option value="5"> MCA ( Semester III )</option>
                    <option value="6"> MCA ( Semester IV )</option>
                </select>
                <button type="submit">Download</button>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    function genpdf() {
        var doc = new jsPDF();

        doc.addHTML(document.getElementById('TT'), function () {
            doc.save('demo timetable.pdf');
        });
        window.alert("Downloaded!");
    }
</script>
<div class="menu_bar">
<div>
    <button >TEACHER LOGIN
    </button>
    <button >ADMIN LOGIN
    </button>
</div>
<div>
    
</div>
</div>
<!-- The Modal -->
<div id="myModal" class="modal">

    <!-- Modal content -->
    <div class="modal-content">
        <div class="modal-header">
            <span class="close">&times</span>
            <h2 id="popupHead">Modal Header</h2>
        </div>
        <div class="modal-body" id="LoginType">
            <!--Admin Login Form-->
            <div style="display:none" id="adminForm">
                <form action="adminFormvalidation.php" method="POST">
                    <div class="form-group">
                        <label for="adminname">Username</label>
                        <input type="text" class="form-control" id="adminname" name="UN" placeholder="Username ...">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="PASS"
                               placeholder="Password ...">
                    </div>
                    <div align="right">
                        <input type="submit" class="btn btn-default" name="LOGIN" value="LOGIN">
                    </div>
                </form>
            </div>
        </div>
        <!--Faculty Login Form-->
        <div style="display:none" id="facultyForm">
            <form action="facultyformvalidation.php" method="POST" style="overflow: hidden">
                <div class="form-group">
                    <label for="facultyno">Faculty No.</label>
                    <input type="text" class="form-control" id="facultyno" name="FN" placeholder="Faculty No. ...">
                </div>
                <div align="right">
                    <button type="submit" class="btn btn-default" name="LOGIN">LOGIN</button>
                </div>
            </form>
        </div>
    </div>
</div>


<script>
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var teacherLoginBtn = document.getElementById("teacherLoginBtn");
    var adminLoginBtn = document.getElementById("adminLoginBtn");
    var heading = document.getElementById("popupHead");
    var facultyForm = document.getElementById("facultyForm");
    var adminForm = document.getElementById("adminForm");
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    adminLoginBtn.onclick = function () {
        modal.style.display = "block";
        heading.innerHTML = "Admin Login";
        adminForm.style.display = "block";
        facultyForm.style.display = "none";

    }
    teacherLoginBtn.onclick = function () {
        modal.style.display = "block";
        heading.innerHTML = "Faculty Login";
        facultyForm.style.display = "block";
        adminForm.style.display = "none";


    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
        adminForm.style.display = "none";
        facultyForm.style.display = "none";

    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
<!--HOME SECTION END-->
<!--HOME SECTION TAG LINE END-->

<div id="faculty-sec">
    <div class="container set-pad">
        <div class="row text-center">
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">OUR FACULTY </h1>

            </div>

        </div>
        <!--/.HEADER LINE END-->

        <div class="row">


            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
                <div class="faculty-div">
                    <img src="assets/img/faculty/dean.jpeg" class="img-rounded"/>
                    <h4 align="center">Prof. APARNA KULKARNI</h4>
                    <hr/>
                    <h4 align="center">Professor<br/>MCA</h4>

                </div>
            </div>
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.5s">
                <div class="faculty-div">
                    <img src="assets/img/faculty/principal.jpeg" class="img-rounded"/>
                    <h4 align="center">Prof. GAURI KULKARNI</h4>
                    <hr/>
                    <h4 align="center">Professor<br/>MCA</h4>

                </div>
            </div>
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.6s">
                <div class="faculty-div">
                    <img src="assets/img/faculty/chairman.jpeg" class="img-rounded"/>
                    <h4 align="center">PROF. YOGESH DESALE</h4>
                    <hr/>
                    <h4 align="center">Professor<br/>MCA</h4>

                </div>
            </div>

        </div>
    </div>
</div>

<div class="container">
    <div class="row set-row-pad">
        <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1 "
             data-scroll-reveal="enter from the bottom after 0.4s">

            <h2><strong>Our Location </strong></h2>
            <hr/>
            <div>
                <h4>Laxmi Nagar,
                    Kondhwa Budruk, Pune.
                    Maharashtra, India.
                </h4>
                <h4>India - 411 048</h4>
                <h4><strong>Call:</strong> +91 9067002223 / 24  </h4>
                <h4><strong>Email: </strong>connect@vupune.ac.in </h4>
            </div>


        </div>
        <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1"
             data-scroll-reveal="enter from the bottom after 0.4s">

            <h2><strong>Social Conectivity </strong></h2>
            <hr/>
            <div>
                <a href="#"> <img src="assets/img/Social/facebook.png" alt=""/> </a>
                <a href="#"> <img src="assets/img/Social/google-plus.png" alt=""/></a>
                <a href="#"> <img src="assets/img/Social/twitter.png" alt=""/></a>
            </div>
        </div>


    </div>
</div>
<!-- CONTACT SECTION END-->
<div id="footer">
    <!--  &copy 2014 yourdomain.com | All Rights Reserved |  <a href="http://binarytheme.com" style="color: #fff" target="_blank">Design by : binarytheme.com</a>
--></div>
<!-- FOOTER SECTION END-->

<!--  Jquery Core Script -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!--  Core Bootstrap Script -->
<script src="assets/js/bootstrap.js"></script>
<!--  Flexslider Scripts -->
<script src="assets/js/jquery.flexslider.js"></script>
<!--  Scrolling Reveal Script -->
<script src="assets/js/scrollReveal.js"></script>
<!--  Scroll Scripts -->
<script src="assets/js/jquery.easing.min.js"></script>
<!--  Custom Scripts -->
<script src="assets/js/custom.js"></script>
</div>
</body>
</html>
