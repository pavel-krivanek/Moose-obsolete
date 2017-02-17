private
writePrologue
	self isOmittable
		ifFalse: [
			self writer
				formatBeforeDeclaration: self;
				nextPutAll: '<!';
				writeName: self declarationType;
				space;
				writeName: self name;
				space]