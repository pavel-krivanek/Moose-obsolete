private
writePrologue
	self isOmittable
		ifFalse: [
			self writer
				formatBeforePI: self;
				nextPutAll: '<?';
				writeName: self target]