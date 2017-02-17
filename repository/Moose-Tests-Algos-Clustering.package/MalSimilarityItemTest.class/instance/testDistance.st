As yet unclassified
testDistance
	| a b c elements engine clusters |
	a := MalVectorItem with: #a and: #(1 0).
	b := MalVectorItem with: #b and: #(0 1).
	c := MalVectorItem with: #c and: #(0 7).
	elements := Array with: a with: b with: c.
	engine := MalClusterEngine with: elements.
	engine hierarchicalClusteringUsing: #averageLinkage.
	clusters := engine dendrogram breakInto: 2.
	self assert: clusters size equals: 2.
	self assert: (clusters select: [ :each | each size = 1 ]) size equals: 1.
	self assert: (clusters select: [ :each | each size = 2 ]) size equals: 1.
	self assert: ((clusters select: [ :each | each size = 1 ]) first includes: c).
	self assert: ((clusters select: [ :each | each size = 2 ]) first includes: a).
	self assert: ((clusters select: [ :each | each size = 2 ]) first includes: b)