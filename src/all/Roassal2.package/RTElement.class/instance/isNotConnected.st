testing
isNotConnected
	"Return false if the element is connected to at least one element (which would be itself)"
	"An element is connected if it has at least one incoming or outgoing edge"
	^ self isConnected not