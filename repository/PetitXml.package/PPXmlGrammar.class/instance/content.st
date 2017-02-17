grammar
content
	"[43]   	content	   ::=   	 CharData? ((element | Reference | CDSect | PI | Comment) CharData?)*"
				
	^ (characterData / element / processing / comment) star