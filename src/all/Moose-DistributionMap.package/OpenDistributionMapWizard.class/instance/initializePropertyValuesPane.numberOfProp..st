initialize-release
initializePropertyValuesPane: aWizardPane numberOfProp: outputValue 

	1 to: outputValue do: [ :index | 
		aWizardPane
			row: [ :r | 
				r
					column: (self propertyNamePartWithDefault: 'property' , index asString)
					associatedTo: ('property' , index asString , 'Name') asSymbol.
				r
					column: (self propertyValueMapperPartFromIndex: index)
					associatedTo: ('property' , index asString , 'Mapper') asSymbol
					requiring:
						{#propertySelector.
						#entitiesToComputeSelector}.
				r column: (self propertyColorPartWithDefault: index) associatedTo: ('property' , index asString , 'Color') asSymbol ] ].
	aWizardPane row: self useDefaultColorsPart associatedTo: #useDefaultColors.
	^ aWizardPane refresh