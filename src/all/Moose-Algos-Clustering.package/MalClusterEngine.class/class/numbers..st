examples
numbers: aCollection
	"MalClusterEngine numbers: #(1 2 9 0 7 2 4 3)"

	^ (self with: aCollection using: [ :a :b | (a - b) * (a - b) ]) averageLinkage elements