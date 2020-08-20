<?xml version='1.0'?>


<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
>
<xsl:output method="text"/>


<!-- <xsl:template match="@*|node()">
  <xsl:apply-templates select="@*|node()"/>
</xsl:template> -->
<xsl:template match="/">
<xsl:for-each select="//@permid">
  <xsl:value-of select="."/>
  <xsl:text>,</xsl:text>
</xsl:for-each>
</xsl:template>

<!-- <xsl:template match="node()">
  <xsl:value-of select="@permid"/>
  <xsl:text>, </xsl:text>
  <xsl:apply-templates select="/@permid|node()"/>
</xsl:template> -->

<!-- <xsl:output method="text" /> -->

<!-- <xsl:template match="/">
  <out>
    <xsl:for-each-group select="//@permid">
      <xsl:if test="count(current-group()) > 1">
        <duplicate id="{current-grouping-key()}" count="{count(current-group())"/>
      </xsl:if>
    </xsl:for-each-group>
  </out>
</xsl:template> -->

</xsl:stylesheet>