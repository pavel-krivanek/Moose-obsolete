accessing
activity: anActivity
	"The Activity containing the ActivityNode, if it is directly owned by an Activity."
	activity := OPUMLToOneLink
		on: self identity
		update: #nodes
		from: activity
		to: anActivity