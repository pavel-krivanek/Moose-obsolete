public - nodes
node: anObject
	"Add a new node represengint an object to the view
	
	For example:
	b := RTMondrian new.
	b node: 10.
	b node: 20.
	b open
	"
	^ (self nodes: (Array with: anObject)) first