grammar
branch
	^ (piece plus foldLeft: [ :a :b | a , b ])
	/ (PPEpsilonParser new ==> [ :r | PPEpsilonParser new ])