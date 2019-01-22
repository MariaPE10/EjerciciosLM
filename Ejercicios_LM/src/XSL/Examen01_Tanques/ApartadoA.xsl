<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/juegoTanques">
		<html>
			<head>
				<title>Tanques</title>
				<xsl:call-template name="css"/>
			</head>
			<body>
			<table width="95%" border="1">
				<tr>
					<th></th>
					<th>Jugador</th>
					<th></th>
					<th>Jugada</th>
				</tr>
				<xsl:for-each select="jugadasDescritas/jugada">
					<xsl:choose>
						<xsl:when test="position() mod 2 = 1">
							<xsl:call-template name="filaEnTablaJugadasDescritasDeOtraManera">
								<xsl:with-param name="color">#c4daff</xsl:with-param>
								<xsl:with-param name="jugador"><xsl:value-of select="@jugador"/></xsl:with-param>
							</xsl:call-template>
						</xsl:when>
						<xsl:otherwise>
							<xsl:call-template name="filaEnTablaJugadasDescritasDeOtraManera">
								<xsl:with-param name="color">#ffffff</xsl:with-param>
								<xsl:with-param name="jugador"><xsl:value-of select="@jugador"/></xsl:with-param>
							</xsl:call-template>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<!--  <xsl:apply-templates select="jugadasDescritas/jugada"/> -->
			</table>
			</body>
		</html>
	</xsl:template>
	
	<!-- Esto es lo que en java seria un metodo un template con "name"
	PARA SACAR EL VALOR DE UN PARAMETRO UTILIZAMOS EL "$" 
	xsl:attribute sirve para añadir un atributo al elemento que tiene justamente sobre él-->
	<xsl:template name="filaEnTablaJugadasDescritas">
		<xsl:param name="color"/>
		<tr>
			<xsl:attribute name="bgcolor"><xsl:value-of select="$color"/></xsl:attribute>
			<td><xsl:value-of select="position()"/></td>
			<td><xsl:value-of select="@jugador"/></td>
			<td><xsl:value-of select="@desc"/></td>
		</tr>
	</xsl:template>
	
	<!-- Esta es otra forma de llamar a un "param" sin usar un atributo -->
	<xsl:template name="filaEnTablaJugadasDescritasDeOtraManera">
		<xsl:param name="color"/>
		<xsl:param name="jugador"/>
		<tr bgcolor="{$color}">
			<td><xsl:value-of select="position()"/></td>
			<td><xsl:value-of select="@jugador"/></td>
			<td><img src="{/juegoTanques/tanques/imagenTanque[@jugador = $ jugador]}"/></td>
			<td><xsl:value-of select="@desc"/></td>
		</tr>
	</xsl:template>
	
	<!--<xsl:template match="jugada">
		<tr>
			<td><xsl:value-of select="position()"/></td>
			<td><xsl:value-of select="@jugador"/></td>
			<td><xsl:value-of select="@desc"/></td>
		</tr>
	</xsl:template>
	-->
	
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
	      
	      img {
	      width: 50px;
	      }
	   	</style>
	</xsl:template>
</xsl:stylesheet>