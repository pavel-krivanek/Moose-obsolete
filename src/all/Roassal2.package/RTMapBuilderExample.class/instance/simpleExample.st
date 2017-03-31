as yet unclassified
simpleExample
	<gtExample>
	"self new simpleExample"
	| b |
	b := RTMapBuilder new.	
		
	b countries: #('Chile').
	b color: Color red.
	b scale: 3.
	^ b