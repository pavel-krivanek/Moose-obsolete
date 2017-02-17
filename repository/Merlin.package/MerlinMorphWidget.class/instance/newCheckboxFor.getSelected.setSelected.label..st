utils - morph creation
newCheckboxFor: aModel getSelected: getSel setSelected: setSel label: label
	"return a checkbox with the label label. the value of the checkbox will be accessed by the selector getSel (send to aModel) and set by the selector setSel (send to aModel)."

	
	^(CheckboxMorph
			on: aModel selected: getSel changeSelected: setSel)
		font: StandardFonts defaultFont;
		label: label;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself