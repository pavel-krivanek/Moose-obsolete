drawing
textAsCode
	"This could be made more clever with regard to compilation and runtime errors. But for this simple example it should suffice."
	^OpalCompiler evaluate: '[:view :canvas | ', self text getText asString , ']'
		logged: false
	