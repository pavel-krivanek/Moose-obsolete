testing
returnsPureObject
	| root |
	"self hasReturnValue ifFalse: [ ^ false ].
	(self return isKindOf: Alias) ifFalse: [ ^ false ].
	root := self return rootAlias.
	root isNil ifTrue: [ ^ false ]."
	^ self withAllChildren includes: root creator