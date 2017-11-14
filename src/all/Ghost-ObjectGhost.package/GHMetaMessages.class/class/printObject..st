helpers-primitives
printObject: anObject
	"Answer a String whose characters are a description of the receiver."

	| aStream |
	aStream := WriteStream on: (String new: 32).
	self printObject: anObject on: aStream.
	^aStream contents