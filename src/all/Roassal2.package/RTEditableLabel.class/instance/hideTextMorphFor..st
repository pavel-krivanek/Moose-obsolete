rendering
hideTextMorphFor: anElement
	| p base txt sss |
	fieldArea ifNil: [ ^ self ].
	editLabelShape ifFalse: [ 
		fieldArea delete. ^ self ].
	txt := fieldArea text asString.
	self updateTextFor: anElement with: txt. 
	fieldArea class = RubTextFieldArea ifTrue: [ 
		anElement trachelShape text: txt.
		 ]
	ifFalse: [ | lines aColor fontSize shape |
		lines := txt lines.
		aColor := self colorFor: anElement.
		fontSize := self heightFor: anElement.
		fontName := self fontNameFor: anElement.
		shape := anElement trachelShape.
		p := shape position.
		base := shape shapes first.
		shape remove.
		
		sss := shape allShapes.
		shape setShapes: OrderedCollection new.
		(sss select: [ :ssss | ssss class ~~ TRLabelShape ]) do: [ :ssss | shape addShape: ssss ].
		"shape removeShapesSuchAs: [ :ss | ss class == TRLabelShape ]."
		
		lines doWithIndex: [ :l :index | | lbl |
			lbl := TRLabelShape new text: l.
			lbl color: aColor; fontSize: fontSize; fontName: fontName.
			shape addShape: lbl ].
		shape verticalAndLeft.
		anElement view canvas addShape: shape.
		shape translateBy: p.
		shape announcer: base announcer.
	 ].
		
	anElement signalUpdate.
	
	
	fieldArea delete