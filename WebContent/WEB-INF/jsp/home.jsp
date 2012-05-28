<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextpath" value="${request.contextPath}"/>

<!DOCTYPE HTML>
<html><!-- InstanceBegin template="/Templates/ajaxhome.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- InstanceBeginEditable name="doctitle" -->
<title>Sring and Ajax code</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->

<link href="./css/ajaxstyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./js/jQuery1.7.2.js"></script>
<script type="text/javascript" src="./js/springajax.js"></script>
<script type="text/javascript" src="./js/jquery.quickflip.min.js"></script>

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function(){
    
    // for performance first init the quickFlip
   // $('.quickFlipCta').quickFlip();
    
    $('.quickFlipCta').quickFlipper();
    $('.quickFlipCta').click( function(ev) {
        $(ev.target).quickFlipper();
    });    

    /* $('.quickFlipCta').click(function(ev) {
        var $target = $(ev.target);
        if ( !$target.hasClass('quickFlipCta') ) $target = $target.parent();
        
        $target.quickFlipper();
    }, function() {});*/

});
</script>
</head>

<body>

<div class="container">
  <header>
    <a href="#">
    	<img src="" alt="Social Savings" width="180" height="90" id="Insert_logo" style="background: #C6D580; display:block;" />
    </a>
  </header>
  <div class="sidebar1">
    <nav>
      <ul>
        <li><a href="#">Ajax</a></li>
        <li><a href="#">MVC</a></li>
        <li><a href="#">Extreme scale</a></li>
        <li><a href="#">Endeca</a></li>
      </ul>
    </nav>
    <aside>
      <p></p>
      <p></p>
    </aside>
  <!-- end .sidebar1 --></div>
  <article class="content">
    <h1>${welcomeMessage}</h1>
    <section>
      <div class="flipboxwithajax">
      	<div>
		    <a href="#" class="quickFlipCta">Click to flip front panel</a>
		</div>
		
		 <div>
		    <a href="#" class="quickFlipCta">Click to flip back panel</a>
		 </div>
	  </div>
    </section>
    <section>
      <h2></h2>
      <div id="hello"><button type="button" onclick="makeRequest()">Say Hello!</button></div>
    </section>
    <section>
      <h2></h2>
      <p> </p>
      
    </section>
  <!-- end .content --></article>
  <aside>
    <h4></h4>
    <p></p>
  </aside>
  <footer>
    <p>	Test code for SSA	</p>
  </footer>
  <!-- end .container --></div>
</body>
<!-- InstanceEnd --></html>
