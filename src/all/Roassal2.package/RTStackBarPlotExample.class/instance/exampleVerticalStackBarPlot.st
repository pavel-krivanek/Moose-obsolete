sources
exampleVerticalStackBarPlot

| b |
b := RTStackBarPlot new.
b vertical.
b interaction popupText.
b colorPalette colors: (Array with: Color green with: Color red).
b add: #(37 33 ) title: 'SampleText1'.
b add: #(24 26 ) title: 'SampleText2'.
b add: #(25 29 ) title: 'SampleText3'.
b add: #(30 33 ) title: 'SampleText4'.
b addLegend: #('yes' 'no').
b barWidth: 40 height: 260.
b
	addLabelToBars: [:assoc | (assoc key / b totalSum * 100) asInteger asString , '%']
		if: [:assoc | assoc key > 5]
		color: Color black.
b build.
^ b view