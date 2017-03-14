statements-elements
typeName
	"http://www.sqlite.org/syntaxdiagrams.html#type-name"
	^columnTypes , (	($( asPParser trim , signedNumber , $, asPParser trim , signedNumber , $) asPParser trim) /
						($( asPParser trim , signedNumber , $) asPParser trim) / 
						($( asPParser trim , signedNumber , ( char / byte ) , $) asPParser trim) / 
						($( asPParser trim , $* asPParser trim , $, asPParser trim , signedNumber , $) asPParser trim)) optional