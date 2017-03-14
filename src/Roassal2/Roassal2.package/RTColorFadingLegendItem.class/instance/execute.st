hooks
execute
	| g shape es n label |
	g := RTGroup new.
	
	shape := RTBox new width: 3; height: 20.
	es := shape elementsOn: (1 to: 50).
	g addAll: es.
	RTHorizontalLineLayout new gapSize: -1; on: es.
	
	n := RTMetricNormalizer new.
	n elements: es.
	n normalizeColor: #yourself using: colors.
	
	label := (self newLabelShape: description) element.
	g add: label.
	RTConstraint move: label onTheRightOf: es.
	label translateBy: 20 @ 0.
	
	^ g