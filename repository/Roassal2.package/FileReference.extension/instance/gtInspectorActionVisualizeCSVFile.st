*Roassal2-Plugins
gtInspectorActionVisualizeCSVFile
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :composite | 
			| result |
			result := self grapherVisualizationFromFileName: self fullName.
			composite selection: result 
			 ];
		icon: GLMUIThemeExtraIcons glamorousGreenCircle;
		condition: [ self isFile and: [ self extension = 'csv' ] ];
		title: 'Visualize data'