configuration
defaultFamilyFontName
	"Default Family font"
	| fontList |
	fontList := TRPlatform current fontListStrings.
	fontList ifEmpty: [ ^ TRPlatform current defaultFont familyName ].
	(fontList includes: 'Source Sans Pro') ifTrue: [ ^ 'Source Sans Pro' ].
	(fontList includes: 'DejaVu Sans') ifTrue: [ ^ 'DejaVu Sans' ].
	
	^ TRPlatform current defaultFont familyName