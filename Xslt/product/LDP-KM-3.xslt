<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="item-box-3">
			<h2 class="block-title">Khuyến mại</h2>
			<div class="product">
				<div class="box-price1"><img src="/Data/Sites/1/skins/landingpage11/img/index/d-price3.png"/></div>
				<div class="box-product">
					<div class="row">
						<xsl:apply-templates select="Zone[3]/Product"></xsl:apply-templates>
						
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-12 col-sm-6 col-lg-3">
			<div class="item-1">
				<div class="image-item">
					<img class=" ">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="price">
					<xsl:if test="OldPrice != ''">
						<p><xsl:value-of select="OldPrice" disable-output-escaping="yes"></xsl:value-of></p>
					</xsl:if>
					<h4><xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of></h4>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<xsl:if test="DiscountPercentage != ''">
					<div class="discount">
						<span>
							<xsl:text disable-output-escaping="yes">-</xsl:text>
							<xsl:value-of select="DiscountPercentage"></xsl:value-of>
							<xsl:text disable-output-escaping="yes">%</xsl:text>
						</span>
					</div>
				</xsl:if>
			</div>
			<div class="btn see-more">
				<a class=" ">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					Thêm vào giỏ hàng
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
