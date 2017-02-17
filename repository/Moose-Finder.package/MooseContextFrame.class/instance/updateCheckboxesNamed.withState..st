utilities
updateCheckboxesNamed: aCollectionOfLabels withState: aStateSelector

	checkboxes do: 
				[ :each | (aCollectionOfLabels includes: each label asSymbol) ifTrue: [ each buttonMorph state: aStateSelector  ] ].