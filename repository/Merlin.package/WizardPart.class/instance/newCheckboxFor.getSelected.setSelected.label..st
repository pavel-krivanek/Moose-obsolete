morph content setup tools
newCheckboxFor: aModel getSelected: getSel setSelected: setSel label: label
	"return a checkbox with the label label. the value of the checkbox will be accessed by the selector getSel (send to aModel) and set by the selector setSel (send to aModel)."
	<lint: 'Utility methods' rationale: 'defined here to facilate the use of the library' author: 'cyrille.delaunay'>
	
	^(CheckboxMorph
			on: aModel selected: getSel changeSelected: setSel)
		font: StandardFonts defaultFont;
		label: label;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself