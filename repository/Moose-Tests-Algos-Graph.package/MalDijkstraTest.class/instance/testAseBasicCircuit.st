tests
testAseBasicCircuit
	"
	self debug: #testAseBasicCircuit 
	"

	MalGraphFixture aseCircuitGraph: dijsktra.
	"self halt."
	self 	assert: 1
			equals: (dijsktra runFrom: $a to: $b).
	dijsktra reset.
	self 	assert: 3
			equals: (dijsktra runFrom: $a to: $e).
	dijsktra reset.
	self 	assert: 2
			equals: (dijsktra runFrom: $c to: $b).
	dijsktra reset.
	self 	assert: 5 
			equals: (dijsktra runFrom: $a to: $h).
	dijsktra reset.
	self 	assert: Float infinity 
			equals: (dijsktra runFrom: $h to: $a).