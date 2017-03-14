private
unsafeAdd: element

	(values includes: element) not ifTrue: [
		values add: element ]