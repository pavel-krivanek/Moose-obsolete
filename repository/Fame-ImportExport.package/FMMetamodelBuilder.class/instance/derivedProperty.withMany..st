DSL
derivedProperty: name withMany: typeName
	
	self property: name type: typeName opposite: nil multivalued: true derived: true
