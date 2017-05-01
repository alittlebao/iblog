<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<%
	String ctx = request.getContextPath();
	String frontPath=ctx+"/front_show";
	String backPath=ctx+"/back_control";
	String plugins=ctx+"/plugins"; 
%>
<script type="text/javascript">
var ctx='<%=ctx%>';
</script>

