<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
       <h2 align="center">BOOK STORE</h2>
        <table border="2" align="center">
          <tr bgcolor="grey">
            <th>Book Name</th>
            <th>Author Name</th>
            <th>Price</th>
            <th>ISBN</th>
            <th>Pages</th>
          </tr>
          <xsl:apply-templates select="bookstore/book"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="book">
    <tr>
      <td bgcolor="orange"><xsl:value-of select="bookname"/></td>
      <td bgcolor="skyblue"><xsl:value-of select="bookauthor"/></td>
      <td bgcolor="lightblue"><xsl:value-of select="bookprice"/></td>
      <td bgcolor="yellow"><xsl:value-of select="ISBN"/></td>
      <td bgcolor="pink"><xsl:value-of select="pages"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
