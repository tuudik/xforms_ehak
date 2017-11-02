<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output encoding="UTF-8" indent="yes" method="xml" />
   <xsl:template match="/Claset/Classification">
      <xsl:for-each select="Item">
         <xsl:element name="maakond">
            <xsl:attribute name="kood">
               <xsl:value-of select="@id" />
            </xsl:attribute>
            <xsl:attribute name="nimi">
               <xsl:value-of select="Label/LabelText" />
            </xsl:attribute>
            <xsl:for-each select="Item/Item">
               <xsl:element name="vald">
                  <xsl:attribute name="kood">
                     <xsl:value-of select="@id" />
                  </xsl:attribute>
                  <xsl:attribute name="nimi">
                     <xsl:value-of select="Label/LabelText" />
                  </xsl:attribute>
                  <xsl:if test="not(contains(Item/@id, '.'))">
                     <xsl:for-each select="Item">
                        <xsl:element name="asula">
                           <xsl:attribute name="kood">
                              <xsl:value-of select="@id" />
                           </xsl:attribute>
                           <xsl:attribute name="nimi">
                              <xsl:value-of select="Label/LabelText" />
                           </xsl:attribute>
                        </xsl:element>
                     </xsl:for-each>
                  </xsl:if>
                  <xsl:for-each select="Item/Item">
                        <xsl:element name="asula">
                           <xsl:attribute name="kood">
                              <xsl:value-of select="@id" />
                           </xsl:attribute>
                           <xsl:attribute name="nimi">
                              <xsl:value-of select="Label/LabelText" />
                           </xsl:attribute>
                        </xsl:element>
                     </xsl:for-each>
               </xsl:element>
            </xsl:for-each>
         </xsl:element>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
