<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/gormitis">
		<html>
			<head>
				<title>Gormitis</title>
				<xsl:call-template name="css"/>
			</head>
			<body>
			<table width="95%" border="1">
				<tr>
					<th></th>
					<th>Gormiti</th>
					<th>Tribu</th>
				</tr>
				<!-- Apartado A -->
				<xsl:for-each select="gormiti">
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
			<p/>
			<!-- Apartado B -->
			<!-- Asi se puede poner una imagen como fondo de una tabla -->
			<!-- Para poner un XPATH dentro de una marca podemos usar las llaves -->
			<!-- Los "@" sirven para marcar los atributos y los "$" para sacar el contenido de dicho atributo -->
			<table width="95%" border= "1" style="background: url('{tablero/@url}') no-repeat;">
				<tr>
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
				</tr>
				<tr>
					<xsl:call-template name="celda">
	      				<xsl:with-param name="x">1</xsl:with-param>		
	      				<xsl:with-param name="y">2</xsl:with-param>		
	      			</xsl:call-template>       	
	      			<xsl:call-template name="celda">
	      				<xsl:with-param name="x">2</xsl:with-param>		
	      				<xsl:with-param name="y">2</xsl:with-param>		
	      			</xsl:call-template>       	
	      			<xsl:call-template name="celda">
	      				<xsl:with-param name="x">3</xsl:with-param>		
	      				<xsl:with-param name="y">2</xsl:with-param>		
	      			</xsl:call-template>
				</tr>
				<tr>
					<xsl:call-template name="celda">
	      				<xsl:with-param name="x">1</xsl:with-param>		
	      				<xsl:with-param name="y">3</xsl:with-param>		
	      			</xsl:call-template>       	
	      			<xsl:call-template name="celda">
	      				<xsl:with-param name="x">2</xsl:with-param>		
	      				<xsl:with-param name="y">3</xsl:with-param>		
	      			</xsl:call-template>       	
	      			<xsl:call-template name="celda">
	      				<xsl:with-param name="x">3</xsl:with-param>		
	      				<xsl:with-param name="y">3</xsl:with-param>		
	      			</xsl:call-template>    
				</tr>
			</table>
			</body>
		</html>
	</xsl:template>
	
	<!-- Apartado A -->
	<!-- Esta es otra forma de llamar a un "param" sin usar un atributo -->
	<xsl:template name="filaEnTablaGormiti">
		<xsl:param name="color"/>
		<xsl:param name="img"/>
		<tr bgcolor="{$color}">
			<td><xsl:value-of select="position()"/></td>
			<td><img src="{.}"/></td>
			<td><xsl:value-of select="@tribu"/></td>
		</tr>
	</xsl:template>
	
	<!-- Apartado B -->
	<xsl:template name="celda">
		<xsl:param name="x"/>
		<xsl:param name="y"/>


		<td>
		<xsl:for-each select="tablero/gormitiEnMapa">
		<!-- Creacion de una variable para renombrar un atributo, ya que no se puede acceder a dos atributos
		que tengan el mismo nombre. -->
		<!-- Los corchetes se utilizan para tratar a los nodos como un array -->
			<xsl:variable name="nombreTribu"><xsl:value-of select="@tribu"/></xsl:variable>
			<xsl:choose>
				<xsl:when test="@x = $x and @y = $y ">
					<img src="{/gormitis/gormiti[@tribu=$nombreTribu]}"/>
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
	      }
	      
	      td {
	      	height: 100px;
	      	text-align:center;
	      }
	      
	      img {
	      width: 80px;
	      }
	   	</style>
	</xsl:template>
</xsl:stylesheet>