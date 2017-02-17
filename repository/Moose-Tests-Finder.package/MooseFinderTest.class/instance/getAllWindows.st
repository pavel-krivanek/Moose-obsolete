utils
getAllWindows
	^ World submorphs select: #isSystemWindow

	"The following is really costly"
	"^ SystemWindow withAllSubclasses inject: #() into: [:sum :el | sum, el allInstances ]"