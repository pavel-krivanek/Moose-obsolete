accessing
behavior: aTwoArgBlock
	"What should happen with the morph when the condition was met?
	[ :aMorph :anEvent | what should happen ] block.
	Used in TRMorph>>#acceptDroppingMorph:event:"

	behavior := aTwoArgBlock