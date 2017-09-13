accessing
inActivity: anActivity
	"The Activity containing the ActivityGroup, if it is directly owned by an Activity."
	inActivity := OPUMLToOneLink
		on: self identity
		update: #groups
		from: inActivity
		to: anActivity