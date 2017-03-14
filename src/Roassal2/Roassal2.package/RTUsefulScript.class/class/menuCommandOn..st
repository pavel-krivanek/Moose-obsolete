as yet unclassified
menuCommandOn: aBuilder
	<worldMenu>
	((aBuilder
		item: self menuConfigurationSymbol;
		order: 10;
		parent: #Roassal) icon: RTIcon smallRoassal)
		with: [ self allSubclasses
						do: [ :cls | 
							(aBuilder item:
							self menuConfigurationEntryTitle , cls new label)
								order: 10;
								parent: self menuConfigurationSymbol;
								label: cls new label;
								icon: RTIcon smallRoassal;
								action: [ cls new run ] ] ]