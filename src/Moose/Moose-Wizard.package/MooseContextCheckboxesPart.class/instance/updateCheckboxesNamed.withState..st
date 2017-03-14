private - utilities
updateCheckboxesNamed: aCollectionOfLabels withState: aStateSelector

	allCheckboxes do: 
				[ :each | (aCollectionOfLabels includes: each label asSymbol) ifTrue: [ each buttonMorph state: aStateSelector  ] ].