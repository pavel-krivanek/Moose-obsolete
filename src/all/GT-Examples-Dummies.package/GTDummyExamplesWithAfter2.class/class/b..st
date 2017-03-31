as yet unclassified
b: c
	<gtExample>
	<dependsOn: #c>
	<after: #afterB:>
	" START -> C B -> afterB -> afterC -> END "
	
	self assert: (self gtExampleContext includesKey: #c).
	
	self gtExampleContext at: #b put: #b.
	self assert: ((self gtExampleContext at: #b) = #b).
	
	^ #b2