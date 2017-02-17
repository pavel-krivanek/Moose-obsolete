private
isPrimitiveTypeOrObject: each

	^each == FM3MetaDescription object or: [
		each == FM3MetaDescription string or: [
			each == FM3MetaDescription number or: [
				each == FM3MetaDescription boolean]]]