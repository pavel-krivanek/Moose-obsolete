examples
exampleEmpty
	| project diagram |
	project := OPProject named: 'UML Class Diagram'.
	(diagram := OPUMLModel new) name: 'UML Class Model'.
	project addModel: diagram.
	^ OPWorkbench openProject: project