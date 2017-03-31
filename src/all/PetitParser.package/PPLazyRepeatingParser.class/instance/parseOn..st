parsing
parseOn: aPPContext
	| memento element elements |
	memento := aPPContext remember.
	elements := OrderedCollection new.
	[ elements size < min ] whileTrue: [
		(element := parser parseOn: aPPContext) isPetitFailure ifTrue: [
			aPPContext restore: memento.
			^ element ].
		elements addLast: element ].
	[ self matchesLimitOn: aPPContext ] whileFalse: [
		elements size < max ifFalse: [
			aPPContext restore: memento.
			^ PPFailure message: 'overflow' context: aPPContext at: memento position ].
		element := parser parseOn: aPPContext.
		element isPetitFailure ifTrue: [
			aPPContext restore: memento.
			^ element ].
		elements addLast: element ].
	^ elements asArray