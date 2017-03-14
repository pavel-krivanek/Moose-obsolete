class initialization
initializeEncodingNameChars
	"EncName ::= [A-Za-z] ([A-Za-z0-9._] | '-')*"

	"assign the fully initialized object with #yourself to avoid
	possible race conditions when reinitialization the class"
	EncodingNameChars :=
		BitmapCharacterSet new
			addRangeFrom: $a to: $z;
			addRangeFrom: $A to: $Z;
			addRangeFrom: $0 to: $9;
			addAll: '-_.';
			yourself