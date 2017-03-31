exporting
exportElement: each 
	
	| meta serial properties |

	meta := repository metaDescriptionOf: each.
	self flag: 'ideally, there should be no nil check here. Currently, we need it to accommodate the case in which we export a model based on a partial meta-model'. 
	meta ifNotNil: [
		serial := self indexOf: each.
		printer beginElement: meta fullName.
		printer serial: serial.
		properties := self sortAttributes: meta allAttributes.
		properties do: [ :property | 
			self 
				exportProperty: property
				for: each ].
		printer endElement: meta fullName
		].
	self increment. "UI stuff"