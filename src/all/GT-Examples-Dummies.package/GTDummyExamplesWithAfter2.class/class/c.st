as yet unclassified
c
	<gtExample>
	<after: #afterC:>
	" START -> C -> afterC -> END "
	
	self gtExampleContext at: #c put: #c.
	self assert: ((self gtExampleContext at: #c) = #c).
	
	^ #c2