parsing
parseOn: aPPContext
	| memento element elements positions |
	memento := aPPContext remember.
	elements := OrderedCollection new.
	[ elements size < min ] whileTrue: [ 
		(element := parser parseOn: aPPContext) isPetitFailure ifTrue: [ 
			aPPContext restore: memento.
			^ element ].
		elements addLast: element ].
	positions := OrderedCollection with: aPPContext remember.
	[ elements size < max and: [ (element := parser parseOn: aPPContext) isPetitFailure not ] ] whileTrue: [
		elements addLast: element.
		positions addLast: aPPContext remember ].
	[ positions isEmpty ] whileFalse: [
		aPPContext restore: positions last.
		element := limit parseOn: aPPContext.
		element isPetitFailure ifFalse: [
			aPPContext restore: positions last.
			^ elements asArray ].
		elements isEmpty ifTrue: [
			aPPContext restore: memento.
			^ element ].
		elements removeLast.
		positions removeLast ].
	aPPContext restore: memento.
	^ PPFailure message: 'overflow' context: aPPContext at: memento position