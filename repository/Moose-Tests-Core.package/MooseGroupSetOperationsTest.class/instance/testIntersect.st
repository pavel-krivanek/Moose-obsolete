testing
testIntersect
	| resultat |
	resultat := group1 intersection: group2.
	self assert: resultat size equals: 2.
	self assert: (resultat entities includes: 4).
	self assert: (resultat entities includes: 5)