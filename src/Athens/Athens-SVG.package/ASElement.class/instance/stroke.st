attributes
stroke
	^ self inheritedAttributeAt: #stroke ifAbsent: [ ASNoFill soleInstance ]