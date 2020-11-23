<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="home-6">
        <div class="container">
            <h2>
              <xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
            </h2>
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

                </div>
            </div>
        </div>
    </section>
  </xsl:template>

  <xsl:template match="News">
    <div class="swiper-slide">
        <div class="news">
            <a class="img" href="#">
              <xsl:attribute name="target">
              <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <img class="lazyload" data-src="./img/news-1.png" alt="">
              <xsl:attribute name="data-src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
              </xsl:attribute>
            </img>
            </a>
            <div class="content">
                <time>
                  <span class="fas fa-calendar-alt"></span>
                  <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                </time>
                <div class="name">
                  <a href="#">
                    <xsl:attribute name="target">
                      <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                      <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                      <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                  </a>
                </div>
            </div>
        </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
