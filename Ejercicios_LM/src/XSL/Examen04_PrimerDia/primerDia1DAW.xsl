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
				<table width="95%" border="1">
					<tr>
						<th colspan="7">Horario</th>
					</tr>
					<!-- Apartado b -->
					<xsl:apply-templates select = "horario"/>
				</table>
				<br/>
				<!-- Apartado c -->
				<table border="1">
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
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">2</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">2</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">2</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">2</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
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
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">3</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">3</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">3</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">3</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">3</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">4</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">4</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">4</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">4</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">4</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">4</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">4</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">4</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">5</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">5</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">5</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">5</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">5</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">5</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">5</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">5</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">6</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">6</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">6</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">6</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">6</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">6</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">6</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">6</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">7</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">7</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">7</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">7</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">7</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">7</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">7</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">7</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">8</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">8</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">8</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">8</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">8</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">8</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">8</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">8</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">9</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">9</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">9</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">9</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">9</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">9</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">9</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">9</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">10</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">10</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">10</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">10</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">10</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">10</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">10</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">10</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">1</xsl:with-param>
								<xsl:with-param name="y">11</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">2</xsl:with-param>
								<xsl:with-param name="y">11</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">3</xsl:with-param>
								<xsl:with-param name="y">11</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">4</xsl:with-param>
								<xsl:with-param name="y">11</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">5</xsl:with-param>
								<xsl:with-param name="y">11</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">6</xsl:with-param>
								<xsl:with-param name="y">11</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">7</xsl:with-param>
								<xsl:with-param name="y">11</xsl:with-param>
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="x">8</xsl:with-param>
								<xsl:with-param name="y">11</xsl:with-param>
							</xsl:call-template>
						</tr>
					</table>
				<p/>
			</body>
		</html>
	</xsl:template>
	
	<!-- Apartado b -->
	<xsl:template match = "horario">
		<xsl:for-each select="dia">
			<tr>
			<td><xsl:value-of select="@desc"/></td>
			<xsl:for-each select="hora">
				<!-- Con el sort se ordenan segun el atributo orden de cada día -->
				<xsl:sort select ="@orden" order="ascending" />
				<td>
					<xsl:choose>
						<xsl:when test=".='ENT DES'">
							<xsl:attribute name="bgcolor">#f44242</xsl:attribute>
						</xsl:when>
						<xsl:when test=".= 'PROG'">
							<xsl:attribute name="bgcolor">#c4daff</xsl:attribute>
						</xsl:when>
						<xsl:when test=".= 'LMSGI'">
							<xsl:attribute name="bgcolor">#fffb26</xsl:attribute>
						</xsl:when>
						<xsl:when test=".= 'SIST INF'">
							<xsl:attribute name="bgcolor">#ffa426</xsl:attribute>
						</xsl:when>
						<xsl:when test=".= 'FOL'">
							<xsl:attribute name="bgcolor">#9926ff</xsl:attribute>
						</xsl:when>
						<xsl:when test=".= 'BBDD'">
							<xsl:attribute name="bgcolor">#99ff26</xsl:attribute>
						</xsl:when>
					</xsl:choose>
					<xsl:value-of select="."/>
				</td>
			</xsl:for-each>
			</tr>
		</xsl:for-each>
	</xsl:template>

	
	<!-- Apartado c -->
	<xsl:template name="celda">
		<xsl:param name="x"/>
		<xsl:param name="y"/>
		<td>
		<xsl:for-each select="estructuraAula/bloque">
		<!-- Creacion de una variable para renombrar un atributo, ya que no se puede acceder a dos atributos
		que tengan el mismo nombre. -->
		<!-- Los corchetes se utilizan para tratar a los nodos como un array -->
			<xsl:if test="@x = $x and @y = $y">
				<xsl:variable name="nombreTipoBloque"><xsl:value-of select="@tipo"/></xsl:variable>
				<xsl:attribute name="bgcolor">#<xsl:value-of select="/primerDia1DAW/estructuraAula/color[@tipo=$nombreTipoBloque]/."/></xsl:attribute>
				<xsl:value-of select="@tipo"/>
			</xsl:if>
		</xsl:for-each>
			<xsl:for-each select="alumnado/alumno">
			<xsl:choose>
				<xsl:when test="@x = $x and @y = $y and @sexo = 'H'">
					<xsl:variable name="nombreSexoAlumno"><xsl:value-of select="@sexo"/></xsl:variable>
					<xsl:attribute name="bgcolor">#2699ff</xsl:attribute>
					<img src = "{/primerDia1DAW/alumnado/imagen[@sexo=$nombreSexoAlumno]/.}"/>
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:when test="@x = $x and @y = $y and @sexo = 'M'">
					<xsl:variable name="nombreSexoAlumno"><xsl:value-of select="@sexo"/></xsl:variable>
					<xsl:attribute name="bgcolor">#9dff26</xsl:attribute>
					<img src = "{/primerDia1DAW/alumnado/imagen[@sexo=$nombreSexoAlumno]/.}"/>
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