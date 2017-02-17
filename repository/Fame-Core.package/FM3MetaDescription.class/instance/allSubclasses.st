accessing
allSubclasses

	| all |
	all := OrderedCollection new.
	self allSubclassesDo: [:each | all add: each ].
	^ all