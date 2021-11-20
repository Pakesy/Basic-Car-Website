<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" />

<xsl:template match="/">
<html>
         <head> 
         
            <title>Jims Cars</title>      
            <meta charset="UTF-8" />
            <style>
* {
	margin: 0px;
	padding: 0px;
}

body {
	margin: 1cm;
	padding: 0;
	font-family: Verdana;
	color: black;
	display: flex;
	flex-direction: column;
	background-color: white;
	overflow-x: hidden;
}

#logo {
	color: black;
	text-transform: uppercase;
	font-weight: 500;
}

header {
	display: flex;
	flex-direction: row;
	width: 100%;
	justify-content: space-between;
	padding: 40px 10px;
}

nav ul {
	display: inline-flex;
	list-style: none;
	gap: 30px;
}

nav ul li a {
	text-decoration: none;
	color: black;
	padding-left: 10px;
}

nav ul li a:hover {
	color: red;
	font-size: 110%;
}

#cta-button {
	border: 2px solid black;
	border-radius: 25px;
	padding: 0px 10px;
	margin-left: 10px;
}

#cta-button:hover {
	border: 2px solid red;
}

nav a:active {
	color: red;
}

nav a:visited {
	opacity: 0.9;
}

footer {
	color: white;
	background-color: black;
	padding: 50px 50px;
	width: 95%;
	margin: auto;
	display: flex;
	justify-content: space-between;
	flex-direction: row;
	align-items: center;
	text-align: center;
}

footer a {
	color: white;
	text-decoration: none;
	text-decoration: underline;
	font-style: italic;
	padding: 0px 10px;
}

address {
	display: flex;
	flex-direction: row;
	gap: 15px;
}

.footer-links {
	display: flex;
	gap: 15px;
}

#wrapper {
	margin: auto;
	width: 70vw;
	padding: 80px 0px;
}
            </style>
            
          </head>
          <header>
        <span id="logo">Jims Car's</span>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="sports-cars.xml">Sports Cars</a></li>
                <li><a href="electric-cars.xml">Electric Cars</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="collection.html" id="cta-button">Sell Now</a></li>
            </ul>
        </nav>
    </header>
          <body>
          <hr/>
            <h1 style="padding: 20px 0px;"><center>Welcome to Jims Cars</center></h1>
            <hr/>
            <br />
            <br />
            <h1 style="text-align: center; text-transform: capitalize;"><xsl:value-of select="/carlot/car/@type"/> Cars</h1>
            
            <div id='wrapper'>
            <xsl:apply-templates select="carlot/car">
                <xsl:sort select="model" />
            </xsl:apply-templates>
            </div>

            <hr/>
            <footer>
        <figure>  Jims Car Sales 2021 </figure>
        <div class="footer-links">
            <a href="privacy-policy.html">Privacy Policy</a>
            <a href="terms-and-conditions.html">Terms and Conditions</a>
        </div>
        <address>
            <a href="">Conor Pakes</a>
            <a href="mailto:conor.pakes@uon.edu.au">conor.pakes@uon.edu.au</a>
            <a href="">C3361871</a>
        </address>
    </footer>

                    
          </body>
       </html>
</xsl:template>

<xsl:template match="carlot/car">
<div style="padding: 20px 0px; width: 40vw;">
  <xsl:apply-templates select="model" />
            <xsl:apply-templates select="description" />
            <xsl:apply-templates select="cost" />
            <xsl:apply-templates select="make" />
            <xsl:apply-templates select="safetyrating" />
            <xsl:apply-templates select="extras" />
            <xsl:apply-templates select="couponcode" />
            <xsl:apply-templates select="reviews" />
            <xsl:apply-templates select="promopic" />
            <xsl:apply-templates select="promopage" />
            <xsl:apply-templates select="condition" />
            <xsl:apply-templates select="transmission" />
            <xsl:apply-templates select="drivetype" />
            <xsl:apply-templates select="fueltype" />
            </div>
</xsl:template>

<xsl:template match="model">

        <strong>Model:
            <xsl:value-of select="." /> </strong>
        <br />

</xsl:template>

<xsl:template match="description">

        Description:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>

<xsl:template match="cost">

        Cost:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>

<xsl:template match="make">

        Make:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>

<xsl:template match="safetyrating">

        Safety Rating:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>

<xsl:template match="extras">

        Extras:
            <xsl:value-of select="option" /> 
        <br />
        Additional Cost:
        <xsl:value-of select="additionalcost" />
        <br />

</xsl:template>

<xsl:template match="couponcode">

        Coupon Code:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>

<xsl:template match="reviews">

        Reviews:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>

<xsl:template match="promopic">

        Picture:
        <br />
            <img alt="Car Photo" style="width: 400px;">
                        <xsl:attribute name="src">
                            <xsl:value-of select="."/>         
                        </xsl:attribute>            
                    </img>
        <br />

</xsl:template>
<xsl:template match="promopage">

        Promotional Page:
        <a href='{.}' target='_blank'><xsl:value-of select="."/></a>
        <br />

</xsl:template>
<xsl:template match="condition">

        Condition:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>
<xsl:template match="transmission">

        Transmission:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>
<xsl:template match="drivetype">

        Drivetype:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>
<xsl:template match="fueltype">

        Fuel Type:
            <xsl:value-of select="." /> 
        <br />

</xsl:template>
</xsl:stylesheet>