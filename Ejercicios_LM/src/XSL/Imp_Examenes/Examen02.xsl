<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="gormitis">
		<html>
			<head>
				<title>Gormiti</title>
				<xsl:call-template name="css"/>
			</head>
			<body>
			<table border="1" width= "95%">
				<tr>
					<th></th>
					<th>
						Gormiti
					</th>
					<th>
						Tribu
					</th>
				</tr>
				<xsl:for-each select ="gormiti">
					<xsl:choose>
						<xsl:when test="position() mod 2 = 1">
							<xsl:call-template name="filaEnTablaGormiti">
								<xsl:with-param name="color">#ffffff</xsl:with-param>
								<xsl:with-param name="img"><xsl:value-of select="."/></xsl:with-param>
							</xsl:call-template>
						</xsl:when>
						<xsl:otherwise>
							<xsl:call-template name="filaEnTablaGormiti">
								<xsl:with-param name="color">#c4daff</xsl:with-param>
								<xsl:with-param name="img"><xsl:value-of select="."/></xsl:with-param>
							</xsl:call-template>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</table>
			<!-- Apartado B -->
			<br/>
			<table width="85%" border = "1" style="background: url('{tablero/@url}') no-repeat;">
				<xsl:call-template name="bucleForFila">
	        		<xsl:with-param name="i">1</xsl:with-param>
	        	</xsl:call-template>
			</table>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="bucleForFila">
  	<xsl:param name="i"/>
  	<xsl:if test="$i &lt;= 3">
  		<tr>
	  		<xsl:call-template name="bucleForColumna">
	  			<xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
	  			<xsl:with-param name="j">1</xsl:with-param>
	  		</xsl:call-template>
	  		<xsl:call-template name="bucleForFila">
	  			<xsl:with-param name="i"><xsl:value-of select="$i + 1"/></xsl:with-param>
	  		</xsl:call-template>
  		</tr>
  	</xsl:if>
  </xsl:template>


  <xsl:template name="bucleForColumna">
  	<xsl:param name="i"/>
  	<xsl:param name="j"/> 
  	<xsl:if test="$j &lt;= 3">
  		<xsl:call-template name="celda">
  			<xsl:with-param name="x"><xsl:value-of select="$j"/></xsl:with-param>
  			<xsl:with-param name="y"><xsl:value-of select="$i"/></xsl:with-param>
  		</xsl:call-template>
  		<xsl:call-template name="bucleForColumna">
  			<xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
  			<xsl:with-param name="j"><xsl:value-of select="$j + 1"/></xsl:with-param>
  		</xsl:call-template>
  	</xsl:if>
  </xsl:template>


  <xsl:template name="celda">
  	<xsl:param name="x"/>
  	<xsl:param name="y"/>
  	<td>
  		<xsl:for-each select="/gormitis/tablero/gormitiEnMapa">
  			<xsl:if test="@x = $x and @y = $y">
  				<xsl:variable name="tribuMapa"><xsl:value-of select = "@tribu"/></xsl:variable>
  				<img src="{/gormitis/gormiti[@tribu=$tribuMapa]}"/>
  			</xsl:if>
  		</xsl:for-each>
  	</td>
  </xsl:template>
	
	<xsl:template name="filaEnTablaGormiti">
		<xsl:param name="color"/>
		<xsl:param name="img"/>
		<tr bgcolor="{$color}">
			<td><xsl:value-of select="position()"/></td>
			<td><img src="{.}"/></td>
			<td><xsl:value-of select="@tribu"/></td>
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
	      	height: 100px;
	      	text-align:center;
	      }
	      
	      img {
	      width: 80px;
	      }
	      
	     /* #aula td {
	      	width:75px;
	      	height:75px;	
	      }*/
	   	</style>
	</xsl:template>
</xsl:stylesheet>