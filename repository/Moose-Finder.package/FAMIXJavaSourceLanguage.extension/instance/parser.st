*moose-finder
parser
	^ self privateState attributeAt: #parser ifAbsentPut: [PPJavaLexicon new]