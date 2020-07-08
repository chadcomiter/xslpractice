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
                <th>UserName</th>
                <th>Count</th>
            </tr>
            <xsl:for-each select="/ReviewApplication/Users/User">
                <xsl:variable name="user" select="UserName"></xsl:variable>
                <xsl:variable name="reviews" select="/ReviewApplication/Reviews/Review[UserName/text()=$user]"></xsl:variable>
                <tr>
                    <td>
                        <xsl:value-of select="$user/text()"></xsl:value-of>
                    </td>
                     <td>
                        <xsl:value-of select="count($reviews)"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
        </body></html>
    </xsl:template>
</xsl:stylesheet>
