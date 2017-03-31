grammar
doctype
	"[28]   	doctypedecl	   ::=   	'<!DOCTYPE' S Name (S ExternalID)? S? ('[' intSubset ']' S?)? '>'"

	^ '<!DOCTYPE' asParser , whitespace optional , ($[ asParser negate star , $[ asParser , $] asParser negate star , $] asParser) flatten , whitespace optional , $> asParser ==> #third