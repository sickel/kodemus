<?xml version='1.0'?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'
                xmlns:fo="http://www.w3.org/1999/XSL/Format" >
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>
  <xsl:template match="processing-instruction('linebreak')">
    <fo:block/>
  </xsl:template>

  <xsl:template match="processing-instruction('newscene')">
    <fo:block text-align="center">
      <fo:leader leader-pattern="rule" rule-thickness="0.5pt"/>
    </fo:block>
  </xsl:template>

  <xsl:include href="user_param.xsl" />
  <xsl:param name="paper.type">A4</xsl:param>
  <xsl:param name="fop1.extensions">1</xsl:param>
</xsl:stylesheet> 
