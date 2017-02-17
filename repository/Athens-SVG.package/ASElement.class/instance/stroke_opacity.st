attributes
stroke_opacity
	^ self inheritedAttributeAt: #stroke_opacity ifAbsent: [ self opacity ]