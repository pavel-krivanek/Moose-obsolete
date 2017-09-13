updating
refreshList
	| search list items|
	search := searchInput text asLowercase.
	items := itemsBlock value.
	list := items isDictionary ifTrue: [ items associations ] ifFalse: [ items ].
	entriesList
		roots: list;
		expandAll