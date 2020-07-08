<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
 
    <xsl:output method="html" indent="yes"></xsl:output>
    
    <xsl:template match="/ReviewApplication">
        
        <html><head><title>CompanyRestaurants</title></head><body>
        <table border="1">
            <tr>
                <th>Company</th>
                <th>Restaurants</th>
            </tr>
            <xsl:for-each select="Companys/Company">
                <xsl:variable name="company" select="CompanyName"></xsl:variable>
                <xsl:variable name="restaurants" 
                    select="/ReviewApplication/Companys/Company[CompanyName/text()=$company]/Restaurants"></xsl:variable>
                <tr>
                    <td>
                        <xsl:value-of select="$company/text()"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="$restaurants/Restaurant/Name/text()"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
        </body></html>
    </xsl:template>
</xsl:stylesheet>
