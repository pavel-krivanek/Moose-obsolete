RTGrapherDecorationExample new installTitle: 'LikertScale' 
		code:
		'
| q11 q12 q21 q22 q3 t toVisualize b ds lb |
q11 := #(A A SA SA A SA N A A SA N) groupedBy: #yourself. 
q12 := #(D SA SA SA A N SA A SA A A) groupedBy: #yourself.
q21 := #(A N SA A SA A D A N A N) groupedBy: #yourself.
q22 := #(D N SA A SA SA D A A SA A) groupedBy: #yourself.
q3  := #(D A SA SA N A SA A SA A A) groupedBy: #yourself.

t := q3.
toVisualize := OrderedCollection new.
toVisualize add: #SA -> (t at: #SA ifAbsent: [ #() ]).
toVisualize add: #A -> (t at: #A ifAbsent: [ #() ]).
toVisualize add: #N -> (t at: #N ifAbsent: [ #() ]).
toVisualize add: #D -> (t at: #D ifAbsent: [ #() ]).
toVisualize add: #SD -> (t at: #SD ifAbsent: [ #() ]).

b := RTGrapher new.
ds := RTData new.
ds barChartWithBarTitle: #key rotation: 0.
ds points: toVisualize, {'''' -> #() }.
ds y: [ :as | as value size ].
b add: ds.
b axisX noTick; noTitle.
b axisY noDecimal.
b maxY: 5.
b build.

lb := RTLegendBuilder new.
lb view: b view.
lb addText: ''Likert scale result''.
lb addText: ''SA = Strong agree; A = agree; N = neutral''.
lb addText: ''D = Disagree; SD = Strongly Disagree''.
lb build.

^ b view'
	