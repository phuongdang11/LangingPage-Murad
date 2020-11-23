<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="receive-address clearfix">
      <h3 class="carttitle">Địa chỉ nhận hàng</h3>
      <section class="cart-form clearfix">
        <div class="group clearfix">
          <section class="form-group">
            <div class="label">
              <label>
                <xsl:value-of select="/CheckoutAddress/FullNameText"></xsl:value-of>
              </label>
            </div>
            <div class="input">
              <input type="text" name="Address_FirstName" placeholder="Nhập họ tên">
                <xsl:attribute name="value">
                  <xsl:value-of select="/CheckoutAddress/FirstName"></xsl:value-of>
                </xsl:attribute>
              </input>
            </div>
          </section>
          <section class="form-group">
            <div class="label">
              <label>
                <xsl:value-of select="/CheckoutAddress/PhoneText"></xsl:value-of>
              </label>
            </div>
            <div class="input phone">
              <input type="text" name="Address_Phone" placeholder="Nhập Số điện thoại">
                <xsl:attribute name="value">
                  <xsl:value-of select="/CheckoutAddress/Phone"></xsl:value-of>
                </xsl:attribute>
              </input>
              <div class="des">
                <xsl:value-of select="/CheckoutAddress/ContactNumberText"></xsl:value-of>
                <xsl:text>(Nhân viên giao nhận sẽ liên hệ với SĐT này.)</xsl:text>
              </div>
            </div>
          </section>
          <section class="form-group">
            <div class="label">
              <label>
                <xsl:value-of select="/CheckoutAddress/EmailText"></xsl:value-of>
              </label>              
            </div>
            <div class="input">
              <input type="text" name="Address_Email" placeholder="Nhập email">
                <xsl:attribute name="value">
                  <xsl:value-of select="/CheckoutAddress/Email"></xsl:value-of>
                </xsl:attribute>
              </input>
            </div>
          </section>
          <div class="hr"></div>
          <section class="form-group">
            <div class="label">
              <label>
                <xsl:value-of select="/CheckoutAddress/ProvinceText"></xsl:value-of>
              </label>
            </div>
            <div class="input">
              <select name="Address_Province" onchange="AjaxCheckout.getdistrictsbyprovinceguid(this, 'Address_District')">
                <option value="">
                  <xsl:value-of select="/CheckoutAddress/SelectProvinceText"></xsl:value-of>
                </option>
                <xsl:apply-templates select="/CheckoutAddress/Provinces"></xsl:apply-templates>
              </select>
            </div>
          </section>
          <section class="form-group">
            <div class="label">
              <label>
                <xsl:value-of select="/CheckoutAddress/DistrictText"></xsl:value-of>
              </label>
            </div>
            <div class="input">
              <select name="Address_District" onchange="AjaxCheckout.getwardbydistrictguid(this, 'Address_Ward')">
                <option value="">
                  <xsl:value-of select="/CheckoutAddress/SelectDistrictText"></xsl:value-of>
                </option>
                <xsl:apply-templates select="/CheckoutAddress/Districts"></xsl:apply-templates>
              </select>
            </div>
          </section>
		    <section class="form-group">
            <div class="label">
              <label>
                <xsl:value-of select="/CheckoutAddress/WardText"></xsl:value-of>
              </label>
            </div>
            <div class="input">
              <select name="Address_Ward">
                <option value="">
                  <xsl:value-of select="/CheckoutAddress/SelectWardText"></xsl:value-of>
                </option>
                <xsl:apply-templates select="/CheckoutAddress/Ward"></xsl:apply-templates>
              </select>
            </div>
          </section>
          <section class="form-group">
            <div class="label">
              <label>
                <xsl:value-of select="/CheckoutAddress/AddressText"></xsl:value-of>
              </label>
            </div>
            <div class="input">
              <input type="text" name="Address_Address" placeholder="Vd: 64 đường Hiệp Bình">
                <xsl:attribute name="value">
                  <xsl:value-of select="/CheckoutAddress/Address"></xsl:value-of>
                </xsl:attribute>
              </input>
            </div>
          </section>
          <section class="form-group">
            <div class="label">
              <label>
                Lời nhắn:
                <div class="des">(Không bắt buộc)</div>
              </label>
            </div>
            <div class="input">
              <textarea name="OrderNote" cols="30" rows="2" placeholder="Ví dụ: Chuyển hàng ngoài giờ hành chính">
                <xsl:value-of select="/CheckoutAddress/OrderNote"></xsl:value-of>
              </textarea>
            </div>
          </section>
        </div>
        <div class="group clearfix">
          <section class="check-group">
            <input id="ttmh" type="checkbox" name="Address_SameBilling" checked="checked"></input>
            <label id="btn-ttmh" for="ttmh">Thông tin người mua hàng giống như trên</label>
          </section>
          <section class="user-info clearfix">
            <section class="form-group">
              <div class="label">
                <label>
                  <xsl:value-of select="/CheckoutAddress/FullNameText"></xsl:value-of>
                </label>
              </div>
              <div class="input">
                <input type="text" name="ShippingAddress_FirstName" placeholder="Nhập họ tên">
                  <xsl:attribute name="value">
                    <xsl:value-of select="/CheckoutAddress/ShippingFirstName"></xsl:value-of>
                  </xsl:attribute>
                </input>
              </div>
            </section>
            <section class="form-group">
              <div class="label">
                <label>
                  <xsl:value-of select="/CheckoutAddress/PhoneText"></xsl:value-of>
                </label>
              </div>
              <div class="input phone">
                <input type="text" name="ShippingAddress_Phone" placeholder="Nhập Số điện thoại">
                  <xsl:attribute name="value">
                    <xsl:value-of select="/CheckoutAddress/ShippingPhone"></xsl:value-of>
                  </xsl:attribute>
                </input>
                <div class="des">
                  <xsl:value-of select="/CheckoutAddress/ContactNumberText"></xsl:value-of>
                </div>
              </div>
            </section>
            <section class="form-group">
              <div class="label">
                <label>
                  <xsl:value-of select="/CheckoutAddress/EmailText"></xsl:value-of>
                </label>
                <div class="des">(Không bắt buộc)</div>
              </div>
              <div class="input">
                <input type="text" name="ShippingAddress_Email" placeholder="Nhập email">
                  <xsl:attribute name="value">
                    <xsl:value-of select="/CheckoutAddress/ShippingEmail"></xsl:value-of>
                  </xsl:attribute>
                </input>
              </div>
            </section>
            <div class="hr"></div>
            <section class="form-group">
              <div class="label">
                <label>
                  <xsl:value-of select="/CheckoutAddress/ProvinceText"></xsl:value-of>
                </label>
              </div>
              <div class="input">
                <select name="ShippingAddress_Province" onchange="AjaxCheckout.getdistrictsbyprovinceguid(this, 'ShippingAddress_District')">
                  <option value="">
                    <xsl:value-of select="/CheckoutAddress/SelectProvinceText"></xsl:value-of>
                  </option>
                  <xsl:apply-templates select="/CheckoutAddress/Provinces" mode="Shipping"></xsl:apply-templates>
                </select>
              </div>
            </section>
            <section class="form-group">
              <div class="label">
                <label>
                  <xsl:value-of select="/CheckoutAddress/DistrictText"></xsl:value-of>
                </label>
              </div>
              <div class="input">
                <select name="ShippingAddress_District">
                  <option value="">
                    <xsl:value-of select="/CheckoutAddress/SelectDistrictText"></xsl:value-of>
                  </option>
                  <xsl:apply-templates select="/CheckoutAddress/Districts" mode="Shipping"></xsl:apply-templates>
                </select>
              </div>
            </section>
            <section class="form-group">
              <div class="label">
                <label>
                  <xsl:value-of select="/CheckoutAddress/AddressText"></xsl:value-of>
                </label>
              </div>
              <div class="input">
                <input type="text" name="ShippingAddress_Address" placeholder="Vd: 64 đường Hiệp Bình">
                  <xsl:attribute name="value">
                    <xsl:value-of select="/CheckoutAddress/ShippingAddress"></xsl:value-of>
                  </xsl:attribute>
                </input>
              </div>
            </section>
          </section>
          <section class="check-group">
            <input id="giftorder" type="checkbox" name="giftorder" >
			<xsl:if test="/CheckoutAddress/HaveGift='True'"> 
			  <xsl:attribute name="checked">true</xsl:attribute>
			</xsl:if>
			</input>
            <label for="giftorder">Gói quà</label>
          </section>
        </div>
      </section>
    </div>
    <!--end col-1-->
    <div class="coupon clearfix">
      <section class="carttitle">
        <xsl:text>Sử dụng mã giảm giá</xsl:text>
        <div data-toggle="tooltip" data-placement="right" title="Mã giảm giá sẽ được chia đến từng sản phẩm và được làm tròn theo quy định của " class="help">
          <i class="fa fa-question-circle" aria-hidden="true"></i>
        </div>
      </section>
  <section class="cart-form clearfix">
        <div class="input-coupon clearfix">
          <xsl:choose>
            <xsl:when test="/CheckoutAddress/CouponCode!=''">
              <span class="code" style="margin-top: 10px;margin-right: 10px;float:left">
                <xsl:value-of select="/CheckoutAddress/CouponCode" ></xsl:value-of>
              </span>
              <input type="button" onclick="AjaxCart.removecoupon();return false;" class="remove" value="Xóa" runat="server"  
			  style="display: block;font-size: 1rem;color: #fff;background: #4cbbc6;line-height: 40px;width: 51px;text-align: center;margin: 0;cursor: pointer;height: 40px;padding: 0;box-shadow: 0 10px 20px -10px #4cbbc6;"/>
            </xsl:when>
            <xsl:otherwise>
              <input type="text" id="couponCode" autocomplete="off" max-length="20">
                <xsl:attribute name="placeholder">
                  <xsl:value-of select="/CheckoutAddress/plCouponText"></xsl:value-of>
                </xsl:attribute>
              </input>
              <button class="btn-submitcoupon" onclick="AjaxCart.applycoupon();return false;">
			  Áp dụng
              </button>
              <div class="coupon-apply-error"></div>
            </xsl:otherwise>
          </xsl:choose>
        </div>
        <div class="des">
          <em>
            <xsl:value-of select="/CheckoutAddress/RuleCouponText"></xsl:value-of>
          </em>
        </div>
        <div class="module-title">
          <xsl:value-of select="/CheckoutAddress/RuleCouponText1" disable-output-escaping="yes"></xsl:value-of>
        </div>
      </section>
    </div>
    <div class="export-bill clearfix">
      <section class="title">
        <div class="check-group">
          <input id="Invoice_Required" type="checkbox" name="Invoice_Required"></input>
          <label id="btn-xuathd" for="Invoice_Required">Yêu cầu xuất hóa đơn GTGT cho đơn hàng này</label>
        </div>
      </section>
      <section class="cart-form bill-form clearfix">
        <div class="module-title">Vui lòng điền đầy đủ thông tin công ty để nhận hóa đơn GTGT</div>
        <div class="form-group">
          <div class="label">
            <label>
              <xsl:value-of select="/CheckoutAddress/CompanyTaxCodeText"></xsl:value-of>
            </label>
          </div>
          <div class="input">
            <input type="text" name="Invoice_CompanyTaxCode">
              <xsl:attribute name="value">
                <xsl:value-of select="/CheckoutAddress/CompanyTaxCode"></xsl:value-of>
              </xsl:attribute>
            </input>
          </div>
        </div>
        <div class="form-group">
          <div class="label">
            <label>
              <xsl:value-of select="/CheckoutAddress/CompanyNameText"></xsl:value-of>
            </label>
          </div>
          <div class="input">
            <input type="text" name="Invoice_CompanyName">
              <xsl:attribute name="value">
                <xsl:value-of select="/CheckoutAddress/CompanyName"></xsl:value-of>
              </xsl:attribute>
            </input>
          </div>
        </div>
        <div class="form-group">
          <div class="label">
            <label for="">
              <xsl:value-of select="/CheckoutAddress/CompanyAddressText"></xsl:value-of>
            </label>
          </div>
          <div class="input">
            <input type="text" name="Invoice_CompanyAddress">
              <xsl:attribute name="value">
                <xsl:value-of select="/CheckoutAddress/CompanyAddress"></xsl:value-of>
              </xsl:attribute>
            </input>
          </div>
        </div>
        <div class="des">Lưu ý: Giá trị hóa đơn không bao gồm giá trị giảm giá</div>
      </section>
    </div>
    
    <section class="cart-button clearfix">
      <a href="/shop/cart" class="btn-back">
        <xsl:text>Quay lại</xsl:text>
      </a>
      <button id="checkout" name="checkout" class="btn-continue">
        <xsl:attribute name="onclick">
          <xsl:text>AjaxCheckout.saveorder(false, '</xsl:text>
          <xsl:value-of select="/CheckoutAddress/NextPageUrl"></xsl:value-of>
          <xsl:text>');return false;</xsl:text>
        </xsl:attribute>
		<xsl:attribute name="data-siteid">
              <xsl:value-of select="/CheckoutAddress/SiteID"></xsl:value-of>
        </xsl:attribute>
        <xsl:text>Tiếp tục</xsl:text>
      </button>
    </section>
  </xsl:template>

  <xsl:template match="Ward">
    <xsl:if test="Title!=''">
      <option>
        <xsl:if test="IsActive='true'">
          <xsl:attribute name="selected">
            <xsl:text>selected</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="value">
          <xsl:value-of select="Guid"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title"></xsl:value-of>
      </option>
    </xsl:if>
  </xsl:template>
  <xsl:template match="Provinces">
    <option>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="selected">
          <xsl:text>selected</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="value">
        <xsl:value-of select="Guid"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </option>
  </xsl:template>
  <xsl:template match="Provinces" mode="Shipping">
    <option>
      <xsl:if test="ShippingIsActive='true'">
        <xsl:attribute name="selected">
          <xsl:text>selected</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="value">
        <xsl:value-of select="Guid"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </option>
  </xsl:template>

  <xsl:template match="Districts">
    <option>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="selected">
          <xsl:text>selected</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="value">
        <xsl:value-of select="Guid"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </option>
  </xsl:template>
  <xsl:template match="Districts" mode="Shipping">
    <option>
      <xsl:if test="ShippingIsActive='true'">
        <xsl:attribute name="selected">
          <xsl:text>selected</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="value">
        <xsl:value-of select="Guid"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </option>
  </xsl:template>

</xsl:stylesheet>