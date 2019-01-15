<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/ligaEndesa">
		<html>
	      <head>
	        <title>Liga Endesa</title>
	        <style type="text/css">
	        body {
	          margin: 50px;
	          padding: 0px;
	          background: #910a91;
	          font-family: 'Open Sans', sans-serif;
	          font-size: 11pt;
	          color: #FFFFFF;
	          text-align:center;
	        }
	        
	        .negrita {
	          font-size: 25pt;
	          font-weight: bold;   
	          text-align: center;
	        }
	      </style>
	      </head>
	      <body>
	        <h1 class= "negrita">Descripción:</h1>
	        <xsl:apply-templates/>
	      </body>
    </html>
	</xsl:template>
	
	<xsl:template match="fechaCreacion">
		<p class = "negrita"> Fecha: <xsl:value-of select="."/></p>
	</xsl:template>
	
	<xsl:template match="nombreCompleto">
		<p class = "negrita"> Nombre: <xsl:value-of select="."/></p>
	</xsl:template>
	
	<xsl:template match="equipos">
		<p> Número de equipos:
			<ul> 
				<li>Nombre: <xsl:value-of select="nombre1"/></li>
				<li>Nombre: <xsl:value-of select="nombre2"/></li>
				<li>Nombre: <xsl:value-of select="nombre3"/></li>
			</ul>
		</p>
	</xsl:template>
	
</xsl:stylesheet>