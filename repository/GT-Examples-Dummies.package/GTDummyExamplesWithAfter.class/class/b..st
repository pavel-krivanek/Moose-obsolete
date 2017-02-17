as yet unclassified
b: c
	<gtExample>
	<dependsOn: #c>
	<after: #afterB>
	" START -> C B -> afterB -> afterC -> END "
	
	self assert: (self gtExampleContext includesKey: #c).
	self assert: (self gtExampleContext includesKey: #c2).
	
	self gtExampleContext at: #b put: #b.
	self gtExampleContext at: #b2 put: #b2.
	
	self assert: ((self gtExampleContext at: #b) = #b).
	self assert: ((self gtExampleContext at: #b2) = #b2).
	
	^ #b2