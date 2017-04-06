adding - removing
removeAllEdges
	"Remove all the edges"	 
	edges := OrderedCollection new. 
	self canvas resetLineShapes. 
	self elements do: #removeConnectedEdges
