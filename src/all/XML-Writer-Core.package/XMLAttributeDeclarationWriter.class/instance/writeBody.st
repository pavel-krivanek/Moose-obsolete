private
writeBody
	self isOmittable
		ifTrue: [^ self].

	self writer
		writeName: self attribute;
		space;
		writeName: self type.

	self
		writeDefaultPragma;
		writeDefaultValue.