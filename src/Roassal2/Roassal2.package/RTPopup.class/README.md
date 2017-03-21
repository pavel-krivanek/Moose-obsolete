A RTPopup is an interaction that dynamically add a text or a group of elements above the element pointed by the mouse.

Example of use: 
-=-=-=
	v := RTView new.
	es := (RTEllipse new color: Color blue) elementsOn: Collection withAllSubclasses.
	v addAll: es.

	aPopup := RTPopup new 
		text: [ :aClass | 
				'Classname = ', aClass name, String cr,	
				'NbMethod=', aClass numberOfMethods asString, String cr,
				'NbVariables=', aClass numberOfVariables asString ].
	aPopup borderColor: Color black.
	aPopup textColor: Color white.
	aPopup backgroundColor: Color black.
	es @ aPopup.

	RTMetricNormalizer new
		elements: es;
		normalizeSize: #numberOfMethods min: 20 max: 50;
		normalizeColor: #numberOfVariables.

	RTGridLayout new on: es.

	v
-=-=-= 

Another example of use:
-=-=-=-=-=-=-=-=-=-=-=-=
v := RTView new.

es := RTLabel elementsOn: (1 to: 10).

v addAll: es.

es @ (RTPopup new 
	background: Color blue
	group: [ :group :el |  
 
		group addAll: (RTEllipse elementsOn: (1 to: el model)).
		RTWeightedCircleLayout new
			initialRadius: 50;
			on: group.
		]).

RTHorizontalLineLayout on: es.
v open
-=-=-=-=-=-=-=-=-=-=-=-=