class initialization
initializeContentCanonicalEscapes
	ContentCanonicalEscapes :=
		ContentEscapes copy
			at: 16rD put: '&#xD;'; "CR"
			yourself