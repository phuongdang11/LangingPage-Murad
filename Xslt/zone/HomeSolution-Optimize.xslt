<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
      <section class="home-1">
        <div class="container">
          <h2>
            <xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
          </h2>
          <div class="list-solution">
            <div class="swiper-container">
              <div class="swiper-wrapper">
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>
        </div>
      </section>
  </xsl:template>

  <xsl:template match="Zone">
    <div class="swiper-slide">
      <div class="item">
        <a class="img" href="#">
          <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="target">
              <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
          <img class="swiper-lazy" data-src="./img/giai-phap-1.png" alt="">
              <xsl:attribute name="data-src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>

          </img>
          <div class="text">
              <p class="name">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
              </p>
              <p class="desc">
                <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
              </p>
          </div>
        </a>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
