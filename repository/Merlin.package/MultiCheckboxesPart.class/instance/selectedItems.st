accessing - wizard mangement
selectedItems

	"return a collection containing symbols corresponding to the checkboxes selected"
	| result |
	result := OrderedCollection new.
	self optionsAndModels keysAndValuesDo:  [ :anOption :aModel | aModel contents ifTrue: [ result add: anOption asSymbol ] ].
	^ result