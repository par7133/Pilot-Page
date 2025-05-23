<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		version="1.0"> 

<xsl:output method="html" version="4"/>

<!-- File name: index.xsl 

 Copyright 2021, 2024 5 Mode
 
 This file is part of Pilot Page.
 
 Pilot Page is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 Pilot Page is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 GNU General Public License for more details.  
 
 You should have received a copy of the GNU General Public License
 along with Pilot Page. If not, see <https://www.gnu.org/licenses/>.

 index.xsl
  
 Pilot Page stylesheet.
 
 @author Daniele Bonini <my25mb@aol.com>
 @copyrights (c) 2021, 2024, 5 Mode     

-->

	<xsl:template match="CONTENT">

	  <HTML>
	  <HEAD>

      <TITLE>My locations with desc and contact, ..</TITLE>
	  
	  	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
		  <meta name="description" content="Welcome to my pilot page!"/>
	  
	    <link rel="shortcut icon" href="/res/favicon.ico"/>
	  	
      <link href="/css/style.css" type="text/css" rel="stylesheet"></link>
      
      <script src="/js/jquery-3.6.0.min.js" type="text/javascript"></script>
      
	  	<script>
	  	<![CDATA[

      ]]>
		  </script>

	  </HEAD>
	  
	  <BODY style="background-color:#FFFFFF">

    <div id="HCsplash" style="padding-top: 160px; text-align:center;color:#ffffff;display:none;">
       <div id="myh1"><H1>Pilot Page</H1></div><br/>
       <img src="/res/logo.png" style="width:310px;"/>
    </div>

		<div id="content" style="max-height:350px;display:none;" align="center">

    <div class="header">
      <a id="burger-menu" href="#" style="display:none;"><img src="/res/burger-menu2.png" style="width:58px;"/></a><a id="ahome" href="/" target="_blank" style="color:black; text-decoration: none;"><img id="logo-secc" src="/res/logo.png" style="width:48px;vertical-align:middle;"/>&#8201; Pilot Page</a>&#8201; &#8201; &#8201; &#8201; &#8201; &#8201; &#8201;<a id="agithub" href="https://github.com/par7133/Pilot-Page" style="color:#000000"><span style="color:#119fe2">on</span> github</a>&#8201; &#8201; &#8201; &#8201; &#8201; &#8201; <a id="afeedback" href="mailto:code@gaox.io" style="color:#000000"><span style="color:#119fe2">for</span> feedback</a>&#8201; &#8201; &#8201; &#8201; &#8201; <a id="asupport" href="tel:+39-378-0812391" style="font-size:13px;background-color:#15c60b;border:2px solid #15c60b;color:black;height:27px;text-decoration:none;">&#8201; &#8201; get support&#8201; &#8201; </a>
    </div>

		<br/><br/><br/><br/><br/>

		<table border="0" style="width:80%; max-width:630px;">
      
		<xsl:for-each select="LINK[TYPE='location']">
		
			<xsl:sort select="INDEX" data-type="number" order="ascending"/>
            
      <tr>
        <td halign="center" style="max-height:190px; text-align:left; border-bottom: 3px solid transparent;">
          <p align="left" style="border: 1px solid lightgray; border-bottom: 0px solid lightgray; padding:10px; font-size:11px;">
            
            <img>
              <xsl:attribute name="border">0</xsl:attribute> 
              <xsl:attribute name="src"><xsl:value-of select="IMAGE/ADDRESS"/></xsl:attribute>
              <xsl:attribute name="width"><xsl:value-of select="IMAGE/WIDTH"/></xsl:attribute>
              <xsl:attribute name="height"><xsl:value-of select="IMAGE/HEIGHT"/></xsl:attribute>
              <xsl:attribute name="style">float:left;margin:12px;</xsl:attribute> 
            </img>       

            <br/><br/>

            <b>Name:</b>&#8201; &#8201;<i><xsl:value-of select="NAME"/></i><br/>
            
            <b>Title:</b>&#8201; &#8201;<xsl:value-of select="TITLE"/><br/>

            <br/>
            
            <xsl:value-of select="DESC"/>&#8201;
            
            <a>
                <xsl:attribute name="target">_self</xsl:attribute> 
                <xsl:attribute name="href"><xsl:value-of select="URI"/></xsl:attribute>
                Contact
            </a>  

            <br/><br/>

          </p>
        </td>
      </tr>

 		</xsl:for-each>
    
    <tr>
    <td halign="center" style="text-align:center;">      

    <br/><br/>

		<br/><br/>
		
		<SPAN STYLE="font-family: sans-serif; color: #000000; font-size: 9px;">
		<![CDATA[
		 Copyrights  
		]]>
    </SPAN>

    <a>
      <xsl:attribute name="target">_blank</xsl:attribute>
      <xsl:attribute name="style">font-family: sans-serif; color: #000000; font-size: 9px</xsl:attribute> 
      <xsl:attribute name="href">http://5mode.com</xsl:attribute>
      <xsl:attribute name="title">5 Mode</xsl:attribute>
      5 Mode
    </a>

		<SPAN STYLE="font-family: sans-serif; color: #000000; font-size: 9px;">
		<![CDATA[
     2021, 2024 - All rights reserved
		]]>
    </SPAN>
    
    <br/><br/>
    
    	 <a>
	      	<xsl:attribute name="target">_blank</xsl:attribute> 
          <xsl:attribute name="href">http://5mode.com</xsl:attribute>
          <xsl:attribute name="title">5 Mode</xsl:attribute>
          	<img >
		      		<xsl:attribute name="border">0</xsl:attribute> 
		  		    <xsl:attribute name="src">/res/5mode.png</xsl:attribute>
		  	    	<xsl:attribute name="width">80</xsl:attribute>
		  		    <xsl:attribute name="height"></xsl:attribute>
			     </img> 
      </a>
      
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>  
            
		</td>
		</tr>
		</table>

    </div>


		<script>
   	<![CDATA[
      
      function hideTitle() {
        $("#myh1").hide("slow");
      }

      function startApp() {
        $("#HCsplash").hide("slow");
        $(document.body).css("background","#ffffff");
        $("#content").show();
      }			

      window.addEventListener("load", function() {
        $(document.body).css("background","#ffffff");
        $("#HCsplash").css("color","#000000");
        $("#HCsplash").show("slow");	  
        setTimeout("hideTitle()", 2000);
        setTimeout("startApp()", 4000);
      }, true);

      window.addEventListener("load", function() {
        if (window.innerWidth<850) {
          $("p").css("font-size","1.5vw");
        } else {
          $("p").css("font-size","11px");
        }
      }, true);

      window.addEventListener("resize", function() {
        if (window.innerWidth<850) {
          $("p").css("font-size","1.5vw");
        } else {
          $("p").css("font-size","11px");
        }
      }, true);      
                  

    ]]>
		</script>

	  </BODY>
	  </HTML>     	
	
	</xsl:template>

</xsl:stylesheet> 
