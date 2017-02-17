private
writeBody
	self isOmittable
		ifTrue: [^ self].

	self externalIDWriter isOmittable
		ifTrue: [
			self writer writeEscapedEntityValueString:
				self replacement]
		ifFalse: [
			self externalIDWriter writeOn: self writer.
			self isUnparsed
				ifTrue: [
					self writer
						space;
						nextPutAll: 'NDATA';
						space;
						writeName: self ndata]].