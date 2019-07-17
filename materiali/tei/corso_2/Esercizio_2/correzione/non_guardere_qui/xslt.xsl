<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="2.0">
    
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:strip-space elements="*"/>
    
    <!-- Adding basic HTML markup -->
    
    <xsl:template match="/">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <title><xsl:value-of select="//title[parent::titleStmt]"/></title>
                <link rel="stylesheet" href="css.css"></link>
                <meta http-equiv="content-type" content="text/html; charset=UTF-8"></meta>
            </head>
            <body>
                <div class="logo" >
                    <a href="../promessiSposi_corr.xml" target="_blank">
                        <img class="logo_img" src="img/tei.png" alt="logo"/>
                    </a>
                </div>
                <xsl:apply-templates/>
                <div class="footnote">
                    <hr/>
                    <h2>Note</h2>
                    <xsl:for-each select="//note[ancestor::body]">
                        <p>
                            <a>
                                <xsl:attribute name="id">
                                    <xsl:text>note_</xsl:text>
                                    <xsl:value-of select="@n"/>
                                </xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:text>#</xsl:text>
                                    <xsl:value-of select="@n"/>
                                </xsl:attribute>
                                <xsl:value-of select="@n"/>
                            </a>
                            <xsl:text>. </xsl:text>
                            <xsl:apply-templates/>
                        </p>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <!-- General encoding -->
    
    <xsl:template match="title">
        <span class="title">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="date">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="hi[@rend='italic']">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    
    <!-- Encoding of the teiHeader -->
    
    <xsl:template match="teiHeader">
        <div class="header">
            <xsl:apply-templates/>
        </div>
    </xsl:template> 
    
    <xsl:template match="titleStmt">
        <h1>
            <xsl:apply-templates select="author"/>
            <xsl:apply-templates select="title"/>
            <xsl:apply-templates select="editor"/>
        </h1>
    </xsl:template>
    
    <xsl:template match="publicationStmt|sourceDesc">
        <span class="teiHeaderElement">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="author">
        <xsl:apply-templates/>
        <xsl:text>, </xsl:text>
    </xsl:template>
    
    <xsl:template match="editor">
        <xsl:text> (a cura di </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>)</xsl:text>
    </xsl:template>
    
    <xsl:template match="pubPlace">
        <xsl:text>, </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="publisher">
        <xsl:text>: </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="date[parent::bibl]">
        <xsl:text>, </xsl:text>
        <xsl:apply-templates/>
        <xsl:text> </xsl:text>
    </xsl:template>
    
    <xsl:template match="ref">
        <a href="{@target}">
            <xsl:attribute name="target">
                <xsl:text>_blank</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </a>
    </xsl:template>
    
    <!-- Body -->
    
    <xsl:template match="gap">
        <xsl:text>[…]</xsl:text>
    </xsl:template>
    
    <xsl:template match="div[@type='chapter']">
        <div class="chapter">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="head">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="said">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="persName">
        <span class="persName" id="{@xml:id}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="placeName">
        <span class="placeName">
            <xsl:if test="@xml:id">
                <xsl:attribute name="id">
                    <xsl:value-of select="@xml:id"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="date[ancestor::body]">
        <span class="date">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="graphic">
        <span class="illustration">
            <img class="illustration_image" src="{@url}" alt="illustration_image"></img>
        </span>
    </xsl:template>
    
    <xsl:template match="pb">
        <a class="page" target="_blank">
            <xsl:attribute name="href">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <img class="page_image" src="{@facs}" alt="page_image"></img>
        </a>
    </xsl:template>
    
    <!-- <xsl:template match="rs">
        <a href="{@ref}">
            <xsl:apply-templates/>
        </a>
    </xsl:template>
     -->
    
    <xsl:template match="note">
        <sup>
            <a class="note_call" id="{@n}">
                <xsl:attribute name="href">
                    <xsl:text>#note_</xsl:text>
                    <xsl:value-of select="@n"/>
                </xsl:attribute>
                <xsl:value-of select="@n"/>
            </a>
        </sup>
    </xsl:template>
    
    <!-- J'ajoute les notes avec tooltip. -->
    <xsl:template match="rs">
        <xsl:apply-templates/>
        <xsl:text> </xsl:text>
        <xsl:variable name="id">
            <xsl:value-of select="substring-after(@ref, '#')"/>
        </xsl:variable>
        <span class="tooltip">
            <img src="img/icon.png" height="14" alt="icon"/>
            <span class="tooltiptext">
                <xsl:value-of select="//persName[@xml:id=$id]|//placeName[@xml:id=$id]"/>
            </span>
        </span> 
    </xsl:template>
    
</xsl:stylesheet>