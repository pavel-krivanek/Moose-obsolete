streaming
upTo: anObject
	| newArray |
	newArray := OrderedCollection new.
	[ self hasNext and: [ (self next = anObject) not ] ] whileTrue: [ 
		newArray add: current ].
	^ newArray