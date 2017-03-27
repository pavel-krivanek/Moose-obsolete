world menu
menuCommandOn: aBuilder
	<worldMenu>
	| b |
	b := ((aBuilder
		item: self menuConfigurationSymbol;
		order: 15;
		parent: #Roassal) icon: RTIcon smallRoassal)
		withSeparatorAfter;
		yourself.
	b
		with: [ self allNotLoadedPluginClasses
						do: [ :cls | 
							(aBuilder item: self menuConfigurationEntryTitle , cls new label)
								order: 15;
								parent: self menuConfigurationSymbol;
								label: cls new pluginName;
								icon: RTIcon smallRoassal;
								action: [ cls new run ] ] ].
	b withSeparatorAfter.

	b
		with: [ self allLoadedPluginClasses
						do: [ :cls | 
							(aBuilder item: self menuConfigurationEntryTitle , cls new label)
								order: 25;
								parent: self menuConfigurationSymbol;
								label: cls new pluginName;
								icon: RTIcon smallRoassal;
								action: [ cls new run ] ] ]