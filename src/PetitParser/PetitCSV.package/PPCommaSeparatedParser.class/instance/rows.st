as yet unclassified
rows
	^ (row delimitedBy: endOfLine)  ==> [ :nodes | nodes reject: [ :each | each class = PPToken ] ]