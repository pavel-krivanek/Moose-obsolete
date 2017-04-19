class initialization
initializeContentCanonicalEscapes
	ContentCanonicalEscapes :=
		ContentDefaultEscapes copy
			at: 16rD put: '&#xD;'; "CR"
			yourself