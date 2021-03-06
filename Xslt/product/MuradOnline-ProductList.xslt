<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="ajaxresponse product-page clearfix">
      <div class="product-sort clearfix">
        <h3 class="title">
          <span>Xem theo </span>
        </h3>
        <select class="ajaxsort">
          <xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
        </select>
      </div>
      <div class="productlist">
        <div class="row flex flex-wrap ajaxresponsewrap">
          <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="SortBy">
    <option>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="selected">
          <xsl:text>selected</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="value">
        <xsl:value-of select="Url"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </option>
  </xsl:template>

  <xsl:template match="Product">
    <div class="col-xs-6 col-lg-4 mrb-xs-15 mrb-md-30">
      <div class="item">
        <div class="productcol">
          <figure>
            <a class="productimg">
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="target">
                <xsl:value-of select="Target"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
              <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
              </img>
            </a>
            <figcaption>
              <h3 class="productname">
                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </a>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
              </h3>
              <div class="productdesc">
                <div class="autoCutStr_50">
                  <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
              </div>
              <div class="productprice">
                <xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
              </div>
				<div class="priceOld">
					<xsl:value-of select="OldPrice" disable-output-escaping="yes"></xsl:value-of>
				</div>
              <div class="favorite ratting">
				  <xsl:attribute name="data-rateavg">
                        <xsl:value-of select="RateAVG"></xsl:value-of>
                  </xsl:attribute>
              </div>
            </figcaption>
            <div class="btn-buy">
              <a class="hvr-sweep-to-right btn-shop">
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:if test="ButtonColor!=''">
                  <xsl:attribute name="style">
                    background-color:<xsl:value-of select="ButtonColor"></xsl:value-of>
                  </xsl:attribute>
                </xsl:if>
                <div class="img">
                  <img src="/Data/Sites/2/skins/default/img/cart1.png" alt="Cart" />
                </div>
              </a>
              <a class="hvr-sweep-to-right btn-view">
                <xsl:if test="ButtonColor!=''">
                  <xsl:attribute name="style">
                    background-color:<xsl:value-of select="ButtonColor"></xsl:value-of>
                  </xsl:attribute>
                </xsl:if>
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                  <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <div class="txt">Xem thêm</div>
              </a>
            </div>
          </figure>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>