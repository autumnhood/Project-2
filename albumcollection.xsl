<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="html"/>
<xsl:template match="/albumcollection">
<html>
	<head>
	<link rel="stylesheet" type="text/css" href="albumcollection.css" />
	<title>Autumn's Album Collection</title>
	</head>
<body>

	<h1>Welcome to my Album Collection!</h1><hr/>
	<div class= "album_collection">
	<h2>Here, you can browse through my collection of 12-inch vinyl records. I like to think that I have something for everyone, as my albums range across multiple genres, from punk to classic rock and from neo-soul to electronic. I have records from each decade between 1962 and today, with the most recent album being one that was released in August of 2014. Please contact me at autumn [dot] hood [at] unt [dot] edu with any questions.</h2>
	<table id="myTable" class="sortable"><script src="sorttable.js"/>
			<tr>

				<th>Artist</th>
				<th>Album Title</th>
				<th>Album Length</th>
				<th>Number of Tracks</th>
				<th>Record Label</th>
				<th>Decade Released</th>
				<th>Year Released</th>
				<th>Month Released</th>
				<th>Day Released</th>
				<th>Album Genre</th>
				<th>Album Condition</th>
				<th>Album Cover</th>
			</tr>
		<xsl:for-each select="album"> <xsl:sort select="artist" order="ascending"/>
	
			<tr>
	
				<td class="narrow"><xsl:value-of select="artist" /></td>
				<td class="medium"><xsl:value-of select="album_title" /></td>
				<td class="narrow"><xsl:value-of select="album_length" /></td>
				<td class="narrow"><xsl:value-of select="number_of_tracks" /></td>
				<td class="narrow"><xsl:value-of select="record_label" /></td>
				<xsl:for-each select="date_released">
					<td class="narrow"><xsl:value-of select="decade_released" /></td>
					<td class="narrow"><xsl:value-of select="year_released" /></td>
					<td class="narrow"><xsl:value-of select="month_released" /></td>
					<td class="narrow"><xsl:value-of select="day_released" /></td>
				</xsl:for-each>
				
				<xsl:for-each select="genres">
					<td class="narrow">
					<ul>
					<xsl:for-each select="album_genre"> 
					<li><xsl:value-of select="." /></li>
					</xsl:for-each>
					</ul>
					</td>
					</xsl:for-each> 
				<td class="narrow"><xsl:value-of select="album_condition" /></td>
				
				<td class="medium"><xsl:element name="img">
				<img src="{album_cover}"></img>
				</xsl:element></td>
				
			</tr>
		</xsl:for-each>	
		</table>	
</div>
</body>
<footer>Come back soon!

<div id="sources">
<ul>
<li><a href="http://courses.christopherylam.com/5191/">XSLT source here</a></li>
<li><a href="http://www.kryogenix.org/code/browser/sorttable/">Sortable script source here</a></li>
<li><a href="http://www.vinylrecords.ch/Vinyl/vin_grading.htm">Guide to record grading here</a></li>
<li><a href="http://www.w3schools.com/">Other coding and markup sources here</a></li><p/>
<li>© Autumn Hood 2014 | University of North Texas</li>
</ul>
</div>

</footer>
</html>

</xsl:template>
</xsl:stylesheet>
