statements-elements
literalValue
	"http://www.sqlite.org/syntaxdiagrams.html#literal-value"
	"It is really important the order how those elements because most of them are prefix for someone else "
	^
	null / 
	currentTimestamp / 
	currentDate / 
	currentTime / 
	$? asPParser trim / 
	($' asPParser trim , $' asPParser trim ) /
	($' asPParser trim optional , (timestamp / date / floatingPointLiteral /  integerLiteral / complexIdentifier / blobLiteral) , $' asPParser trim optional ) "/
	complexIdentifier"
