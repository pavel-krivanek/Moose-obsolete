A RTSetEdgeAlpha is an interaction raises the transparency of the incoming and outgoing edges for a given element when the mouse enter the element.

-=-=-=-=
	| v es |
	v := RTView new.
	es := RTEllipse new elementsOn: RTShape withAllSubclasses.
	v addAll: es.
	RTWeightedCircleLayout new
		initialRadius: 200;
		on: es.
	RTMetricNormalizer new
		elements: es;
		normalizeSize: #numberOfMethods
			min: 10
			max: 35
			using: #sqrt;
		normalizeColor: #numberOfLinesOfCode.
	RTEdgeBuilder new
		view: v;
		objects: RTShape withAllSubclasses;
		shape: (RTLine new color: Color blue);
		connectFrom: #yourself toAll: #dependentClasses.
	es @ RTPopup @ RTSetEdgeAlpha.
	^ v
-=-=-=-=