<?xml version="1.0"?> 
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
		<html>
		<head>
			<title>Our Items</title>
			<style>
			body {background-color:#DACFE5; font-family:Arial, Helvetica, sans-serif}
			img {border:0; margin: 0px 10px 0px 10px}
			h1.no {color:#8A8A8A}
			h1.yes {color:#0D3427}
			</style>
		</head>
		<body>
			<xsl:for-each select="/items/item">

			</xsl:for-each>
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
