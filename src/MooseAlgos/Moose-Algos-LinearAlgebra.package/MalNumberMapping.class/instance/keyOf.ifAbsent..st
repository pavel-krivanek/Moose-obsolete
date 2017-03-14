accessing
keyOf: anIndex ifAbsent: exceptionBlock
	"Returns ordinal key of a index.
	that is maps forward from old to new indices."
	
	^[(forth at: anIndex) ifNil: [exceptionBlock value]]
		on: Error
		do: [:ex | exceptionBlock value]