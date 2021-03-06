<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:template match="/periodico">
		<html>
			<head>
				<title><xsl:value-of select="@nombre"/></title>
				<xsl:call-template name="css"/>
			</head>
			<body>
				<div style="width: 1000px; margin: 0 auto;">
         			<div style="width: 1000px;"><img src="{@logo}" width="997" height="115"/></div>
         			<div id="menu" style="width: 1000px; margin: 0px; padding: 0px;">
         				<ul>
			              <xsl:for-each select="menu/enlace">
							<xsl:choose>
								<xsl:when test="position() mod 2 = 1">
									<xsl:call-template name="filaEnMenu">
										<xsl:with-param name="color">#DDE640</xsl:with-param>
									</xsl:call-template>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="filaEnMenu">
										<xsl:with-param name="color">#F27E2B</xsl:with-param>
									</xsl:call-template>
								</xsl:otherwise>
							</xsl:choose>
						  </xsl:for-each>
			            </ul>
         			</div>
         			<div style="width: 700px; float: left;">
         				<xsl:for-each select="noticias/noticia">
         					<xsl:choose>
         						<xsl:when test="@dobleAncho = 's'">
         							<div class="noticiaDobleAncho">
         								<h2> 
         									<xsl:value-of select="titular"></xsl:value-of>
         								</h2>
         								<h4>
         									<xsl:value-of select="subtitular"></xsl:value-of>
         								</h4>
         								<img src="{@imagen}" />
         								<br/>
         								<span class= "fechaNoticia">
         									<xsl:value-of select="@fecha"></xsl:value-of>
         								</span>
         								<span class = "comentariosNoticia">
         									<xsl:value-of select="@comentarios"/> comentarios
         								</span>
         							</div>
         						</xsl:when>
         						<xsl:when test="@dobleAncho = 'n'">
         							<div class="noticia">
         								<h2> 
         									<xsl:value-of select="titular"></xsl:value-of>
         								</h2>
         								<h4>
         									<xsl:value-of select="subtitular"></xsl:value-of>
         								</h4>
         								<img src="{@imagen}" />
         								<br/>
         								<span class= "fechaNoticia">
         									<xsl:value-of select="@fecha"></xsl:value-of>
         								</span>
         								<span class = "comentariosNoticia">
         									<xsl:value-of select="@comentarios"></xsl:value-of>
         								</span>
         							</div>
         						</xsl:when>
         					</xsl:choose>
         				</xsl:for-each>
         			</div>
         			<div style="width: 295px; float: right;">
         				<xsl:for-each select="publicidad/anuncio">
         					<div  class = "divPublicidad">
         						<img src = "{@imagen}"/>
         					</div>
         				</xsl:for-each>
         			</div>
         		</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="filaEnMenu">
		<xsl:param name="color"/>
		<li style="background: {$color}">
			<a href="{@href}">
				<xsl:value-of select="."/>
			</a>
		</li>
	</xsl:template>
	
	<xsl:template name="css">
		<style type="text/css">
           body {
           font-family: Arial;
           font-size: 12px;
           }
           
           ol, ul
           {
           margin-top: 10px;
           margin-left: 0px;
           }
           
           #menu li
           {
           margin-left: 0px;
           display: inline;
           list-style-type: none;
           padding: 10px 50px;
           }
           
           .noticia {
           /* border: #000 solid 1px; */
           padding: 10px 5px;
           float: left; 
           width: 338px;
           }
           
           .noticia img {
           width: 338px;
           }
           
           .noticiaDobleAncho {
           /* border: #000 solid 1px; */
           padding: 10px 5px;
           float: left; 
           width: 690px;
           }
           
           .noticiaDobleAncho img {
           width: 690px;
           }
           
           .fechaNoticia {
           color: #A3A34B;
           }
           
           .comentariosNoticia {
           color: #A3A34B;
           padding-left: 20px;
           }
           
           .divPublicidad {
           /* border: #000 solid 1px; */
           padding: 10px 5px;
           float: right; 
           width: 280px;
           }
           
           .divPublicidad img {
           width: 280px;
           }
		</style>
	</xsl:template>
</xsl:stylesheet>