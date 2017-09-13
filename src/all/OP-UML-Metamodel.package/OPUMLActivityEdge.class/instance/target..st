accessing
target: anActivityNode
	"The ActivityNode to which tokens are put when they traverse the ActivityEdge."
	target := OPUMLToOneLink
		on: self identity
		update: #incomings
		from: target
		to: anActivityNode