<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
   <section class="home-8">
        <div class="container">
            <h2>
              <xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
            </h2>
            <div class="row no-gutters">
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </div>
    </section>
  </xsl:template>

  <xsl:template match="News">
    <div class="col-lg-6">
        <div class="content">
            <h3>
              <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </h3>
            <hr/>
            <div class="text">
              <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div><a class="contact" href="#">Liên hệ chuyên gia</a>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="img">
          <img class="lazyload" data-src="./img/chuyen-gia-daisy-dung.jpg" alt="">
              <xsl:attribute name="data-src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                 <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
              </xsl:attribute>
          </img>
        </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
