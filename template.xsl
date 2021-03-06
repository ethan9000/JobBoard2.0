<!-- as of right now this will not run. see line 6/7 -->

<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<!-- 
    rss feed might need to be put here, didnt want to commit that to github. also, i tried it and it didnt appear to work,
    i'm thinking we might need to translate from the rss feed to XML and then feed it into this, and then feed this into the 
    js that is on the w3 schools website
-->

<xsl:template match="/">
  <a><h3>Title</h3></a>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Job Title</th>
      <th style="text-align:left">Description</th>
      <th style="text-align:left">Link</th>
    </tr>
<!-- 
    should loop through each <item> tag which is each posting and pull the <title>, <description> and <link> tags. 
    there is no separate tag for the expiration date, it's part of the description. im not sure how we can pull the link
    to be a part of the title of each item but that is something i can figure out if we can get this basic code to work.
-->
    <xsl:for-each select="rss/channel/item">
    <tr>
      <td><xsl:value-of select="title" /></td>
      <td><xsl:value-of select="description" /></td>
      <td><xsl:value-of select="link" /></td>
    </tr>
    </xsl:for-each>
  </table>
</xsl:template>

</xsl:stylesheet>