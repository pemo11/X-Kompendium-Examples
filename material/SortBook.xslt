<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
    <xsl:element name="books">
        <xsl:apply-templates select="books" />
    </xsl:element>
</xsl:template>

<xsl:template match="books">
    <xsl:for-each select="book">
        <xsl:sort select="@id" data-type="number"/>
        <xsl:copy-of select="." />
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
