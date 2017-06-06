public
showEdge
	"Public method
	
	| b |
	b := RTMondrian new.
	b interaction showEdge connectTo: [ :v | Array with: v + 1 ].
	b nodes: #(1 2 2 3).

	b layout circle initialRadius: 10. 
	b
	"
	
	"
	slighly more elaborated example:
classes := Collection withAllSubclasses.
b := RTMondrian new.
b shape circle.
b interaction showEdge 
					shape: (RTArrowedLine new color: Color green);
					connectTo: #dependentClasses.
b nodes: classes.
b edges moveBehind; connectFrom: #superclass.
b normalizer normalizeSize: #numberOfLinesOfCode; normalizeColor: #numberOfLinesOfCode.
b layout cluster.
b
	"
	
	

	| i |
	i := RTShowEdge new.
	interactions add: i. 
	^ i