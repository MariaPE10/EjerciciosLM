<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="partidoBaloncesto">
		<html>
			<head>
				<title> Partido Baloncesto</title>
				<xsl:call-template name="css"/>
			</head>
			<body>
				<div style="width: 1000px; margin: 0 auto;">
					<h1 align="center">Baloncesto: Baloncesto Lucena - Unicaja Baloncesto</h1>
					<!-- Apartado A -->
					<table border = "1" width = "100%">
						<tr>
							<th>Equipo</th>
							<th>Jugador</th>
							<th>Dorsal</th>
							<th>Apodo</th>
							<th>Puntos</th>
							<th>Rebotes</th>
							<th>Asistencias</th>
						</tr>
						<xsl:apply-templates select="equipo"/>
					</table>
					<!-- Apartado B -->
					<br/>
					<table id="tablaCancha" width="100%" style="background: url('{pista/.}') no-repeat;">
						<xsl:call-template name="bucleForFila">
				        	<xsl:with-param name="i">1</xsl:with-param>
				        </xsl:call-template>
					</table>
					<!-- Apartado C -->
					<br/>
					<table align="center" border="1" width="50%">
						<tr>
							<th>Tiempo</th>
							<th>Jugador</th>
							<th>Apodo</th>
							<th>Descripcion</th>
							<th>Icono</th>
						</tr>
						<xsl:apply-templates select="historico"/>
					</table>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<!-- Apartado A -->
	<xsl:template match= "equipo">
		<xsl:for-each select="jugador">
		<xsl:sort  select ="@nombre" order = "ascending"/>
			<xsl:choose>
				<xsl:when test="position() mod 2 = 1 and ../@tipo = 'Local'">
					<xsl:call-template name="filaEnTablaBaloncesto">
						<xsl:with-param name="color">#d8e7ff</xsl:with-param>
					</xsl:call-template>
				</xsl:when>
				<xsl:when test="position() mod 2 = 1 and ../@tipo = 'Visitante'">
					<xsl:call-template name="filaEnTablaBaloncesto">
						<xsl:with-param name="color">#d8ffcc</xsl:with-param>
					</xsl:call-template>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="filaEnTablaBaloncesto">
						<xsl:with-param name="color">#ffffff</xsl:with-param>
					</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="filaEnTablaBaloncesto">
		<xsl:param name="color"/>
		<tr bgcolor="{$color}">
			<td>
				<img src="{../@imagen}"/>
			</td>
			<td>
				<xsl:value-of select="@nombre"/>
			</td>
			<td>
				<xsl:value-of select="@dorsal"/>
			</td>
			<td>
				<xsl:value-of select="@apodo"/>
			</td>
			<td>
				<xsl:value-of select="@puntos"/>
			</td>
			<td>
				<xsl:value-of select="@rebotes"/>
			</td>
			<td>
				<xsl:value-of select="@asistencias"/>
			</td>
		</tr>
	</xsl:template>
	
	
	<!-- Apartado B -->
	<xsl:template name="bucleForFila">
	  	<xsl:param name="i"/>
	  	<xsl:if test="$i &lt;= 5">
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
	  	<xsl:if test="$j &lt;= 10">
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
	  		<xsl:for-each select="equipo/jugador">
	  			<xsl:if test="@posicionX = $x and @posicionY = $y">
	  				<img src="{../@imagen}"/>
	  				<xsl:value-of select="@nombre"/>
	  			</xsl:if>
	  		</xsl:for-each>
	  	</td>
	</xsl:template>
	
	<!-- Apartado C -->
	<xsl:template match= "historico">
		<xsl:for-each select="entrada">
			<tr>
				<td>
					<xsl:value-of select="@tiempo"/>
				</td>
				<td>
					<xsl:value-of select="@jugador"/>
				</td>
				<td>
					<xsl:variable name="nombreJugador"><xsl:value-of select = "@jugador"/></xsl:variable>
					<xsl:value-of select="/partidoBaloncesto/equipo/jugador[@nombre = $nombreJugador]/@apodo"/>
				</td>
				<td>
					<xsl:value-of select="."/>
				</td>
				<td>
					<xsl:variable name="tipoEntrada"><xsl:value-of select="@tipo"/></xsl:variable>
					<img src="{../imagen[@tipo=$tipoEntrada]/.}"/>
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="css">
	   	<style type="text/css">
	      body {
           font-family: Arial;
           font-size: 11px;
           }
           
           table img {
           	width: 40px;
           }
           
           th {
           	background: #1e3356;
           	color: #FFFFFF;
           }
           
           #tablaCancha {
           	color: #eff4fc;
           }
	   	</style>
	</xsl:template>
</xsl:stylesheet>