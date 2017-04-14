private
writePrologue
	self isOmittable
		ifFalse: [
			self writer
				formatBeforeDeclaration: self;
				nextPutAll: '<!';
				nextPutAll: self declarationType;
				space;
				writeName: self name]