instance creation
newStreamAdapterOnBadQualifiedName
	^ self streamAdapterClass on:
		(self newStreamOn: self badQualifiedName)