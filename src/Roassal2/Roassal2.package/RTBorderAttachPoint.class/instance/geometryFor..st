accessing
geometryFor: anElement
	"using double dispatch to retrieve the geometry"
	^ anElement geometry
	"anElement isMultiElement
		ifTrue: [ ^ anElement geometryFor: anElement ].
	(anElement shape isKindOf: RTEllipse)
		ifTrue: [ ^ GEllipse center: anElement position a: anElement width / 2 b: anElement height / 2 ].
	(anElement shape isKindOf: RTRoundedBox)
		ifTrue: [ | rect r |
			r := anElement shape borderRadiusFor: anElement.
			rect := GRectangle
				origin: anElement encompassingRectangle origin
				corner: anElement encompassingRectangle corner.
			^ GRoundedRectangle rectangle: rect borderRadius: r ].
	^ GRectangle
		origin: anElement encompassingRectangle origin
		corner: anElement encompassingRectangle corner"