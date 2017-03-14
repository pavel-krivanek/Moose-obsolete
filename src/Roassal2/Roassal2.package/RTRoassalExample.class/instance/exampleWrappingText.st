sources
exampleWrappingText
| v el str t block lb |
v := RTView new.
el := RTBox new
	width: 200;
	height: 300;
	borderColor: Color black;
	element.

v add: el.

str := String loremIpsum.

t := (Smalltalk at: #RTText) new "This line is for compatibility with VisualWorks"
	width: 180;
	text: str;
	wrapText;
	element.

v add: t.

(RTConstraint on: t background: el)
	stick.

block := [ :aShape :step |
	t shape width: aShape width - 20.
	t update.
].

el addCallback: (TRTranslationCallback block: block).
el addCallback: (TRExtentCallback block: block).

el @ RTDraggable @ RTResizable.

lb := RTLegendBuilder new.
lb view: v.

lb addText: 'Try resizing the rectangle by clicking near the border.'.
lb build.

^ v