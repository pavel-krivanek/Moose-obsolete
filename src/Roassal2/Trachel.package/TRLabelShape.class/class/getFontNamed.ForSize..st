utility
getFontNamed: aFontName ForSize: aNumber
	"
	self getFontNamed: 'Arial'ForSize: 70
	"

	^ TRPlatform current fontFamilyName: aFontName pointSize: aNumber