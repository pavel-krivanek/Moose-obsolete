sources
exampleTextNamesAndShapes
	<gtExample> 
	<noTest>
| v elements data edges e |

v := RTView new.
data := Array 
	with: (Array with: 'j' with: 'Joel' with: 65 with: '#6FB1FC' with: #star)
	with: (Array with: 'e' with: 'Eunis' with: 45 with: '#EDA1ED' with: #ellipse)
	with: (Array with: 'k' with: 'Kramer' with: 75 with: '#86B342' with: #octagon)
	with: (Array with: 'g' with: 'Geovanna' with: 70 with: '#F5A45D' with: #rectangle).
edges := OrderedCollection new
	add: (Array with: 'j' with: 'e' with: '#6FB1FC' with: 90);
	add: (Array with: 'j' with: 'k' with: '#6FB1FC' with: 70);
	add: (Array with: 'j' with: 'g' with: '#6FB1FC' with: 80);
	add: (Array with: 'e' with: 'j' with: '#EDA1ED' with: 95);
	add: (Array with: 'e' with: 'k' with: '#EDA1ED' with: 60 with: 'dotted');
	add: (Array with: 'k' with: 'j' with: '#86B342' with: 100);
	add: (Array with: 'k' with: 'e' with: '#86B342' with: 100);
	add: (Array with: 'k' with: 'g' with: '#86B342' with: 100);
	add: (Array with: 'g' with: 'j' with: '#F5A45D' with: 90);
	yourself.
	
elements := (RTSelectiveShape new
	shape: #fifth;
	width: [ :m | RTScale linear domain: #(40 80); range: #(20 60); scale: m third.];
	text: #second;
	labelShapeDo: [ :shape | shape outlineWidth: 0.5; outlineColor: #fourth ];
	backgroundColor: #fourth;
	color: Color white) elementsOn: data.
v addAll: elements.
elements @ RTDraggable.
edges do: [ :edge| | from to line |
	from := elements detect: [ :el | el model first = edge first ] ifNone: [ nil ].
	to:= elements detect: [ :el | el model first = edge second ] ifNone: [ nil ].
	line := RTDecoratedLine new 
		filledArrowHead;
		filledCircleTail;
		line: (RTBezier3Line new 
			width: [ :m | RTScale linear domain: #(60 100); range: #(2 6); scale: m fourth ]);
		attachPoint: (RTBorderAttachPoint new offset: 9);
		color: (Color colorFrom: edge third) trans.
	e := RTEdge on: edge from: from to: to.
	e+line.
	v add: e ].
v edges do: #pushBack.

elements first translateTo: 300@260.
elements second translateTo: 170@150.
elements third translateTo: 160@260.
elements fourth translateTo: 290@150.
v @ RTDraggableView @ RTZoomableView.
^ v