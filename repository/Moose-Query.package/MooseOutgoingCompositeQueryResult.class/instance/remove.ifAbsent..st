removing
remove: oldObject ifAbsent: anExceptionBlock

	^ super remove: oldObject ifAbsent: [
			invocationStorage remove: oldObject ifAbsent: anExceptionBlock ]