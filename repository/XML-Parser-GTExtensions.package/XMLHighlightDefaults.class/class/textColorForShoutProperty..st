private
textColorForShoutProperty: aShoutProperty
	^ TextColor color:
		(((SHTextStylerST80 new attributesFor: aShoutProperty)
			detect: [:each | each respondsTo: #color]
			ifNone: [^ nil]) color)