initialization
initializePresenter
	super initializePresenter.
	searchInput whenTextChanged: [ self refreshList ].
	addEntryButton action: [ self openEntryEditor ].
	entriesList
		displayBlock: [ :item | 
			(item isKindOf: Association)
				ifTrue: [ item key name asString ]
				ifFalse: [ item name asString ] ];
		childrenBlock: [ :item | 
			(item isKindOf: Association)
				ifTrue: [ item value
						select: [ :each | 
							(displayNameBlock value: each) asLowercase
								includesSubstring: searchInput text asLowercase ] ]
				ifFalse: [ #() ] ]