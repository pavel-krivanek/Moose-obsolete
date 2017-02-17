morph content setup tools
newRadionButtonFor: aModel getSelected: getSel setSelected: setSel label: aString


	^(CheckboxMorph
			on: aModel selected: getSel changeSelected: setSel)
		"getEnabledSelector: enabledSel;"
		"font: self labelFont;"
		label: aString;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		"setBalloonText: helpText;"
		beRadioButton