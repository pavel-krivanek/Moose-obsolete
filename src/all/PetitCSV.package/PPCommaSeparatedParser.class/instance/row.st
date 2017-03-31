as yet unclassified
row
	^ (cell delimitedBy: $, asParser token) ==> [ :nodes | nodes reject: [ :each | each class = PPToken ] ]