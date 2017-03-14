printing
prettyPrinted
 	"Prints XML with whitespace formatting for readability"

	^ String streamContents: [:stream | self prettyPrintOn: stream]