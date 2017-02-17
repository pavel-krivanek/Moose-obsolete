as yet unclassified
a: b
	<gtExample>
	<dependsOn: #b:>
	<after: #afterA:>
	" START -> C B A -> afterA -> afterB -> afterC -> END "
	
	self assert: (self gtExampleContext includesKey: #c).
	self assert: (self gtExampleContext includesKey: #b).
	
	self gtExampleContext at: #a put: #a.
	self assert: (self gtExampleContext includesKey: #a).
	
	^ #a2