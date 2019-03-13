<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="primerDia1DAW">
		<html>
			<head>
				<title> Primer Dia DAW</title>
				<xsl:call-template name="css"/>
			</head>
			<body>
				<table border = "1" width="95%">
					<th colspan="7">Horario</th>
					<xsl:apply-templates select = "horario"/>
				</table>
				<br/>
				<table border="1" with="90%">
			        <xsl:call-template name="bucleForFila">
			        	<xsl:with-param name="i">1</xsl:with-param>
			        </xsl:call-template>
       			</table>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match = "horario">
		<xsl:for-each select="dia">
			<tr>
				<td><xsl:value-of select="@desc"/></td>
				<xsl:for-each select="hora">
					<xsl:sort  select ="@orden" order = "ascending"/>
					<td>
						<xsl:choose>
							<xsl:when test=".='ENT DES'">
								<xsl:attribute name="bgcolor">#f44242</xsl:attribute>
							</xsl:when>
							<xsl:when test=".='PROG'">
								<xsl:attribute name="bgcolor">#c4daff</xsl:attribute>
							</xsl:when>
							<xsl:when test=".='LMSGI'">
								<xsl:attribute name="bgcolor">#fffb26</xsl:attribute>
							</xsl:when>
							<xsl:when test=".='SIST INF'">
								<xsl:attribute name="bgcolor">#ffa426</xsl:attribute>
							</xsl:when>
							<xsl:when test=".='FOL'">
								<xsl:attribute name="bgcolor">#9926ff</xsl:attribute>
							</xsl:when>
							<xsl:when test=".='BBDD'">
								<xsl:attribute name="bgcolor">#99ff26</xsl:attribute>
							</xsl:when>
						</xsl:choose>
						<xsl:value-of select="."/>		
					</td>
				</xsl:for-each>
			</tr>
		</xsl:for-each>
		
	</xsl:template>
	
	<xsl:template name="bucleForFila">
	  	<xsl:param name="i"/>
	  	<xsl:if test="$i &lt;= 11">
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
  	<xsl:if test="$j &lt;= 8">
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
  		<xsl:for-each select="estructuraAula/bloque">
  			<xsl:if test="@x = $x and @y = $y">
  				<xsl:variable name="tipoBloque"><xsl:value-of select="@tipo"/></xsl:variable>
  				<xsl:attribute name="bgcolor">#<xsl:value-of select = "/primerDia1DAW/estructuraAula/color[@tipo=$tipoBloque]/."/></xsl:attribute>
  				<xsl:value-of select="@tipo"/>
  			</xsl:if>
  		</xsl:for-each>
  		<xsl:for-each select="alumnado/alumno">
  			<xsl:choose>
  				<xsl:when test="@x = $x and @y = $y and @sexo='H'">
  					<xsl:variable name="varSexo"><xsl:value-of select="@sexo"/></xsl:variable>
  					<xsl:attribute name="bgcolor">#2699ff</xsl:attribute>
  					<img src="{/primerDia1DAW/alumnado/imagen[@sexo=$varSexo]/.}"/>
  					<xsl:value-of select="."/>
  				</xsl:when>
  				<xsl:when test="@x = $x and @y = $y and @sexo='M'">
  					<xsl:variable name="varSexo"><xsl:value-of select="@sexo"/></xsl:variable>
  					<xsl:attribute name="bgcolor">#9dff26</xsl:attribute>
  					<img src="{/primerDia1DAW/alumnado/imagen[@sexo=$varSexo]/.}"/>
  					<xsl:value-of select="."/>
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
	      	height: 75px;
	      	width:75px;
	      	text-align:center;
	      }
	      
	      img {
	      width: 50px;
	      }
	      
	     /* #aula td {
	      	width:75px;
	      	height:75px;	
	      }*/
	   	</style>
	</xsl:template>
</xsl:stylesheet>