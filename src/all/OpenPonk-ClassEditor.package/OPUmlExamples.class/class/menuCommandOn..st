menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #UMLClassEditor)
		icon: OPIcons current dcOmlDiagramIcon;
		label: 'UML Class Diagram';
		parent: #MostUsedTools;
		action: [ self exampleEmpty ];
		with: [ (aBuilder item: #UMLCompleteClass)
				parent: #UMLClassEditor;
				label: 'Rich Class';
				icon: OPIcons current dcOmlDiagramIcon;
				action: [ self exampleRichClass ].
			(aBuilder item: #UMLExampleSimpleAssociation)
				parent: #UMLClassEditor;
				label: 'Simple Association';
				icon: OPIcons current dcOmlDiagramIcon;
				action: [ self exampleSimpleAssociation ].
			(aBuilder item: #UMLExampleGeneralizationSets)
				parent: #UMLClassEditor;
				label: 'Generalization Sets';
				icon: OPIcons current dcOmlDiagramIcon;
				withSeparatorAfter;
				action: [ self exampleGeneralizationSets ].
			(aBuilder item: #UMLMetamodelInspect)
				parent: #UMLClassEditor;
				label: 'Inspect UML Metamodel';
				icon: OPIcons current dcOmlDiagramIcon;
				action: [ OPUMLXMISpecsStorage umlMetamodel inspect ] ]