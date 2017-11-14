running
tearDown
	replacedClass ifNotNil: [ replacedClass become: ghost].
	replacedClass := nil.
	
	super tearDown.
	
	