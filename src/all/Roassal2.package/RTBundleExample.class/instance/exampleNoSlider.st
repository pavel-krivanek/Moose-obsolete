sources
exampleNoSlider
	| b |
	b := RTBundleBuilder new.
	b explore: Collection using: #subclasses.
	b bezier color: Color blue trans.
	b useBezierlineWith: #dependentClasses.
	b withoutSlider.
	^ b