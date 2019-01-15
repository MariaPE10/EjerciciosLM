<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/alumno">
		<html>
      		<head>
        		<title>Alumno</title>
        		<xsl:call-template name="css"/>
      		</head>
     		<body>
     			<table border="3">
     				<tr class="tituloTabla">
        				<td><xsl:value-of select="concat(nombre, ' - DNI: ', @dni)"/></td>
        			</tr>
        			<tr>
        				<td>Dirección: <xsl:apply-templates select="direccion"/></td>
        			</tr>
        			<tr>
        				<td> Teléfono: <xsl:value-of select="telefono"/></td>
        			</tr>
     			</table>
        		
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
	
	<xsl:template match="direccion">
		<ul>
			<li><xsl:value-of select="calle"/></li>
			<li><xsl:value-of select="numero"/></li>
			<li><xsl:value-of select="ciudad"/></li>
			<li><xsl:value-of select="provincia"/></li>
		</ul>
	</xsl:template>
</xsl:stylesheet>