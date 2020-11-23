<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="navbar">
			<ul>
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</ul>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<li>
			<xsl:choose>
				<xsl:when test="ZoneId='3'">
					<xsl:attribute name="class">
						<xsl:text>has-mega</xsl:text>
					</xsl:attribute>
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>has-mega active</xsl:text>
						</xsl:attribute>
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<xsl:choose>
						<xsl:when test="count(Zone)>0">
							<xsl:attribute name="class">
								<xsl:text>has-dropdown</xsl:text>
							</xsl:attribute>
							<xsl:if test="IsActive='true'">
								<xsl:attribute name="class">
									<xsl:text>hassub active</xsl:text>
								</xsl:attribute>
							</xsl:if>
						</xsl:when>
						<xsl:otherwise>
							<xsl:if test="IsActive='true'">
								<xsl:attribute name="class">
									<xsl:text>active</xsl:text>
								</xsl:attribute>
							</xsl:if>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:otherwise>
			</xsl:choose>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
			<xsl:choose>
				<xsl:when test="ZoneId='3'">
					<xsl:if test="count(Zone)>0">
						<div class="open-mega"><span class="lnr lnr-chevron-down"></span></div>
						<div class="mega-menu">
							<div class="close-mega"><span class="lnr lnr-cross"></span></div>
							<div class="container">
								<ul grid="20">
									<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
								</ul>
							</div>
						</div>
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<xsl:if test="count(Zone)>0">
						<div class="open-mega"><span class="lnr lnr-chevron-down"></span></div>
						<div class="dropdown">
							<ul>
								<xsl:apply-templates select="Zone" mode="Parent"></xsl:apply-templates>
							</ul>
						</div>
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Child">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="megaicon">
					<img class="lazyload">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="megatext">
					<div class="name">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Parent">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>