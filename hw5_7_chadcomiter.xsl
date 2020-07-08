<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
 
    <xsl:output method="html" indent="yes"></xsl:output>
    
    <xsl:template match="/ReviewApplication">
        
        <html><head><title>RecsPerRestaurant</title></head><body>
        <table border="1">
            <tr>
                <th>RestaurantName</th>
                <th>Recommendations</th>
            </tr>
            <xsl:for-each select="/ReviewApplication/Companys/Company/Restaurants/Restaurant">
                <xsl:variable name="restaurant" select="Name"></xsl:variable>
                <xsl:variable name="id" select="RestaurantId"></xsl:variable>
                <xsl:variable name="recs" 
                    select="/ReviewApplication/Recommendations/Recommendation[RestaurantId/text()=$id]"></xsl:variable>
                <tr>
                    <td>
                        <xsl:value-of select="$restaurant/text()"></xsl:value-of>
                    </td>
                     <td>
                        <xsl:value-of select="count($recs)"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
        </body></html>
    </xsl:template>
</xsl:stylesheet>
