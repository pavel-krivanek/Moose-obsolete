accessing
activityScope: anActivity
	"An Activity that owns the Variable."
	activityScope := OPUMLToOneLink
		on: self identity
		update: #variables
		from: activityScope
		to: anActivity