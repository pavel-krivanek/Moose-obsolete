building
buildBrowser
	browser := GLMTabulator new.
	browser title: 'Famix Explorer' translated.
	browser
		column: #hierarchy;
		column: #attributes.
	browser transmit
		to: #hierarchy;
		andShow: [ :a | self hierarchyIn: a ].
	browser transmit
		to: #attributes;
		from: #hierarchy;
		andShow: [ :a | 
			self relationsIn: a.
			self propertiesIn: a.
			self methodsIn: a.
			a
				onChangeOfPort: #activePresentation
				act: [ :presentation | 
					(presentation pane port: #activePresentation) value
						ifNotNil: [ :activePresentation | |port| port:=((browser paneNamed: #attributes) port: #selection). port silentValue: nil. port value:nil ] ] ].
	browser transmit
		from: #attributes port: #strongSelection;
		toOutsidePort: #propertyToSelect.
	browser transmit
		fromOutsidePort: #propertyToSelect;
		to: #hierarchy port: #selection;
		transformed: [ :property | property owner ].
	browser transmit
		fromOutsidePort: #propertyToSelect;
		to: #attributes port: #selection.
	browser transmit
		from: #hierarchy;
		toOutsidePort: #selectedEntity.
	browser transmit
		fromOutsidePort: #entityToSelect;
		to: #hierarchy port: #selection.
	browser transmit
		from: #attributes;
		toOutsidePort: #selectedAttribute.
	^ browser