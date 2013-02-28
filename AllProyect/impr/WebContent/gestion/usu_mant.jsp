<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/ingrid.css"/>
<script src="../js/jquery.ingrid-0.9.9-min.js"></script>

<script src="//localhost:8080/impr/js/jquery-1.8.2.w.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

 <script>
  $(document).ready(function(){
    $("#commentForm").validate();
  });
  </script>
<style type="text/css">
* { font-family: Verdana; font-size: 96%; }
label { width: 10em; float: left; }
label.error { float: none; color: red; padding-left: .5em; vertical-align: top; }
p { clear: both; }
.submit { margin-left: 12em; }
em { font-weight: bold; padding-right: 1em; vertical-align: top; }
</style>
</head>
<body>

 <form class="cmxform" id="commentForm" method="get" action="">
 <fieldset>
   <legend>A simple comment form with submit validation and default messages</legend>
   <p>
     <label for="cname">Name</label>
     <em>*</em><input id="cname" name="name" size="25" class="required" minlength="2" />
   </p>
   <p>
     <label for="cemail">E-Mail</label>
     <em>*</em><input id="cemail" name="email" size="25"  class="required email" />
   </p>
   <p>
     <label for="curl">URL</label>
     <em>  </em><input id="curl" name="url" size="25"  class="url" value="" />
   </p>
   <p>
     <label for="ccomment">Your comment</label>
     <em>*</em><textarea id="ccomment" name="comment" cols="22"  class="required"></textarea>
   </p>
   <p>
     <input class="submit" type="submit" value="Submit"/>
   </p>
 </fieldset>
 </form>
</body>
</html>