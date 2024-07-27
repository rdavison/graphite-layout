<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" doctype-system="xkb.dtd"/>

  <!-- Identity transform: copies everything as is -->
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" />
    </xsl:copy>
  </xsl:template>

  <!-- Match the layout element with the description "English (US)" -->
  <xsl:template match="layout[configItem/name='us' and configItem/description='English (US)']/variantList">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" />
        <xsl:text disable-output-escaping="yes">&#10;</xsl:text>
        <xsl:comment>GRAPHITE BEGIN</xsl:comment>
        <xsl:text disable-output-escaping="yes">&#10;        </xsl:text>
        <variant>
        <xsl:text disable-output-escaping="yes">&#10;          </xsl:text>
          <configItem>
        <xsl:text disable-output-escaping="yes">&#10;            </xsl:text>
            <name>graphite</name>
        <xsl:text disable-output-escaping="yes">&#10;            </xsl:text>
            <description>English (Graphite)</description>
        <xsl:text disable-output-escaping="yes">&#10;          </xsl:text>
          </configItem>
        <xsl:text disable-output-escaping="yes">&#10;        </xsl:text>
        </variant>
        <xsl:text disable-output-escaping="yes">&#10;</xsl:text>
        <xsl:comment>GRAPHITE END</xsl:comment>
        <xsl:text disable-output-escaping="yes">&#10;      </xsl:text>

    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>





