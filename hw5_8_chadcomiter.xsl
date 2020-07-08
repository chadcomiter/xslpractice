<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
 
    <xsl:output method="html" indent="yes"></xsl:output>
    
    <xsl:template match="/ReviewApplication">
        
        <html><head><title>CountOfReviews</title></head><body>
        <table border="1">
            <tr>
                <th>RestaurantID</th>
                <th>Username</th>
                <th>Rating</th>
            </tr>
            <xsl:for-each select="/ReviewApplication/Reviews/Review[RestaurantId='restaurantid1']">
                <xsl:variable name="id" select="RestaurantId"></xsl:variable>
                <xsl:variable name="user" select="UserName"></xsl:variable>
                <xsl:variable name="rating" select="Rating"></xsl:variable>
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
                </tr>
            </xsl:for-each>
        </table>
        </body></html>
    </xsl:template>
</xsl:stylesheet>
