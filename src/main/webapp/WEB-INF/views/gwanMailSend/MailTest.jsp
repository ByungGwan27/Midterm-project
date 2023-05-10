<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
var msg = '${msg}';
var href = '${href}';
alert(msg);
location.href = href;
java.net.URL classUrl = this.getClass().getResource("com.sun.mail.util.TraceInputStream"); out.println(classUrl.getFile());
</script>
</body>
</html>