<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
		<html>
		<head>
			<title>Our Items</title>
			<style>
			body {background-color:#DACFE5; font-family:Arial, Helvetica, sans-serif} 
            h1.unavail {color:#8A8A8A}
            h1.soon {color:#000077}
            h1.avail {color:#0D3427}
            img {border:0; margin-left:10px}
			</style>
		</head>
		<body>
			<xsl:for-each select="/items/item">

			</xsl:for-each>
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
