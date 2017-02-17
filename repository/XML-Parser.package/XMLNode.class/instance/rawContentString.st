accessing
rawContentString
 	"Returns the combined content string of all descendants without
	spaces inserted."

	^ String streamContents: [:stream | self printRawContentOn: stream]