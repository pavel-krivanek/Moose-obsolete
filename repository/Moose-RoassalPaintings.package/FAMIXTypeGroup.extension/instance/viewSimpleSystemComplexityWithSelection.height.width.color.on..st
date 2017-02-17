*Moose-RoassalPaintings
viewSimpleSystemComplexityWithSelection: selectedClassGroup height: heightBlock width: widthBlock color: colorBlock on: view
	view shape box
		height: heightBlock;
		width: widthBlock;
		borderColor: Color gray;
		if: [ :each | selectedClassGroup includes: each ] borderColor: Color red.
	view interaction menu: [ :each | each mooseMenuMorph ].
	view interaction draggable.
	view nodes: self entities.
	view interaction popup textElement: [ :e | e model printString ].
	view shape shape: RTLine new.
	view edges connectFrom: [:c | c superclass].
	view treeLayout.
	view normalizer
		normalizeColor: colorBlock
		using:
			{Color white.
			Color black}
	"view edges do: [ :e | e trachelShape pushBack ]."