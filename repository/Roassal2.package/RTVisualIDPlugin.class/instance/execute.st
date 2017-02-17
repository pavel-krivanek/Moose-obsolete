hooks
execute
	Gofer new
		smalltalkhubUser: 'abergel' project: 'VisualIDGlyph';
		package: 'VisualIDGlyph';
		load.
		
"	Metacello new
	  baseline: 'VisualID';
	  repository: 'github://bergel/VisualID:master';
	  load. "

	"Gofer new
		smalltalkhubUser: 'IgnacioFernandez' project: 'VisualiDs';
		configurationOf: 'VisualID';
		loadBleedingEdge.
		"
		
"	Gofer new
		smalltalkhubUser: 'IgnacioFernandez' project: 'VisualiDs';
		package: 'VisualID';
		package: 'VisualID-Clustering';
		package: 'VisualID-Random';
		package: 'VisualID-Roassal';
		package: 'VisualID-Canvas';
		package: 'VisualID-Test';
		load"