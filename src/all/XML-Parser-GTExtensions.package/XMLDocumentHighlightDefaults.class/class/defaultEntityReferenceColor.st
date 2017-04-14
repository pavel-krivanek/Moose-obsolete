accessing
defaultEntityReferenceColor
	^ defaultEntityReferenceColor
		ifNil: [
			defaultEntityReferenceColor :=
				self textColorForShoutProperty: #character]