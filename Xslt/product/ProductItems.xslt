<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
  <div class="bs4-row"> 	
	<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
	</div>
  </xsl:template>
	
  <xsl:template match="Product">
	<div class="bs4-col-sm-6 bs4-col-md-4">
		<figure>
			<div class="boximg">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<figcaption>
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				<a href="">
				
	  <xsl:attribute name="href">
		  <xsl:value-of select="Url"></xsl:value-of>
	  </xsl:attribute>
	  
	  <xsl:attribute name="target">
		  <xsl:value-of select="Target"></xsl:value-of>
	  </xsl:attribute>
	  	  <xsl:attribute name="title">
		  <xsl:value-of select="Title"></xsl:value-of>
	  </xsl:attribute>
				Mua ngay</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</figcaption>
		</figure>
	</div>
  </xsl:template>
</xsl:stylesheet>