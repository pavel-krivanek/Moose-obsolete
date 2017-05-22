accessing
theme: aTheme
	"Set the theme used by the Trachel Canvas."
	self assert: [ aTheme isKindOf: TRTheme ].
	theme := aTheme.
	self color: theme trachelCanvasColor