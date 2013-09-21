<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title><tiles:getAsString name="title" /></title>
		<link rel="stylesheet" type="text/css" href="styles.css" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
		<script src="js/jquery-1.8.3.js"></script>
		<script src="js/jquery-ui-1.9.2.custom.js"></script>
	</head>
	<body class="body">
	
    <div class="wrapper">
 		<div class="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div class="left">
			<tiles:insertAttribute name="menu" />
		</div>
		<div class="content">
			<tiles:insertAttribute name="body" />
		</div>
		<div class="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	<div class="modal"></div>
	
	</body>
</html>