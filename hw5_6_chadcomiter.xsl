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
                <th>UserName</th>
                <th>Recommendations</th>
            </tr>
                <xsl:variable name="user" select="/ReviewApplication/Users/User[UserName='username5']/UserName"></xsl:variable>
                <xsl:variable name="recs" 
                    select="/ReviewApplication/Recommendations/Recommendation[UserName/text()=$user]"></xsl:variable>
                <tr>
                    <td>
                        <xsl:value-of select="$user/text()"></xsl:value-of>
                    </td>
                     <td>
                        <xsl:value-of select="count($recs)"></xsl:value-of>
                    </td>
                </tr>
        </table>
        </body></html>
    </xsl:template>
</xsl:stylesheet>
