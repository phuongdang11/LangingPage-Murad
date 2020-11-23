<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
		
	</xsl:template>
	<xsl:template match="Banner">
		<section class="banner">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="plugin">
					<div class="icon"><a class="ri-home-8-fill" href="javascript:;"></a></div>
					<div class="search">
						<input type="text" placeholder="Search here"/>
						<button class="material-icons" type="submit">search </button>
					</div>
					<div class="search-ipad">
						<input type="text" placeholder="Search here"/>
						<button class="material-icons" type="submit">search </button>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>
