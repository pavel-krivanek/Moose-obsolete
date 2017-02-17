Define alignment of elements. 

For example, inspect the following:
-=-=-=
	objects := TRShape withAllSubclasses.
	v := RTView new.
	n := RTMultiLinearColorForIdentity new objects: objects.
	shape := RTBox new color: n; size: #numberOfMethods.
	es := shape elementsOn: objects.
	v addAll: es.
	RTHorizontalLineLayout new gapSize: 0; on: es.
	RTAlignment new elements: es; top.
	v
-=-=-=