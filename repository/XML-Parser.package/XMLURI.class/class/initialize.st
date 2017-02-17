class initialization
initialize
	"self initialize"

	"Assign the fully initialized object with #yourself to avoid
	possible race conditions when reinitialization the class."
	UnreservedCharacters :=
		BitmapCharacterSet new
			addRangeFrom: $a to: $z;
			addRangeFrom: $A to: $Z;
			addRangeFrom: $0 to: $9;
			addAll: '-._~';
			yourself