running
testWriteProperties
	| m2 package |
	m2 := self testReadEmptyProperties.
	package := m2 elements anyOne.
	m2 
		set: 'name'
		element: package
		values: (Array with: 'Eg').
	(m2 
		get: 'name'
		element: package) size should = 1