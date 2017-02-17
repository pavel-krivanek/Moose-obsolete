accessing
condition: aTwoArgBlock
	"[ :aMorph :anEvent | boolean ] block condition whether this interaction wants the dropped morph.
This is used in TRMorph>>#wantsDroppedMorph:event:"
	condition := aTwoArgBlock