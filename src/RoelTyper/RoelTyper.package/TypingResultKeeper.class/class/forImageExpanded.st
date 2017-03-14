instance creation
forImageExpanded
	| keeper |
	keeper := self forImage.
	keeper withAllInstvarResultsDo: [:cl :iv :result | result types].
	^keeper