grammar
attribute
	"[41] 	Attribute	   ::=   	 Name Eq AttValue"

	^ qualified , whitespace optional , $= asParser , whitespace optional , attributeValue
		==> [ :nodes | Array with: nodes first with: nodes fifth ]