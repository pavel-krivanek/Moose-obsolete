printing
canonicallyPrinted
 	"Prints as canonical XML (http://www.w3.org/TR/xml-c14n)"

	^ String streamContents: [:stream | self canonicallyPrintOn: stream]