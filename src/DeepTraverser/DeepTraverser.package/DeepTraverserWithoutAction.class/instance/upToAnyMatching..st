streaming
upToAnyMatching: aBlock
	| newArray |
	newArray := OrderedCollection new.
	[ self hasNext and: [ (aBlock value: self next) not ] ] whileTrue: [ 
		newArray add: current ].
	^ newArray