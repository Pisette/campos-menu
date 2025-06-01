<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
      <body style="font-family:Arial; font-size:12pt; background-color:#EEEEEE">

        <h2 style="color:darkblue;">All Breakfast Items meow</h2>
        <xsl:apply-templates select="breakfast_menu/food"/>
        
        <h2 style="color:darkgreen;">Foods Priced Over $5.00</h2>
       <xsl:apply-templates select="breakfast_menu/food[number(translate(price, '$', '')) &gt; 5.00]"/>

        <h2 style="color:darkred;">Foods with 700 Calories or Less</h2>
        <xsl:apply-templates select="breakfast_menu/food[calories &lt;= 700]"/>
        

      </body>
    </html>
  </xsl:template>

  <xsl:template match="food">
  <div style="background-color:gray; color:black; padding:10px; margin-top:10px; margin-bottom:10px; width:100%; box-sizing:border-box;">

    <div style="font-weight:bold; font-size:12pt;">
      <xsl:value-of select="name"/> - <xsl:value-of select="price"/>
    </div>

    <div style="font-size:10pt; padding-top:4px;">
      <xsl:value-of select="description"/>
      <br/>
      <span style="font-style:italic;">
        (<xsl:value-of select="calories"/> calories per serving)
      </span>
    </div>

  </div>
</xsl:template>


</xsl:stylesheet>
