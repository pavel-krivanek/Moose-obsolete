utils
separateDecorated: lines decorations: decorations
	|decorated temp |
	decorated := OrderedCollection new.
	decorations do: [ :d | 
		temp := (self getCorrespondingLine: d from: lines).
		decorated add: temp.
		].
	^decorated