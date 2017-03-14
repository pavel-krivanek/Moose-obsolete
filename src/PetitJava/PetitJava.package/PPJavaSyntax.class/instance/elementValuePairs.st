grammar
elementValuePairs 

	^ elementValuePair , ((self tokenFor: ',') , elementValuePair ) star