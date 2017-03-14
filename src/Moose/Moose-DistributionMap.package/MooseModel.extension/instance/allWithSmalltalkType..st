*Moose-DistributionMap
allWithSmalltalkType: aClass

	"return all entities of type aClass"
	"^ self entities select: [:each | each class = aClass ]."
	^ self allWithType: aClass
	