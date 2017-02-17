sources
exampleClasses

	| dsm |
	dsm := RTDSM new.
	dsm objects: RTShape withAllSubclasses.
	dsm dependency: #dependentClasses.
	^ dsm
