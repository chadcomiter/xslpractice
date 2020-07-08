<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
 
    <xsl:output method="html" indent="yes"></xsl:output>
    
    <xsl:template match="/ReviewApplication">
        
        <html><head><title>RestaurantIDName</title></head><body>
        <table border="1">
            <tr>
                <th>RestaurantID</th>
                <th>Name</th>
            </tr>
            <xsl:for-each select="Companys/Company/Restaurants/Restaurant">
                <xsl:variable name="restaurantid" select="RestaurantId"></xsl:variable>
                <tr>
                    <td>
                        <xsl:value-of select="$restaurantid/text()"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="/ReviewApplication/Companys/Company/Restaurants/Restaurant[RestaurantId/text()=$restaurantid]/Name"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
        </body></html>
    </xsl:template>
</xsl:stylesheet>
