<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/navidad">
		<html>
     		<head>
        		<title>Almuerzo Navidad</title>
      		</head>
	      	<body>
	      	<xsl:apply-templates/>
	      	</body>
   		</html>
	</xsl:template>
	
	<xsl:template match="almuerzo">
		<ul>
      		<li>Primer Plato: <xsl:value-of select="primerPlato"/></li>
      		<li>Segundo Plato: <xsl:value-of select="segundoPlato"/></li>
      		<li>Postre: <xsl:value-of select="postre"/></li>
      		<li>Bebida:  <xsl:value-of select="bebida"/></li>
      		<li>Sobremesa:</li>
      		<xsl:apply-templates select="sobremesa"/> 
		</ul>
	</xsl:template>
	
	<xsl:template match="sobremesa">
		<ol>
			<li><xsl:value-of select="primeraBebida"/></li>
			<li><xsl:value-of select="segundaBebida"/></li>
			<li><xsl:value-of select="terceraBebida"/></li>
		</ol>
	</xsl:template>
</xsl:stylesheet>