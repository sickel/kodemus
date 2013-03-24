<?xml version='1.0'?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'
                xmlns:fo="http://www.w3.org/1999/XSL/Format" >
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>
  <xsl:template match="processing-instruction('linebreak')">
    <fo:block/>
  </xsl:template>

  <xsl:include href="user_param.xsl" />
  <xsl:param name="paper.type">A4</xsl:param>
  <xsl:param name="fop1.extensions">1</xsl:param>

  <!-- from https://lists.oasis-open.org/archives/docbook-apps/200709/msg00055.html -->
  <xsl:template name="section.heading">
    <xsl:param name="level" select="1"/>
    <xsl:param name="marker" select="1"/>
    <xsl:param name="title"/>
    <xsl:param name="marker.title"/>

    <fo:block xsl:use-attribute-sets="section.title.properties">
      <xsl:if test="$marker != 0">
	<fo:marker marker-class-name="section.head.marker">
	  <xsl:copy-of select="$marker.title"/>
	</fo:marker>
      </xsl:if>

      <xsl:choose>
	<xsl:when test="$level=1">
	  <fo:block xsl:use-attribute-sets="section.title.level1.properties">
	    <xsl:if test="self::bridgehead">
	      <xsl:attribute name="text-align">center</xsl:attribute>
	    </xsl:if>
	    <xsl:copy-of select="$title"/>
	  </fo:block>
	</xsl:when>
	<xsl:when test="$level=2">
	  <fo:block xsl:use-attribute-sets="section.title.level2.properties">
	    <xsl:if test="self::bridgehead">
	      <xsl:attribute name="text-align">center</xsl:attribute>
	    </xsl:if>
	    <xsl:copy-of select="$title"/>
	  </fo:block>
	</xsl:when>
	<xsl:when test="$level=3">
	  <fo:block xsl:use-attribute-sets="section.title.level3.properties">
	    <xsl:if test="self::bridgehead">
	      <xsl:attribute name="text-align">center</xsl:attribute>
	    </xsl:if>
	    <xsl:copy-of select="$title"/>
	  </fo:block>
	</xsl:when>
	<xsl:when test="$level=4">
	  <fo:block xsl:use-attribute-sets="section.title.level4.properties">
	    <xsl:if test="self::bridgehead">
	      <xsl:attribute name="text-align">center</xsl:attribute>
	    </xsl:if>
	    <xsl:copy-of select="$title"/>
	  </fo:block>
	</xsl:when>
	<xsl:when test="$level=5">
	  <fo:block xsl:use-attribute-sets="section.title.level5.properties">
	    <xsl:if test="self::bridgehead">
	      <xsl:attribute name="text-align">center</xsl:attribute>
	    </xsl:if>
	    <xsl:copy-of select="$title"/>
	  </fo:block>
	</xsl:when>
	<xsl:otherwise>
	  <fo:block xsl:use-attribute-sets="section.title.level6.properties">
	    <xsl:if test="self::bridgehead">
	      <xsl:attribute name="text-align">center</xsl:attribute>
	    </xsl:if>
	    <xsl:copy-of select="$title"/>
	  </fo:block>
	</xsl:otherwise>
      </xsl:choose>
    </fo:block>
  </xsl:template>
</xsl:stylesheet>
