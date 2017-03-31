accessing - wizard mangement
selectedItems

	"return a collection containing symbols corresponding to the checkboxes selected"
	| result |
	result := OrderedCollection new.
	allCheckboxes do: [ :each | each buttonMorph selected ifTrue: [ result add: each label asSymbol ] ].
	^ result