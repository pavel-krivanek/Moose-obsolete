accessing
classNamed: aClassName ifPresent: aBlock
	^ aBlock cull:
		(self
			classNamed: aClassName
			ifAbsent: [^ nil])