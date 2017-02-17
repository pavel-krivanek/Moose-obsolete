tests
testCluster
	view := RTView new.
	view
		addAll:
			((RTEllipse new size: 10) elementsOn: Collection withAllSubclasses).
	RTEdgeBuilder new
		view: view;
		objects: Collection withAllSubclasses;
		connectFrom: #superclass to: #yourself.
	RTClusterLayout on: view elements edges: view edges