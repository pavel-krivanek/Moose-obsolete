world menu
menuCommandOn: aBuilder
	<worldMenu>
	((aBuilder
		item: self menuConfigurationSymbol;
		order: 15;
		parent: #Roassal) icon: RTIcon smallRoassal)
		withSeparatorAfter;
		with: [ self allSubclasses
						do: [ :cls | 
							(aBuilder item:
							self menuConfigurationEntryTitle , cls new label)
								order: 15;
								parent: self menuConfigurationSymbol;
								label: cls new label;
								icon: RTIcon smallRoassal;
								action: [ cls new run ] ] ]