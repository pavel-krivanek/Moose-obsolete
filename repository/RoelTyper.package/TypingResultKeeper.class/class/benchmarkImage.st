instance creation
benchmarkImage
	"self benchmarkImage"

	| keeper |
	^Time
		millisecondsToRun:
			[keeper := self forImage.
			keeper withAllInstvarResultsDo: [:cl :iv :result | result types]]