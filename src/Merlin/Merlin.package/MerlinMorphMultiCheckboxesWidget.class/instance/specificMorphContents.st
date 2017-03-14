accessing - morph contents
specificMorphContents

	|tmpMorphs|
	"self setActionToCheckboxes."
	tmpMorphs := self addVerticalSeparatorAtTheMiddleOf: self allCheckboxes.
	^ self newRowWith: tmpMorphs        