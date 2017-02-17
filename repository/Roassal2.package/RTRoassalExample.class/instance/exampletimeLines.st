sources
exampletimeLines

| classes oldestAge v elements |
classes := RTShape withAllSubclasses.

oldestAge := (classes collect: #ageInDays) max.

v := RTView new.
v @ RTDraggableView.
classes doWithIndex: [ :c :index |
	elements := RTEllipse new elementsOn: c rtmethods.
	v addAll: elements.
	RTMetricNormalizer new
		elements: elements;
		normalizeX: #ageInDaysAsInteger min: 0 max: 200 minValue: 0 maxValue: oldestAge.
	elements translateBy: 0 @ (index * 10).
	RTEdgeBuilder new
		view: v;
		linkElements: elements.
].
^ v