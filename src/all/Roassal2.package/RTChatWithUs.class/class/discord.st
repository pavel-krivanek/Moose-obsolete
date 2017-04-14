world menu
discord
	discord ifNil: [ discord :=  PNGReadWriter formFromStream: self discordPNGByteArray readStream ].
	^ discord