running
setUp
	super setUp.
	
	graph := Dictionary new.
	graph at: 0 put: { 1 . nil }.
	graph at: nil put: { 2 }