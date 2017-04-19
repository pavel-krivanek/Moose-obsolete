printing
printContentOn: aStream
 	"Prints on aStream the combined content strings of all descendants with
	space inserted when one string has no trailing space and the next has
	no leading space.

	See also #printRawContentOn:"

	self printRawContentOn: (XMLNodeContentWriteStreamAdapter on: aStream)