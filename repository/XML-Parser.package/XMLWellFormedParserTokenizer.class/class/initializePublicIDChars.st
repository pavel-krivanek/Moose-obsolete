class initialization
initializePublicIDChars
	"PubidChar ::= #x20 | #xD | #xA | [a-zA-Z0-9] | [-'()+,./:=?;!*#@$_%]"

	"assign the fully initialized object with #yourself to avoid
	possible race conditions when reinitialization the class"
	PublicIDChars :=
		BitmapCharacterSet new
			add: 16r20 asCharacter;
			add: 16rD asCharacter;
			add: 16rA asCharacter;
			addRangeFrom: $a to: $z;
			addRangeFrom: $A to: $Z;
			addRangeFrom: $0 to: $9;
			addAll: '-''()+,./:=?;!*#@$_%';
			yourself