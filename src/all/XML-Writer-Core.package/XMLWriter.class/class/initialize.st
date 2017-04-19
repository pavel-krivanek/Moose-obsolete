class initialization
initialize
	"self initialize"

	self
		initializeDefaultLineBreak;
		initializeCanonicalLineBreak;
		initializePlatformSpecificLineBreak;
		initializeContentDefaultEscapes;
		initializeContentCanonicalEscapes;
		initializeContentNonEntityEscapes;
		initializeContentStringDefaultEscapes;
		initializeContentStringCanonicalEscapes;
		initializeContentStringNonEntityEscapes;
		initializeEntityValueEscapes;
		initializeSpaceCharacter.