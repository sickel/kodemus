<?xml version='1.0'?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>
  <xsl:param name="generate.toc">nop</xsl:param>
  <xsl:param name="double.sided">true</xsl:param>

  <!-- Fix bugs in default nb locale with some processors -->
  <xsl:template name="gentext.startquote">
    <xsl:text>«</xsl:text>
  </xsl:template>
  <xsl:template name="gentext.endquote">
    <xsl:text>»</xsl:text>
  </xsl:template>
  <xsl:template name="gentext.nestedstartquote">
    <xsl:text>‘</xsl:text>
  </xsl:template>
  <xsl:template name="gentext.nestedendquote">
    <xsl:text>’</xsl:text>
  </xsl:template>
</xsl:stylesheet> 
