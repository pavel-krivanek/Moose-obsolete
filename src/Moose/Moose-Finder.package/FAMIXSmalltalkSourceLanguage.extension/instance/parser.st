*moose-finder
parser
	^ self privateState attributeAt: #parser ifAbsentPut: [PPSmalltalkGrammar new]