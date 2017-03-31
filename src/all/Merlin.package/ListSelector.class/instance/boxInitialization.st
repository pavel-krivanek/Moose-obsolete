morph initialization
boxInitialization
	| morphPackagesList morphSelectionList |
	(morphSelectionList := self newSelectionList).
	(morphPackagesList := self newInitialList).
	self contents:{ self newRowWith: { 
			((self 
					newGroupboxNamed: 'Packages' translated
					With: morphPackagesList)).
			(self newColumnWith: { 
					(self newRowWith: {   }).
					(self newRowWith: {   }).
					(self newRowWith: {   }).
					(self newAddButton).
					(self newRowWith: {   }).
					(self newRemoveButton)
				 }).
			(self newColumnWith: { 
					(self 
						newGroupboxNamed: 'Selection' translated
						With: morphSelectionList)
				 })
		 }}