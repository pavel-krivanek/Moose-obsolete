drawing
drawOn: athensCanvas
	| pt  scale ratio |
	pt := athensCanvas pathTransform.
	pt restoreAfter: [
		pt scaleBy: matrix sx @ matrix sy.
		
		athensCanvas
			setShape: self path.
		color isNotNil ifTrue: [ athensCanvas setPaint: self themedColor; draw ].
		
		self canvas ifNil: [ ^ self ].
	scale := self canvas camera scale.
	scale < 1 
		ifTrue: [ ratio := self strokeWidth ] 
		ifFalse: [ ratio := self strokeWidth / scale].
	^ strokePaint
		ifNotNil: [ 
			(athensCanvas setStrokePaint: self themedStrokeColor) width: ratio asFloat.
			athensCanvas drawShape: path]]