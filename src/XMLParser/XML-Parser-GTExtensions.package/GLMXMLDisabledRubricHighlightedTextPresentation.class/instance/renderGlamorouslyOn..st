rendering
renderGlamorouslyOn: aRenderer
	^ (super renderGlamorouslyOn: aRenderer)
		beReadOnly;
		yourself