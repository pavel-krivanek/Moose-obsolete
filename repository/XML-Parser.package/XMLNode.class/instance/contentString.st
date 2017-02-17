accessing
contentString
 	"Returns the combined content strings of all descendants with space inserted
	when one string has no trailing space and the next has no leading space.

	See also #rawContentString."

	^ String streamContents: [:stream | self printContentOn: stream]