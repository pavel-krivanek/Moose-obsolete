private
updateTypeAccordingToEntities
	| common wantedType class |
	common := self commonEntitiesClass.
	wantedType := (common name, 'Group') asSymbol.
	self name = wantedType ifTrue: [ ^ self ].
	class := MooseAbstractGroup allSubclasses 
		detect: [ :each | each name == wantedType ]
		ifNone: [ ^ self changeTypeToDefaultType ].
	self changeTypeTo: class