parsing
endElement: name 
	
	| future element |
	future := stack pop.
	element := future instance.
	elements add: element.
	stack isEmpty not ifTrue: [
		stack top current values add: element ]