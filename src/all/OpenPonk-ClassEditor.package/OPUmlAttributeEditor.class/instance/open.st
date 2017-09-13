opening
open
	self populateFromModel: self model.
	^ self openDialogWithSpec
		okAction: [ self accept ];
		yourself