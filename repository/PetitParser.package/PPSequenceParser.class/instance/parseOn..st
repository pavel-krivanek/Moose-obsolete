parsing
parseOn: aPPContext
	"This is optimized code that avoids unnecessary block activations, do not change."
	
	| memento elements element |
	memento := aPPContext remember.
	elements := Array new: parsers size.
	1 to: parsers size do: [ :index |
		element := (parsers at: index) 
			parseOn: aPPContext.
		element isPetitFailure ifTrue: [
			aPPContext restore: memento.
			^ element ].
		elements at: index put: element ].
	^ elements