accessing
document
	"Answer the document that contains this node, or nil if this node is not currently part of a document."
	
	^ parent isNil ifFalse: [ parent document ]