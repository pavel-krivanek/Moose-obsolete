resetting
resetEdges
	"Collection of all relationships in the graph."
	edges := OrderedCollection new. 
	
	"Remove edge reference form nodes."
	self nodes ifNotEmpty: [ 
		self nodes do: [ :n | n resetEdges ].
	].