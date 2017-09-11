public
buildLegendFor: x in: group
	| g temp |
	temp := RTGroup new.
	temp addAll: group.
	group removeAll.
	builder datasets reverse do: [ :ds | | xx |
		xx := ds getValuesX.
		(x between: xx first and: xx last)  
			ifTrue: [ 
				g := RTGroup new.
				g add: ((self iconAt: ds) elementOn: ds->x).
				g add: (legendLabel elementOn: ds->x).
				RTHorizontalLineLayout new alignCenter; on: g.
				temp add: g ]
		 ].
	RTVerticalLineLayout on: temp.
	"hack because remove last popup does not work with rtgroup"
	temp do: [ :m | 
		m isCollection
			ifTrue: [ group addAll: m ]
			ifFalse: [ group add: m ] ].
	