software visualization
systemComplexity
	<gtExample>
	"
	self new systemComplexity
	"

	| v els edges |
	v := RTView new.
	els := RTBox new
		height: [ :c | c numberOfMethods max: 5 ];
		borderColor: Color black;
		width: [ :c | c numberOfVariables * 5 max: 5 ];
		color:
			(RTGrayLinearColor new
				command: #numberOfLinesOfCode;
				scope: Collection withAllSubclasses);
		elementsOn: Collection withAllSubclasses.
	v addAll: els.
	els @ RTDraggable @ RTPopup.
	edges := RTEdgeBuilder new
		view: v;
		objects: Collection withAllSubclasses;
		shape:
			(RTLine new
				withVerticallAttachPoint;
				yourself);
		connectFrom: #superclass to: #yourself.
	edges do: #moveBehindItsExtremities.
	RTTreeLayout on: v elements.
	v @ RTDraggableView.
	^ v