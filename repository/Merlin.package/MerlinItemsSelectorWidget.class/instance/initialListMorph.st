accessing - morphs
initialListMorph

	"return a new list (PluggableListMorph) that will contain the initial list of items that can be selected by the user"
	^ initialListMorph ifNil: [
		initialListMorph :=  (self newListFor: self list: #initialList  selected: #initialListIndex changeSelected: #initialListIndex: )
		minWidth: 250;
		minHeight: 350; yourself
		]