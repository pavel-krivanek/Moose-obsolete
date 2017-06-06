private
unsafeAdd: element
	(values includes: element)
		ifFalse: [ values add: element ]