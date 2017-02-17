accessing
encodingNames
	^ encodingNames
		ifNil: [
			"assign the fully initialized object with #yourself to avoid
			possible race conditions when reinitialization the class"
			encodingNames :=
				Set new
					addAll: self basicEncodingNames;
					addAll:
						(self basicEncodingNames collect: [:each | each asLowercase]);
					addAll:
						(self basicEncodingNames collect: [:each | each asUppercase]);
					yourself]