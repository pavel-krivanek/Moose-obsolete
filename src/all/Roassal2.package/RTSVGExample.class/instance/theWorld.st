basic
theWorld
	<gtExample>
	<iconSelectorBase64: #theWorldIcon>
	
	"
	self new theWorld
	"
	| view |
	view := RTView new.
	RTSVGPath countries do: [ :country |
		| elem |
		elem := (RTSVGPath new
			path: (RTSVGPath perform: country);
			fillColor: Color random;
			scale: 1) element model: (country asString).
		elem @ RTPopup.
		view add: elem.
	].
	^ view