accessing
theme: aTheme
	"Set the theme used by the Trachel Canvas."
	self assert: [ aTheme isKindOf: TRAbstractTheme ].
	theme := aTheme.
	self color: theme trachelCanvasColor