class initialization
initializeEncodingNameStartChars
	"Character>>isLetter is not used because it may return true for non-ASCII
	letters depending on the locale.
	
	EncName ::= [A-Za-z] ([A-Za-z0-9._] | '-')*"

	"assign the fully initialized object with #yourself to avoid
	possible race conditions when reinitialization the class"
	EncodingNameStartChars :=
		BitmapCharacterSet new
			addRangeFrom: $a to: $z;
			addRangeFrom: $A to: $Z;
			yourself