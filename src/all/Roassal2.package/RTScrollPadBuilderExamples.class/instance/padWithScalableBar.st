as yet unclassified
padWithScalableBar
	"
	RTScrollPadBuilderExamples new padWithScalableBar
	"
	| b b2 |
	b := RTMondrian new.
	b shape rectangle 
				withBorder;
				width: [ :cls | cls numberOfVariables * 5];
				height: #numberOfMethods;
				linearFillColor: #numberOfLinesOfCode within: RTObject withAllSubclasses.
	b nodes: RTObject withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout tree.
	b build.

	b2 := RTScrollPadBuilder new.
	b2 view: b view.
	b2 barSpecific: #scalable.
	b2 barShape: #aBox.
	b2 size: [ :v | v view canvas extent x / 7].
	b2 fillColor: (Color gray alpha: 0.2).
	b2 build.
	^ b view