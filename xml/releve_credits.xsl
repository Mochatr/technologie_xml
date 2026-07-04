<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Opérations de Crédit</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    table { border-collapse: collapse; width: 80%; margin-top: 20px; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #d4edda; } /* Vert clair pour les crédits */
                </style>
            </head>
            <body>
                <h2>Opérations de Crédit (RIB: <xsl:value-of select="releve/@RIB"/>)</h2>
                
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                        <tr>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>