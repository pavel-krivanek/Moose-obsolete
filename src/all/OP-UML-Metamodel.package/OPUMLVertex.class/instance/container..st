accessing
container: aRegion
	"The Region that contains this Vertex."
	container := OPUMLToOneLink
		on: self identity
		update: #subvertexs
		from: container
		to: aRegion