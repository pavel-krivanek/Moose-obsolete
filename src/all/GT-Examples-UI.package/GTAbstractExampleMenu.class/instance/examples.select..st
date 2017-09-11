utils
examples: examplesBlock select: selectionBlock
	| examples |
	examples := examplesBlock value select: [ :example | 
		example isGTExample and: [ selectionBlock value: example ] ].
	examples
		ifNotEmpty: [ (GTExampleGroup new examples: examples) inspect ]
		ifEmpty: [ self notifyNoExamples ]