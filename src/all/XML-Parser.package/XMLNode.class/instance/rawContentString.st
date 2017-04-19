accessing
rawContentString
 	"Returns the combined content string of all descendants without
	spaces inserted.
	
	See also #contentString"

	^ String streamContents: [:stream | self printRawContentOn: stream]