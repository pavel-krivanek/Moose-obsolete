actions
displayContextFrameInsideTheContextBox
	| contentMorph groupBox |
	contentMorph := contextFrame dialogWindow contentMorph .
	groupBox := self contents submorphs first.
	
	groupBox addContentMorph: contentMorph .
	self wizardPane buildDialogWindow .
	"groupBox addContentMorph: (self newRowWith:{ self newReduceContextButton} )"