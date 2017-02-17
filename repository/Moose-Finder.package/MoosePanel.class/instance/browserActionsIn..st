building
browserActionsIn: aBrowser
	aBrowser act: [:b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update'.
	aBrowser dynamicActions: [:root | 
		MoosePanelCommand allCommands asOrderedCollection collect: [:each | 
			GLMGenericAction new
				title: each new label;
				"category: each new category;"
				action: [each new execute];
				icon: each new icon ]]		