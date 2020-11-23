<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
      <div class="list-blog">
        <div class="row">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </div>
    </div>
  </xsl:template>

  <xsl:template match="Zone">
    <div class="col-lg-4 col-sm-6">
        <figure>
            <a class="img" href="#">
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
              <img class="lazyload" data-src="./img/song-dep-2.jpg" alt="">
                <xsl:attribute name="data-src">
                  <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
              </img>
            </a>
            <figcaption>
              <a href="#">
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                  <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
              </a>
            </figcaption>
        </figure>
    </div>
  </xsl:template>
</xsl:stylesheet>
