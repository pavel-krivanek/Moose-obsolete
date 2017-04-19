private
writeBody
	self isOmittable
		ifFalse: [
			self
				writeAttribute;
				writeType;
				writeDefaultPragma;
				writeDefaultValue]