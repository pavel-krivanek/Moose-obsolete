as yet unclassified
setUp
	super setUp.
	
	graph := Dictionary new.
	graph at: 0 put: { 4. 1 }.
	graph at: 1 put: { 2 }.
	graph at: 2 put: { 3 }.
	graph at: 3 put: { 4. }.
	graph at: 4 put: { 5 }.