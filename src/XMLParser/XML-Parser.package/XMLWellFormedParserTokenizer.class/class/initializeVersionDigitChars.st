class initialization
initializeVersionDigitChars
	"Character>>#isDigit is not used because it may return true for non-ASCII
	digits depending on the locale.
	
	VersionNum ::= '1.' [0-9]+"

	"assign the fully initialized object with #yourself to avoid
	possible race conditions when reinitialization the class"
	VersionDigitChars :=
		BitmapCharacterSet new
			addRangeFrom: $0 to: $9;
			yourself