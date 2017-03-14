sources
exampleStackOnRoassal
<gtExample> 
<noTest>
| s classes extent layers x y color area maxY dates |

(TRPlatform current dialogConfirm: 'This example takes a long time to load, execute?')
	ifFalse: [ ^ self ].

classes := (RTShape withAllSubclasses reverseSortedAs: #ageInDaysRounded ) select: #hasMethods.
dates := (classes flatCollect: [ :cls | cls rtmethods collect: #date ]) 
	asSet asSortedCollection.
extent := 500@300.

s := RTExperimentalStack new 
	offset: #zero;
	values: [ :cls| dates collect: [ :d | 
			d -> (cls rtmethods select: [ :m | d >= m date ]) ] ];
	x: [ :asso| asso key julianDayNumber ];
	y: [ :asso| | temp |
		temp := 0.
		asso value do: [ :m | temp := temp + m numberOfLinesOfCode ].
		temp.
		 ].

layers := s stack: classes.
maxY := layers inject: 0 into: [ :max :arr | arr inject: max into: [ :a :each| a max: (each y0 + each y) ] ].

x := RTScale linear 
	domain: (Array with: layers first first x with: layers first last x); 
	range: (Array with: 0 with: extent x).

y := RTScale linear 
	domain: (Array with: 0 with: maxY);
	range: (Array with: extent y with: 0).
color := RTScale linear range: (Array with: Color green with: Color darkGray).

area := RTAreaBuilder new
	x: [ :d|  x scale: d x];
	y0: [ :d| y scale: d y0 ];
	y1: [ :d| y scale: d y0 + d y];
	data: layers.
area shape color: [ :e | color scale: Random new next ].
area interaction highlightColored: Color red;
	popupText: [:obj | classes at: (layers indexOf: obj)].
area build.

RTAxisConfiguration new builder: area; minValue: maxY; maxValue: 0; title: 'Number of lines of code'; titlePosition: -0 @ 320;numberOfLabels: 10;tickLabelOffset: -20@0;noDecimal; axisFrom: -15 @0 to: -15 @ extent y.

RTAxisConfiguration new builder: area; minValue: layers first first x; maxValue: layers first last x; title: 'Time'; titlePosition: -30 @ 0; labelRotation: -30; labelConversion: [:v | (Date julianDayNumber: v) ]; numberOfLabels: 15; axisFrom: 0 @(extent y+15) to: extent x @ (extent y+15).
	
^ area view @ RTDraggableView.
	