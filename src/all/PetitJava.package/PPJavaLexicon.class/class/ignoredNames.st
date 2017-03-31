accessing
ignoredNames
	"Answer a collection of instance-variables that should not be automatically initialized with productions, but that are used internal to the composite parser."

	| newArray |	
	newArray := Array new: ((self namesToIgnore size) + (super ignoredNames size)).
	newArray
		replaceFrom: 1
		to: self namesToIgnore size
		with: self namesToIgnore.
	newArray
		replaceFrom: (self namesToIgnore size + 1)
		to: newArray size
		with: super ignoredNames.	
	^newArray