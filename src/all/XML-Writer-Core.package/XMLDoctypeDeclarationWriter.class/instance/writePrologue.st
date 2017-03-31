private
writePrologue
	self isOmittable
		ifTrue: [^ self].

	self writer
		formatBeforeDoctypeDeclaration: self;
		nextPutAll: '<!DOCTYPE';
		space;
		writeName: self root.

	self isExternalIDOmittable
		ifFalse: [
			self writer space.
			self externalIDWriter writeOn: self writer].