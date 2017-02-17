examples
example01
	<script: 'self example01 inspect'>
	| dsm |
	dsm := RTDSM new.
	dsm objects: RTShape withAllSubclasses.
	dsm dependency: #dependentClasses.
	^ dsm