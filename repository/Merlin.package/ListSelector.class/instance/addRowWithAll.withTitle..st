private - customization
addRowWithAll: collectionOfMorphElements withTitle: aString
	"enable the customization of this PackageSelector. Add a new row under the packages list with all elements contained in collectionOfMorphElements "
	| tmpBuilderMainContent |
	tmpBuilderMainContent := self contents submorphs asOrderedCollection .
	tmpBuilderMainContent add: 
		(self newRowWith: { 
			(self 
				newGroupboxNamed: aString
				WithAll: {  (self newRowWith: collectionOfMorphElements )  }).
			(self newColumnWith: {   }).
			(self newColumnWith: {   })
		}).

	self contents:(  
		tmpBuilderMainContent asArray
	).
