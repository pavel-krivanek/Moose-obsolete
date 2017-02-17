grammar
document
	"[1]   	document	   ::=   	 prolog element Misc*"
	"[22]   	prolog	   ::=   	 XMLDecl? Misc* (doctypedecl Misc*)?"

	^ processing optional , misc , doctype optional , misc , element , misc
		==> [ :nodes | Array with: nodes first with: nodes third with: nodes fifth ]