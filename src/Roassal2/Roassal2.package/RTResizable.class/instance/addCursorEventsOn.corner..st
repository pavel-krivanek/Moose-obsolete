hooks
addCursorEventsOn: anElement corner: aCorner
	anElement when: TRMouseLeave do: [ :evt | TRPlatform current showTemporaryCursor: nil ].
	anElement when: TRMouseEnter do: [ :evt | TRPlatform current showTemporaryCursor: (self cursorForCorner: aCorner) ]