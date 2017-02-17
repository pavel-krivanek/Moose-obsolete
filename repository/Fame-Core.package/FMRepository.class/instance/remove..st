removing
remove: element

	elements remove: element ifAbsent: [].
	self postRemove: element.