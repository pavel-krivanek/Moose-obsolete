accessing
theme
	"Return the theme used by the Canvas"
	canvas ifNil: [ ^ TRWhiteTheme default ].
	^ canvas theme