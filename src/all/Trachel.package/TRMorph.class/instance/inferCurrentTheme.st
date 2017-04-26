initialization
inferCurrentTheme
	| themeToSet |
	UITheme current class == Pharo3DarkTheme
		ifTrue: [ themeToSet := TRDarkTheme new ]
		ifFalse: [ themeToSet := TRWhiteTheme new ].
	^ themeToSet