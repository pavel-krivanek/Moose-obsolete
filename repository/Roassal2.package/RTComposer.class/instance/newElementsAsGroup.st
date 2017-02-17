accessing
newElementsAsGroup
	| es |
	es := view elements select: [ :e | e hasNotAttribute: #AlreadyGrouped ].
	es do: [ :e | e attributeAt: #AlreadyGrouped put: true ].
	^ es 
"	^ RTGroup withAll: (view elements copyWithoutAll: self allGroupedElements)"