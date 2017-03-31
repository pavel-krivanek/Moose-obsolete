attributes
fill_opacity
	^ self inheritedAttributeAt: #fill_opacity ifAbsent: [ self opacity ]