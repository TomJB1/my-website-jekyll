<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <html>
    <head>
      <title><xsl:value-of select="/rss/channel/title"/> RSS Feed</title>
      <link rel="stylesheet" href="/assets/css/reset.css" />
      <link rel="stylesheet" href="/assets/css/list-pages.css" />
    </head>
    <body>
      <h1><xsl:value-of select="/rss/channel/title"/> RSS feed</h1>
      <p>Copy this url into your feed reader.</p>
      <ul>
      <xsl:for-each select="/rss/channel/item">
        <li>
	  <time><xsl:value-of select="pubDate" /></time> - 
	  <a>
	    <xsl:attribute name="href">
              <xsl:value-of select="link"/>
            </xsl:attribute>
	    <xsl:value-of select="title"/>
	  </a>
	</li>
      </xsl:for-each>
      </ul>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 
