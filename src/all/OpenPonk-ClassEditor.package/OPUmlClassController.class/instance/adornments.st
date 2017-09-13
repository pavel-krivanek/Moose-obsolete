figures
adornments
	^ {OPUmlIcons attributeIcon
		-> [ | tool |
			tool := OPCreationTool new
				palette: self diagramController editor paletteModel;
				factory: [ OPUmlAttributeController new ].
			self diagramController editor paletteModel selectTool: tool.
			tool
				whenCompleted: [ :ctrl | 
					OPRenameElementCommand executeOn: ctrl model.
					ctrl refreshFigure ].
			tool targetSelected: self ].
	OPUmlIcons directedAssociationIcon
		-> [ | tool |
			tool := OPConnectionCreationTool new
				palette: self diagramController editor paletteModel;
				factory: [ OPUmlAssociationController new ].
			self diagramController editor paletteModel selectTool: tool.
			tool sourceSelected: self ].
	OPUmlIcons generalizationIcon
		-> [ | tool |
			tool := OPConnectionCreationTool new
				palette: self diagramController editor paletteModel;
				factory: [ OPUmlGeneralizationController new ].
			self diagramController editor paletteModel selectTool: tool.
			tool sourceSelected: self ]}