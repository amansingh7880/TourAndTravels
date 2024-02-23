<%@page isErrorPage="false" errorPage="Error.jsp"%>
<%
	String path=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
	String member=session.getAttribute("Member")!=null?"Welcome "+session.getAttribute("Member").toString():"We Share a Vision";
	String client=session.getAttribute("Member")!=null?"<a href='"+path+"/Pages/Signout.jsp' class=caption>Sign Out From Here</a>":"<a href='"+path+"/Pages/About us.jsp' class=caption>Visit On Your Requirement</a>";
%>
<LINK HREF="<%=path+"/Styles/Travel.css"%>" REL="STYLESHEET">
<BODY LEFTMARGIN=0 TOPMARGIN=0>
<TABLE WIDTH=780 align=center cellspacing=0 cellpadding=0>
<TR><TD valign=top>
					<img style="position:relative;top:-20px;left:0px;" valign=top src="<%=path+"/Images/Animsun.gif"%>" width="40" height="26">
					<img src="<%=path+"/Images/travango.png"%>" alt="" width="660" height="79">

					<img src="<%=path+"/Images/animated.gif"%>" width="67"  valign=top style="position:relative;top:-20px"></TD></TR></TABLE>
<SCRIPT SRC="<%=path+"/Scripts/Menubar.js"%>"></SCRIPT>
<TABLE WIDTH=780 align=center cellspacing=0 cellpadding=4 style="font:bold 11px verdana">

<TR bgcolor=#234567><TH valign=top width=150>Quick Links</TH><TH width=400><marquee direction=right><%=member%></marquee></TH><TH width=230><%=client%>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<%=path+"/Pages/index.jsp"%>" class=caption>Home</a></TH></TR></TABLE>
<TABLE width=780 align=center cellspacing=0 cellpadding=0><TR><TD>
<SCRIPT>
quickLinks("<%=path+"/Pages/"%>","<%=path+"/Images/Anniversary1.jpg"%>","<%=path+"/Images/trivendrum.jpg"%>");
</SCRIPT></TD><TD valign=top>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<input type=image src="<%=path+"/Images/Search.gif"%>" valign=middle>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a></Th></TR>
</TABLE>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<h2 class="w3-center">Destinations</h2>

<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
<div class="slideshow-container">

<div class="mySlides fade">
  <img src="<%=path+"/Images/Shimla.jpg"%>" width="600"height="300" style="position:relative;top:0px;left:10px;">
  <div class="numbertext"style="font:bold 22px verdana">Shimla</div>
</div>

<div class="mySlides fade">
  <img src="<%=path+"/Images/Jaipur.jpg"%>"width="600"height="300" style="position:relative;top:0px;left:10px;">
  <div class="numbertext"style="font:bold 22px verdana">Jaipur</div>
</div>

<div class="mySlides fade">
  <img src="<%=path+"/Images/Agra.jpg"%>"width="600"height="300" style="position:relative;top:0px;left:10px;">
  <div class="numbertext"style="font:bold 22px verdana">Agra</div>
</div>

<div class="mySlides fade">
  <img src="<%=path+"/Images/Varanasi.jpg"%>"width="600"height="300" style="position:relative;top:0px;left:10px;">
  <div class="numbertext"style="font:bold 22px verdana">Varanasi</div>
</div>

<div class="mySlides fade">
  <img src="<%=path+"/Images/Kerala.jpg"%>"width="600"height="300" style="position:relative;top:0px;left:10px;">
  <div class="numbertext"style="font:bold 22px verdana">Kerala</div>
</div>

<div class="mySlides fade">
  <img src="<%=path+"/Images/Goa.jpg"%>"width="600"height="300" style="position:relative;top:0px;left:10px;">
  <div class="numbertext"style="font:bold 22px verdana">Goa</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span>
</div>

<script>
setFooter("<%=path%>","<%=path+"/Images/Balcony.jpg"%>")
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}

</script>




