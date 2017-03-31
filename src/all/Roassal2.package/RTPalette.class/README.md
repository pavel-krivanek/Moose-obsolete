Define a set of colors.

Examples showing all the palletes:
-=-=-=
| v allLines lbl es lb| 
v := RTView new.
allLines := OrderedCollection new.

(RTPalette class selectors sorted) do: [ :selector |
	lbl := RTLabel elementOn: selector.
	
	v add: lbl.
	
	es := (RTBox new size: 20) elementsOn: (1 to: 5).
	v addAll: es.
	es @ (RTMouseHoverZoom new desiredExtent: [ :anElement | anElement extent * 1.7 ]).
	TRConstraint stick: lbl onTheLeftOf: es first.
	
	RTHorizontalLineLayout new gapSize: 3; on: es.
	RTMetricNormalizer new
		elements: es;
		normalizeColor: #yourself using: (RTPalette perform: selector).
	allLines add: es.
].
RTVerticalLineLayout on: allLines.

lb := RTLegendBuilder new.
lb view: v.
lb onDemand.
lb addText: 'Many color palettes are offered by Roassal'.
lb addText: 'To obtain the a palette, simply evaluate: RTPalette c5'.
lb build.
v
-=-=-=

Using a palette:
-=-=-=
p := RTPalette c10.
b := RTMondrian new.
b shape box
	color: p fifth;
	if: [ :c | '*Line*' match: c name ] color: p first;
	if: [ :c | '*Arrow*' match: c name ] color: p second;
	if: [ :c | '*Arc*' match: c name ] color: p third;
	if: [ :c | '*Abstract*' match: c name ] color: p fourth.
b nodes: (RTShape withAllSubclasses).
b layout flow.
b normalizer normalizeSize: #numberOfMethods.
b
-=-=-=
