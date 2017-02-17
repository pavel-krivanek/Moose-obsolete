private
skipOrReturnWith: aBlock ifSkippable: aSelector
	"skip is not portable to Squeak, so a return block is used as a backup"
	(self isSkipping
		and: [self skippableTests includes: aSelector])
		ifTrue: [self skipOrReturnWith: aBlock]