private
writeBody
	self isOmittable
		ifFalse: [
			self isExternalIDOmittable
				ifTrue: [self writeReplacement]
				ifFalse: [
					self writeExternalID.
					self isUnparsed
						ifTrue: [self writeNData]]]