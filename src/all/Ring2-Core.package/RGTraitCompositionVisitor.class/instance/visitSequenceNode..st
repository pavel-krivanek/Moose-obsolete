visiting
visitSequenceNode: aSequenceNode 

	^ aSequenceNode statements collect: [:each | self visitNode: each].