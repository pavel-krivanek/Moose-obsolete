updating
applyChanges
	"make sure that all changes become visible in the frame"
	
	| contentMorph |
	contentMorph := self dialogWindow contentMorph.
	contentMorph notNil
		ifTrue: [self dialogWindow contentMorph: contentMorph; model: nil].