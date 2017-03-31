adding
addGeneralEntitiesFrom: aDoctypeDefinition
	aDoctypeDefinition generalEntities keysAndValuesDo: [:name :entity |
		self generalEntities
			at: name
			ifAbsentPut: [entity]]