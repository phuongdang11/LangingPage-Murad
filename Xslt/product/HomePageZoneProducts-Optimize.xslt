<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
     <section class="home-4">
        <div class="container">
            <h2>
              <xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
            </h2>
            <div class="tabs">
                <ul>
                    <xsl:apply-templates select="/ZoneList/Zone" mode="Tabs"></xsl:apply-templates>
                </ul>
            </div>
            <div class="tabs-container">
              <xsl:apply-templates select="/ZoneList/Zone" mode="Product"></xsl:apply-templates>
            </div>
        </div>
    </section>
  </xsl:template>

  <xsl:template match="Zone" mode="Tabs">
    <li>
      <a href="#tab-1">
        <xsl:attribute name="href">
            <xsl:text>#tab-</xsl:text>
            <xsl:value-of  select="position()"/>
          </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </a>
    </li>
  </xsl:template>

  <xsl:template match="Zone" mode="Product">

   <div id="tab-1">
      <xsl:attribute name="id">
        <xsl:text>tab-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <div class="swiper-container">
          <div class="swiper-wrapper">
            <xsl:apply-templates select="Product"></xsl:apply-templates>
          </div>
          <div class="swiper-prev"><span class="fas fa-chevron-left"></span></div>
          <div class="swiper-next"><span class="fas fa-chevron-right"></span></div>
      </div>
    </div>

  </xsl:template>

  <xsl:template match="Product">
    <div class="swiper-slide">
      <div class="productcol">
          <figure>
              <a class="productimg" href="#">
               <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                  <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img class="lazyload" data-src="./img/sp-1.png" alt="">
                  <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                </img>
              </a>
              <figcaption>
                  <h3 class="productname">
                      <a class="btn-detail" href="#">
                        <xsl:attribute name="href">
                          <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                          <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                          <p class="code"> <xsl:value-of select="Code"></xsl:value-of></p>
                          <p class="name">
                            <xsl:value-of select="Title"></xsl:value-of>
                          </p>
                      </a>
                  </h3>
                  <div class="productdesc">
                    <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                  </div>
                  <div class="productprice">
                    <xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
                  </div>
                  <div class="priceOld">
                    <xsl:value-of select="OldPrice" disable-output-escaping="yes"></xsl:value-of>
                  </div>
                  <div class="favorite">
                      <ul>
                          <li class="active"><span class="fas fa-star"></span></li>
                          <li class="active"><span class="fas fa-star"></span></li>
                          <li class="active"><span class="fas fa-star"></span></li>
                          <li class="active"><span class="fas fa-star"></span></li>
                          <li class="active"><span class="fas fa-star"></span></li>
                      </ul>
                  </div>
                  <div class="btn-buy">
                    <a href="#">
                      <xsl:if test="ButtonColor!=''">
                        <xsl:attribute name="style">
                          background:<xsl:value-of select="ButtonColor"></xsl:value-of>
                        </xsl:attribute>
                      </xsl:if>
                      <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                      </xsl:attribute>
                      <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                      </xsl:attribute>
                      <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                      </xsl:attribute>
                      <span class="lnr lnr-arrow-right"></span>
                      Xem ngay
                    </a>
                  </div>
              </figcaption>
          </figure>
      </div>
  </div>
  </xsl:template>

</xsl:stylesheet>
