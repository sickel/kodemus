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

  <!-- Drop chapter text and number -->
  <xsl:param name="local.l10n.xml" select="document('')"/>
  <l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
    <l:l10n language="nb">
      <l:context name="title-numbered">
        <l:template name="chapter" text="%t"/>
      </l:context>
    </l:l10n>
  </l:i18n>

</xsl:stylesheet>
