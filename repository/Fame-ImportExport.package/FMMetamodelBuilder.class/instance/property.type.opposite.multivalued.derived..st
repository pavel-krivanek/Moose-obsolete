DSL
property: name type: typeName opposite: oppositeName multivalued: multivalued derived: derived
	
	self new: 'FM3.Property' with: [
		stack addLast: name.
		self id: self nextSerial.
		self add: 'name' with: name.
		self add: 'type' with: [ self ref: (self lookup: typeName) ].
		multivalued ifTrue: [ self add: 'multivalued' with: true ].
		derived ifTrue: [ self add: 'derived' with: true ].
		oppositeName ifNotNil: [
			self add: 'opposite' with: [ self ref: (self lookupSerial: typeName, '.', oppositeName) ] ].
		stack removeLast ].