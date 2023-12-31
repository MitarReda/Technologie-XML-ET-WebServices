<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>Releve</head>
        </html>
        <body>
            <xsl:for-each select="releve">
                <ul>
                    <li>RIB : <xsl:value-of select="@RIB" /></li>
                    <li>Date Releve : <xsl:value-of select="dateReleve"/></li>
                    <li>Solde : <xsl:value-of select="solde"/></li>
                </ul>
                <xsl:for-each select="operations">
                    <ul>
                        <li>Date debut: <xsl:value-of select="@dateDebut"/></li>
                        <li>Date Fin: <xsl:value-of select="@dateFin"/></li>
                    </ul>
                    
                    <table border="1" width="90%">
                        <thead>
                            <tr>
                                <th>type</th>
                                <th>date</th>
                                <th>montant</th>
                                <th>description</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <xsl:for-each select="operation[@type='CREDIT']">
                                <tr>
                                    <td><xsl:value-of select="@type"/></td>
                                    <td><xsl:value-of select="@date"/></td>
                                    <td><xsl:value-of select="@montant"/></td>
                                    <td><xsl:value-of select="@description"/></td>
                                </tr>
                            </xsl:for-each>
                            
                        </tbody>
                    </table>
                </xsl:for-each>
            </xsl:for-each>
        </body>
    </xsl:template>
</xsl:stylesheet>