primitives
charOctal
	^ '\u' asParser , (#hex asParser min: 4 max: 4)