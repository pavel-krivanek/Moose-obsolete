instance creation
newStreamAdapterOnQualifiedName
	^ self streamAdapterClass on:
		(self newStreamOn: self qualifiedName)