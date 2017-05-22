accessing
infer
	^ UITheme current class == Pharo3DarkTheme
		ifTrue: [ TRDarkSolarizedTheme new ]
		ifFalse: [ TRWhiteSolarizedTheme new ]