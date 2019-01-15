<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/ordenadores">
		<html>
            <head></head>
            <xsl:call-template name="css"/>
            <body>
                <xsl:for-each select="ordenador">
                    <xsl:sort select="procesador" order="ascending"/>
                    <xsl:apply-templates select="."/>
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
	      }
    	</style>
	</xsl:template>
	
	<xsl:template match="ordenador">
        <b>Procesador:</b> <xsl:value-of select="concat(procesador/@generacion, ' - ', procesador)"/>
        <br/>
        <xsl:apply-templates/>
        <xsl:for-each select="transporte/localidad">
             <b>Localidad: </b> <xsl:value-of select="concat(., ' (Fecha de Salida: ', @fechaSalida, ')')"/>
            <br/>
        </xsl:for-each>
        <p/>
    </xsl:template>
    
    <xsl:template match="RAM | ROM | HDD">
         <b>Componentes:  </b><xsl:value-of select="concat(tipo, ' Capacidad: ', capacidad)"/>
        <br/>
    </xsl:template>
    
    <xsl:template match="procesador">
    </xsl:template>
    
    <xsl:template match="transporte">
    </xsl:template>
</xsl:stylesheet>