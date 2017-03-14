morph - creation context frame
newContextCheckBoxes: dialog
	"return a collection of checkboxes representing the different contexts that can be imported"
	| result |
	checkboxes := OrderedCollection new.
	result :=  (self allContexts asSortedCollection: [:a :b | a < b]) collect: 
		[ :each | checkboxes add: (dialog 
				newCheckboxFor: (ValueHolder new contents: (contextSelected  includes: each))
				getSelected: #contents
				setSelected: #contents:
				label: each asString
				help: '') ].
	self setActionToCheckboxes.
	^ result. 