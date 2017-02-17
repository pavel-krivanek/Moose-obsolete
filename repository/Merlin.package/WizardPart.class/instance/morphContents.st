accessing
morphContents
	"return the morph contents of this WizardPart."

	"useLatePopulateContents 
		ifTrue: [self latePopulateContents]
		ifFalse: [
			numberOfContentCalls < 1 ifTrue: [self latePopulateContents ]
			].

	numberOfContentCalls := numberOfContentCalls + 1."
	^  blockContents. 
	