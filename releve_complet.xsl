<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Relevé Bancaire</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    table { border-collapse: collapse; width: 80%; margin-top: 20px; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>Relevé Bancaire</h2>
                <p><strong>RIB:</strong> <xsl:value-of select="releve/@RIB"/></p>
                <p><strong>Date du relevé:</strong> <xsl:value-of select="releve/dateReleve"/></p>
                <p><strong>Solde:</strong> <xsl:value-of select="releve/solde"/> MAD</p>
                
                <h3>Liste des opérations du <xsl:value-of select="releve/operations/@dateDebut"/> au <xsl:value-of select="releve/operations/@dateFin"/></h3>
                
                <table>
                    <tr>
                        <th>Type</th>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="releve/operations/operation">
                        <tr>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <p><strong>Total des opérations DEBIT:</strong> 
                   <xsl:value-of select="sum(releve/operations/operation[@type='DEBIT']/@montant)"/> MAD
                </p>
                <p><strong>Total des opérations CREDIT:</strong> 
                   <xsl:value-of select="sum(releve/operations/operation[@type='CREDIT']/@montant)"/> MAD
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>