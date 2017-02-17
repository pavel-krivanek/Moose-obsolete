running
testReadEmptyProperties
	| tower m2 package |
	tower := FMTower new.
	m2 := tower metamodel.
	m2 importString: '((FM3.Package))'.
	package := m2 elements anyOne.
	(m2 get: 'name' element: package) isEmpty should beTrue.
	(m2 get: 'classes' element: package) isEmpty should beTrue.
	^ m2