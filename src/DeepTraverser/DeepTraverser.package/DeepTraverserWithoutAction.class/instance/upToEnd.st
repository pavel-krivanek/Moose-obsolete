streaming
upToEnd
	| newArray |
	newArray := OrderedCollection new.
	[ self hasNext ] whileTrue: [ 
		newArray add: self next ].
	^ newArray