<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
 
    <xsl:output method="html" indent="yes"></xsl:output>
    
    <xsl:template match="/ReviewApplication">
        
        <html><head><title>ReviewWITHRestNameANDUserFirstNameANDRating</title></head><body>
        <table border="1">
            <tr>
                <th>RestaurantName</th>
                <th>UserFirstName</th>
                <th>Rating</th>
            </tr>
            <xsl:for-each select="/ReviewApplication/Reviews/Review">
                <xsl:variable name="id" select="RestaurantId"></xsl:variable>
                <xsl:variable name="restName" 
                    select="/ReviewApplication/Companys/Company/Restaurants/Restaurant[RestaurantId/text()=$id]/Name"></xsl:variable>
                <xsl:variable name="revUser" select="UserName"></xsl:variable>
                <xsl:variable name="firstName" 
                    select="/ReviewApplication/Users/User[UserName/text()=$revUser]/FirstName"></xsl:variable>
                <xsl:variable name="rating" select="Rating"></xsl:variable>
                <tr>
                    <td>
                        <xsl:value-of select="$restName/text()"></xsl:value-of>
                    </td>
                     <td>
                        <xsl:value-of select="$firstName/text()"></xsl:value-of>
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
