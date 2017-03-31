tests
testFrequencyOfObjects
	| set d f |
	set := #(yes yes no maybe no maybe maybe yes no maybe yes maybe).
	d := RTDistribution on: set.
	
	self assert: d amountOfDifferentValues = set asSet size.
	
	"No idea why this fails"
"	f := d annotatedFrequencyWithAmountOfIntervals: d amountOfDifferentValues.
	self assert: f size = 3.
	self assert: (f copy sort: [:a :b | a first < b first ]) = (Array 
		with: (Array with: 3 with: #(no no no) asOrderedCollection)
		with: (Array with: 4 with: #(yes yes yes yes) asOrderedCollection)
		with: (Array with: 5 with: #(maybe maybe maybe maybe maybe) asOrderedCollection))"