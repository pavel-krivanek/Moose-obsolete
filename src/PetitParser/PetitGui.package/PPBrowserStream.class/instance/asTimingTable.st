converting
asTimingTable
	| bag total result |
	bag := Bag new.
	1 to: stamps size - 1 do: [ :index |
		bag
			add: (parsers at: index) 
			withOccurrences: (stamps at: index + 1) - (stamps at: index) ].
	total := stamps last - stamps first.
	result := OrderedCollection new.
	bag sortedCounts
		do: [ :each | result addLast: (Array with: each value with: each key with: total * each key) ].
	^ result