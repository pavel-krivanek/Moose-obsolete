morph - creation context frame
addVerticalSeparatorAtTheMiddleOf: aCollection

	|  index result result1 result2 |
	index := aCollection size / 2.
	result := OrderedCollection new.
	result1 := OrderedCollection new.
	result2 := OrderedCollection new.
	1 to: (index ) do: [:i | result1 add: (aCollection at: i)].
	
	(index + 1) to: aCollection size do: [:i | result2 add: (aCollection at: i)].
	result add: (dialogWindow newColumn: result1 ); add: (dialogWindow  newVerticalSeparator) ; add: (dialogWindow newColumn: result2 ). 
	^ result.