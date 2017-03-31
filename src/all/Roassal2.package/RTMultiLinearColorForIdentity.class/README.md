RTMultiLinearColorForIdentity associates to each objects a distinct color. 

Consider the following example:
[[[
classes := Collection withAllSubclasses.
packages := (classes collect: #package) asSet asArray.
v := RTView new.
v @ RTDraggableView.
normalizer := RTMultiLinearColorForIdentity new 
					objects: packages;
					command: #package.
s := RTBox new size: 15; color: normalizer.
v addAll: (s elementsOn: classes).

e := RTEdgeBuilder new
		view: v;
		moveBehind;
		objects: classes.
e connectFrom: #superclass.
RTClusterLayout on: v elements.
v
]]]

Using the Mondrian api, the normalizer es: