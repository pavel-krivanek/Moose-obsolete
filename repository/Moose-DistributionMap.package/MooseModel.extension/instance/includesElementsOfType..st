*Moose-DistributionMap
includesElementsOfType: aClass

	"self entities detect: [:each | each class = aClass] ifNone: [^ false].
	^true"
	^ (self allWithType: aClass) isEmpty not