indentation
aligns__2
	^ ((aligns not, any asParser) optional,
	   (aligns not, any asParser) optional,
	    aligns) and