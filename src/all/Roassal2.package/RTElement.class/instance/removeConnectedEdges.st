initialization
removeConnectedEdges
	"Remove all the edges connected (incoming and outgoing)."
	self connectedEdges copy do: [ :edge | edge remove ]