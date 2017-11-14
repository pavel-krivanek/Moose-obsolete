sources
exampleSankeyBuilder
| energy sankey nodes nodeAt colors d color form lineColor textColor |

energy := RTExperimentalExample new sankeyData.

colors := RTColorPalette qualitative colors: 20 scheme:'FlatUI1'.
d := Dictionary new.
color := [:n | | k i |
	k := n.
	i := k indexOf: Character space.
	i isZero ifFalse: [ k := k copyFrom: 1 to: i -1 ].
	d at: k ifAbsentPut: [ 
		i := d size +1.
		i > colors size ifTrue: [ i := i // colors size.  ].
		colors at: i ] ].

sankey := RTSankeyBuilder new.
form := [ :n | | e |
	e := sankey view elements elementFromModel: n.
	e ifNil: [ e:=  sankey view edges elementFromModel: n ].
	(e attributes at: #value) asString, ' TWh'. ].

sankey shape width: 15.

lineColor := TRTheme current blue trans.
textColor := Color black.
sankey lineShape color: lineColor.
nodes := energy at: 'nodes'.
nodeAt := [ :n | nodes at: n +1 ].
sankey shape box
	borderColor: Color black;
	borderWidth: 1;
	width: 15;
	color: color.
(sankey interaction 
	popupText: [ :n | n, String cr, (form value: n) ])
	backgroundColor: Color white;
	alphaPopupBackground: 1;
	borderColor: Color gray.
(sankey interactionEdge
	popupText: [ :ass | ass key ,' → ', 
		ass value, String cr, (form value: ass). ])
	backgroundColor: Color white;
	alphaPopupBackground: 1;
	borderColor: Color gray.
sankey labelShape
	text text: [ :n | n ];
	color: textColor.
sankey
	extent: 960@500;
	iterations: 32;
	nodePadding: 10;
	nodes: nodes;
	links: (energy at: 'links');
	linkFrom: [ :l | nodeAt value: (l at: 'source') ];
	linkTo: [ :l | nodeAt value: (l at: 'target') ];
	linkValue: [:l | l at: 'value' ].

sankey build.
^ sankey view