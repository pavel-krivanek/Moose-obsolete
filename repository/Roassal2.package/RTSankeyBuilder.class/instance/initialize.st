as yet unclassified
initialize
	super initialize.
	self shape rectangle width: 10.
	self extent: 400@300.
	self nodePadding: 0.
	self linkFrom: #key.
	self linkTo: #value.
	self linkValue: #yourself.