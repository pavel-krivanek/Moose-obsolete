building
variablesIn: a
	^ a table
		selectionAct: [:t | t selection value inspect ] on: $i entitled: 'Inspect';
		selectionAct: [:t | t selection value explore ] on: $I entitled: 'Explore';		
		column: 'Variable' evaluated: [ :each | each key asString ];
		column: 'Value' evaluated: [ :each | each value asString contractTo: 20 ]