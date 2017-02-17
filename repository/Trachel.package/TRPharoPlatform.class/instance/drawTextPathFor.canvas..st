drawing - helpers
drawTextPathFor: shape canvas: canvas
	| f |
	canvas pathTransform restoreAfter: [ 
		canvas pathTransform
			multiplyBy: shape matrix asFloatTransform;
			translateBy: ((shape textWidth / -2) @ (shape textHeight/2)) asFloatPoint;
			translateBy: (0 @ shape descent negated) asFloatPoint.
		canvas setFont: shape font.
		f := CairoScaledFont fromFreetypeFont: shape font realFont.
		f lock.
		shape color loadOnCairoCanvas: canvas.
		canvas setPathMatrix;
			setScaledFont: f.
		canvas textPath: shape text.
		canvas fillPreserve.
		shape outlineColor loadOnCairoCanvas: canvas.
		canvas primSetLineWidth: shape outlineWidth asFloat.
		canvas stroke.
		f unlock ]