meta-object-protocol
mooseProperty

	^ mooseProperty ifNil: [ 

		mooseProperty := FM3PropertyDescription new.
		
		mooseProperty name: self name asString.
		mooseProperty setImplementingSelector: self name. "should be a link to slot"

		mooseProperty isMultivalued: false.
		mooseProperty isDerived: true.
		
		mooseProperty opposite: self inverseSlot mooseProperty.
		
		mooseProperty ].
