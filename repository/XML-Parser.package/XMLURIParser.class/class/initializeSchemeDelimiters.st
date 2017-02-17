class initialization
initializeSchemeDelimiters
	"including % disallows percent encoding in schemes"
	SchemeDelimiters := BitmapCharacterSet newFrom: ':@/?#%'