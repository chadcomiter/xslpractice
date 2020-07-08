<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
 
    <xsl:output method="html" indent="yes"></xsl:output>
    
    <xsl:template match="/ReviewApplication">
        
        <html><head><title>CountOfRecs</title></head><body>
        <table border="1">
            <tr>
                <th>RestaurantID</th>
                <th>UserName</th>
                <th>Rating</th>
                <th>RecCount</th>
            </tr>
            <xsl:for-each select="/ReviewApplication/Reviews/Review">
                <xsl:variable name="user" select="UserName"></xsl:variable>
                <xsl:variable name="id" select="RestaurantId"></xsl:variable>
                <xsl:variable name="rating" select="Rating"></xsl:variable>
                <xsl:variable name="countrecs" 
                    select="/ReviewApplication/Recommendations/Recommendation[UserName/text()=$user and RestaurantId/text()=$id]"></xsl:variable>
                <tr>
                    <td>
                        <xsl:value-of select="$id/text()"></xsl:value-of>
                    </td>
                     <td>
                        <xsl:value-of select="$user/text()"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="$rating/text()"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="count($countrecs)"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
        </body></html>
    </xsl:template>
</xsl:stylesheet>
