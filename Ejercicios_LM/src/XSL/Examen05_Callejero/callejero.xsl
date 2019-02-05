<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="callejero">
		<html>
			<head>
				<title> Callejero</title>
				<xsl:call-template name="css"/>
			</head>
			<body>
			<!-- Apartado b -->
			<table width="50%" border = "1">
				<tr>
					<th colspan="2">Callejero</th>
				</tr>
				<tr>
					<td>Población</td>
					<td><xsl:value-of select="@ciudad"></xsl:value-of></td>
				</tr>
				<tr>
					<td>Barrio</td>
					<td><xsl:value-of select="@barrio"></xsl:value-of></td>
				</tr>
				<tr>
					<td>Provincia</td>
					<td><xsl:value-of select="@provincia"></xsl:value-of></td>
				</tr>
				<tr>
					<td>Código Postal</td>
					<td><xsl:value-of select="@cod_postal"></xsl:value-of></td>
				</tr>
				<tr>
					<td>Imagen</td>
					<td><img src = "{@imagen}"/></td>
				</tr>
			</table>
			<br/>
			<!-- Apartado c -->
			<table width="70%" border = "1">
				<xsl:apply-templates select = "calle"/>
			</table>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match = "calle">
		<tr>
			<td bgcolor = "#94e8e2">Calle</td>
			<td><xsl:value-of select ="."/></td>
			<td bgcolor = "#94e8e2">Calles Anexas</td>
			<td><xsl:value-of select ="@anexas"/></td>	
		</tr>
	</xsl:template>
	
	<xsl:template name="css">
	   	<style type="text/css">
	      body {
	      margin: 50px;
	      padding: 0px;
	      background: #ffffff;
	      font-family: 'Open Sans', sans-serif;
	      font-size: 11pt;
	      color: #000000;
	      text-align:center;
	      }
	      
	      th {
	      font-weight: bold;   
	      text-align: center;
	      background: #1051ba;
	      color: #ffffff;
	      }
	      
	      td {
	      	text-align:center;
	      }
	      
	      img {
	      width: 150px;
	      }
	      
	   	</style>
	</xsl:template>
</xsl:stylesheet>