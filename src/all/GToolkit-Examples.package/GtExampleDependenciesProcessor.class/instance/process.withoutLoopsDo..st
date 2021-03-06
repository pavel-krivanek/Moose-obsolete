private
process: anExample withoutLoopsDo: aBlock
	"I check whether we already scheduled the given example for processing to prevent recursion."
	| value |
	value := nil.
	processing do: [ :processingExample |
		(processingExample = anExample) ifTrue: [
			^ self handleRecursionErrorFor: anExample ] ].	
	processing add: anExample. " prepare processing this example "
	context example: anExample.
	value := aBlock value. " process this example "
	processing remove: anExample. " done processing "
	^ value