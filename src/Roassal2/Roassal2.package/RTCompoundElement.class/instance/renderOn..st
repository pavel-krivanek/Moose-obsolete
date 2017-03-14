rendering
renderOn: trachelCanvas
	super renderOn: trachelCanvas.
	children do: [ :c | c renderOn: trachelCanvas ]