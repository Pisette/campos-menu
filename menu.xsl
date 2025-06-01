<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
      <body style="font-family:Arial; font-size:12pt; background-color:#EEEEEE">

        <h2 style="color:darkblue;">All Breakfast Items </h2>
        <xsl:apply-templates select="breakfast_menu/food"/>
        
        <h2 style="color:darkgreen;">Foods Priced Over $5.00</h2>
       <xsl:apply-templates select="breakfast_menu/food[number(translate(price, '$', '')) &gt; 5.00]"/>

        <h2 style="color:darkred;">Foods with 700 Calories or Less</h2>
        <xsl:apply-templates select="breakfast_menu/food[calories &lt;= 700]"/>
        

      </body>
    </html>
    
   <xsl:template match="food">
    <div style="background-color:teal; color:white; padding:4px; margin-top:10px">
      <span style="font-weight:bold">
        <xsl:value-of select="name"/> -
      </span>
      <xsl:value-of select="price"/>
    </div>

    <div style="background-color:#D8D8D8; color:black; padding:10px; margin-bottom:1em; width:100%; box-sizing:border-box;">
          <p style="margin: 0;">
        <xsl:value-of select="description"/>
        <span style="font-style:italic">
          (<xsl:value-of select="calories"/> calories per serving)
        </span>
      </p>
    </div>
  </xsl:template>



</xsl:stylesheet>
