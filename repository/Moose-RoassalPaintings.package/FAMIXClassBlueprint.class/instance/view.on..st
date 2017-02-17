public
view: aClass on: view
	"This is a public method. This methods render in view the class blueprint of the famix class aClass"
	"This method returns the group of the 5 layers"
	| layers |
	view @ RTZoomableView.

	layers := self createLayersFor: aClass on: view.
	self createEdgesFor: aClass andLayers: layers on: view.
	self nestLayers: layers.
	RTHorizontalLineLayout new
		gapSize: 0;
		on: (layers collect: #key).
	TRConstraint setAllToMaxHeight: (layers collect: #key).
	"TRConstraint alignFromTop: (layers collect: #key)."
	RTAlignment new elements: (layers collect: #key); top.
	^ (layers collect: #key) asGroup