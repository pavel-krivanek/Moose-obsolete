RTDSM build a Dependency Structural Matrix for a collection of objects and an arbitrary dependency function.

For example, inspect the following:
[[[ 
	dsm := RTDSM new.
	dsm objects: RTShape withAllSubclasses.
	dsm dependency: #dependentClasses.
	^ dsm
]]]