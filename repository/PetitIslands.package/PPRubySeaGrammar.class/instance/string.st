grammar
string
	| doubleQuotes singleQuotes slash doubleString singleString regexp |
	doubleQuotes := $" asParser.
	singleQuotes := $' asParser.
	slash := $/ asParser.
	
	doubleString := (doubleQuotes , 
		(($\ asParser , doubleQuotes) / #any asParser starLazy: doubleQuotes) , 
		doubleQuotes) flatten.
		
	singleString := (singleQuotes , 
		(($\ asParser , singleQuotes) / #any asParser starLazy: singleQuotes) , 
		singleQuotes) flatten.
		
	regexp := (slash ,
	  (('\\' asParser) / ($\ asParser , slash) / #any asParser starLazy: slash) ,
	  slash) flatten.
		
	^ (doubleString / singleString / regexp) ==> [ :nodes | #() ]