statements
createView
	"http://www.sqlite.org/syntaxdiagrams.html#create-view-stmt"
	^create , 
		(temp / temporary) optional,  
	view ,  
		ifNotExists optional ,
	complexIdentifier , 
		( $( asPParser trim , whitespace optional , tableColumnsDefinition plus , whitespace optional , $) asPParser trim ) optional ,
	as,
	selectStatement