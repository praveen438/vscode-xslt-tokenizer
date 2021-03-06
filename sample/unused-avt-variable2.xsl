<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    <xsl:output method="xml" indent="yes"/>  
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="/" mode="#all">
        
        <xsl:sequence 
            select="
                let $try := map {
                        'use-first':   function($a, $b, $c) {$a},
                        'use-middle':  function($a, $b, $c) {$b},
                        'use-last':    function($a, $b, $c) {$c},
                        'use-all':     function($a, $b, $c) {$a, $b, $c},
                        'only-one':    function($a) {$a}
                    } 
                return $try"/>
        <xsl:sequence select="let $init1 := 5, $a := function($p1, $in) {$p1, $a} return $aq, $init1"/>
        
        <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                        xmlns:xs="http://www.w3.org/2001/XMLSchema"
                        exclude-result-prefixes="#all"
                        expand-text="yes"
                        version="3.0">
            
            <xsl:output method="xml" indent="yes"/>  
            <xsl:mode on-no-match="shallow-copy"/>
            
            <xsl:template match="/" mode="#all">
                
                <xsl:variable name="v1" select="2"/>
                <xsl:variable name="v1" select = "3"/>
                <xsl:sequence select="$v1"/>
                <xsl:sequence select="
                    let $a := 1,
                        $b := 3 + $b return $bx"/>
            </xsl:template>
            
        </xsl:stylesheet>
    </xsl:template>
    
    
    
</xsl:stylesheet>

