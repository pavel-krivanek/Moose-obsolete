accessing - morph contents
specificMorphContents 

	|tmpMorph|
	tmpMorph :=  self fileDialog newContentMorph.
	self setValidExtensions.
	self setDefaultSelectedPath.	
	^ tmpMorph
						      

	