initialize-release
initialize: aCollectionOfItems
"initialize the initial list with aCollectionOfItems and then fill in the contents of this WizardPart"
	| morphPackagesList morphSelectionList |
	self initialize.
	initialList := aCollectionOfItems.
	initialListSelections := Dictionary new. 
	1 to: initialList size do: [:index | initialListSelections at: index put: false].
	
	
	(morphSelectionList := self newSelectionMultiSelectionList).
	(morphPackagesList := self newInitialMultiSelectionList).
	self populateContents:{ self newRowWith: { 
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