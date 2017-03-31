attributes
fill
	^ self inheritedAttributeAt: #fill ifAbsent: [ ASColorPaint new color: Color black ]