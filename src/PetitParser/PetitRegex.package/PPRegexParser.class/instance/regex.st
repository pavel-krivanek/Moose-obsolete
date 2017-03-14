grammar
regex
	^ ((branch separatedBy: $| asParser) foldLeft: [ :a :op :b | a // b ])
	/ (PPEpsilonParser new ==> [ :r | PPEpsilonParser new ])