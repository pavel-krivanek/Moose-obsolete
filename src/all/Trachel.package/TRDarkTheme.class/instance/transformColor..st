accessing
transformColor: aColor
	"
	self new transformColor: (Color red: 0.8 green: 0.5 blue: 0.5)
	"
	^ Color h: aColor hue s: aColor saturation l: (0.5 - ((aColor lightness - 0.5) * 0.8)) alpha: aColor alpha