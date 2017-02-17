class initialization
initialize
	"self initialize"

	self
		initializeDefaultLineBreak;
		initializeCanonicalLineBreak;
		initializePlatformSpecificLineBreak;
		initializeContentEscapes;
		initializeContentCanonicalEscapes;
		initializeContentNonEntityEscapes;
		initializeContentStringEscapes;
		initializeContentStringCanonicalEscapes;
		initializeContentStringNonEntityEscapes;
		initializeEntityValueEscapes;
		initializeSpaceCharacter.