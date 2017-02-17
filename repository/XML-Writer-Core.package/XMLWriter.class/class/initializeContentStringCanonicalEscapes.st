class initialization
initializeContentStringCanonicalEscapes
	ContentStringCanonicalEscapes :=
		ContentStringEscapes copy
			at: 16r9 put: '&#x9;'; "tab"
			at: 16rA put: '&#xA;'; "lf"
			at: 16rD put: '&#xD;'; "cr"
			yourself