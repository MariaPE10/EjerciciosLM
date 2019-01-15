<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/biblioteca">
		<html>
      		<head>
        		<title>Biblioteca</title>
        		<xsl:call-template name="css"/>
      		</head>
     		<body>
        		<xsl:for-each select="libro">
        			<xsl:sort select="titulo" order="ascending"/>
        			<table border="3">
        				<tr class="tituloTabla">
        					<td><xsl:value-of select="titulo"/></td>
        				</tr>
        				<tr>
        					<td>Autor: <xsl:value-of select="autor"/></td>
        				</tr>
        				<tr>
        					<td>Fecha de nacimiento: <xsl:value-of select="autor/@fechaNacimiento"/></td>
        				</tr>
        				<tr>
        					<td>Fecha de Publicación: <xsl:value-of select="fechaPublicacion/@año"/></td>
        				</tr>
        			</table>
        		</xsl:for-each>
      		</body>
    	</html>
	</xsl:template>
	
	<xsl:template name="css">
    	<style type="text/css">
	      body {
	      margin: 50px;
	      padding: 0px;
	      background: #300782;
	      font-family: 'Open Sans', sans-serif;
	      font-size: 11pt;
	      color: #FFFFFF;
	      text-align:center;
	      }
	      
	      .tituloTabla {
	      font-weight: bold;   
	      text-align: center;
	      }
    	</style>
	</xsl:template>
	
	
</xsl:stylesheet>