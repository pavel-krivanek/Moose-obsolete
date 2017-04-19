class initialization
initializeContentStringCanonicalEscapes
	ContentStringCanonicalEscapes :=
		ContentStringDefaultEscapes copy
			at: 16r9 put: '&#x9;'; "tab"
			at: 16rA put: '&#xA;'; "lf"
			at: 16rD put: '&#xD;'; "cr"
			yourself