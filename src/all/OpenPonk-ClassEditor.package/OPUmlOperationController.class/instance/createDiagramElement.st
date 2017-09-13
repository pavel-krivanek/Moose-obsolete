figures
createDiagramElement
	^ OPUmlLabel new
		modelElement: self model;
		text: [ :aModel | self notationTextFor: aModel ];
		emphasis: [ :aModel :aStyle | 
			aStyle fontUnderline: aModel isStatic.
			aStyle fontItalic: aModel isAbstract ];
		localStyle: OPUmlStyle new;
		yourself