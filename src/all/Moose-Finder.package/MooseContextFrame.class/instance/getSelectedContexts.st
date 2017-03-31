actions
getSelectedContexts
	"return a collection containing context symbols corresponding to the checkboxes selected"
	| result |
	result := OrderedCollection new.
	checkboxes do: [ :each | each buttonMorph selected ifTrue: [ result add: each label asSymbol ] ].
	^ result