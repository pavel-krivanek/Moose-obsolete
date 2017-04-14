private
writePrologue
	self isOmittable
		ifFalse: [
			self writer
				formatBeforePI: self;
				nextPutAll: '<?';
				"do not treat PI targets as names to be consistent
				with XMLXMLDeclarationWriter"
				nextPutAll: self target]