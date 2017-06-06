accessing
canvas: aTrachelCanvas
	"Set the Trachel canvas to the morph. 
	 Set the theme if not set in the Trachel canvas.
	 And creates the Athens surface"
	trachelCanvas := aTrachelCanvas.
	surface := AthensCairoSurface extent: (aTrachelCanvas extent) asIntegerPoint