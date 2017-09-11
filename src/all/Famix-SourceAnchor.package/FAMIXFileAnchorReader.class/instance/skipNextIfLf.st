reading
skipNextIfLf
	"I will probably be called after a CR to remove a possible CRLF"

	(char := readStream next) isLf
		ifFalse: [ readStream oneBack ]