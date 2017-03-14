printing
printContentOn: aStream
 	"Prints the combined content strings of all descendants with space inserted
	when one string has no trailing space and the next has no leading space"

	self printRawContentOn: (XMLNodeContentWriteStreamAdapter on: aStream)