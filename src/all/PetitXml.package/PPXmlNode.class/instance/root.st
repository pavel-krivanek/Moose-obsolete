accessing
root
	"Answer the root of the subtree in which this node is found, whether that's a document or an element."
	
	^ parent isNil 
		ifTrue: [ self ]
		ifFalse: [ parent root ]