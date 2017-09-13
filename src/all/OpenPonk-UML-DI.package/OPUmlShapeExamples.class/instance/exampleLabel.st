sources
exampleLabel
|v el1 el2|
v := RTView new.

el1 := OPUmlNameLabel new
	localStyle: (OPUmlStyle new
		fontBold: true;
		fontItalic: true;
		fontColor: Color red
	);
	text: 'hello'.

el2 := OPUmlNameLabel new
	localStyle: (OPUmlStyle new
		fontUnderline: true;
		fontSize: 15
	);
	text: 'world'.

el1 renderIn: v.
el2 renderIn: v.

RTVerticalLineLayout on: { el1. el2 }.

^ v