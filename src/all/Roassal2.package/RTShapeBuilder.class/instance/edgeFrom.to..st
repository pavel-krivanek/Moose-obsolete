public - building
edgeFrom: element1 to: element2
	"Return a new edge that goes from element1 to element2"
	self hasSetLineShape ifFalse: [ self line ].
	^ shape edgeFrom: element1 to: element2