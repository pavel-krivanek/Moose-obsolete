accessing
source: anActivityNode
	"The ActivityNode from which tokens are taken when they traverse the ActivityEdge."
	source := OPUMLToOneLink
		on: self identity
		update: #outgoings
		from: source
		to: anActivityNode