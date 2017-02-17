statements
createTable
	"http://www.sqlite.org/syntaxdiagrams.html#create-table-stmt"
	^create , 
		(temp / temporary) optional,  
	table ,  
		ifNotExists optional ,
	complexIdentifier , 
	( ($( asPParser trim , whitespace optional , tableColumnsDefinition plus , whitespace optional , $) asPParser trim ) | 
	( as , selectStatement ) ) 