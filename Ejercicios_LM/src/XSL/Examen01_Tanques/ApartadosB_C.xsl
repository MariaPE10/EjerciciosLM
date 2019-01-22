<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/juegoTanques/jugadasGraficas">
		<html>
			<head>
				<title>Tanques</title>
				<xsl:call-template name="css"/>
			</head>
			<body>
				<xsl:for-each select="jugadaGrafica">
					<table border="1">
						<tr>
							<th></th>
							<th>1</th>
							<th>2</th>
							<th>3</th>
							<th>4</th>
							<th>5</th>
							<th>6</th>
							<th>7</th>
							<th>8</th>
						</tr>
						<tr>
							<th>1</th>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">1</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">1</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">1</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">1</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">1</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">1</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">1</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">1</xsl:with-param>
							</xsl:call-template>
						</tr>
					</table>
					<p/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="celda">
		<xsl:param name="x"/>
		<xsl:param name="y"/>
		<td>
		<xsl:for-each select="posicion">
			<xsl:choose>
				<xsl:when test="@x = $x and @y = $y and @tipo = 'tanque'">
					<xsl:attribute name="bgcolor">#ff0000</xsl:attribute>
				</xsl:when>
				<xsl:when test="@x = $x and @y = $y and @tipo = 'pared'">
					<xsl:attribute name="bgcolor">#000000</xsl:attribute>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
		</td>
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
	      width: 30px;
	      heith: 30px;
	      }
	   	</style>
	</xsl:template>
</xsl:stylesheet>