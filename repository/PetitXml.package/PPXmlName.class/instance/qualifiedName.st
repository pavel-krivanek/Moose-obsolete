accessing
qualifiedName
	"Answer the qualified name fo the receiver."
	
	| stream |
	stream := WriteStream on: (String new: 20).
	self printXmlOn: stream.
	^ stream contents