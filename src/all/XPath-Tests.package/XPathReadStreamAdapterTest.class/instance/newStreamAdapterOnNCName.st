instance creation
newStreamAdapterOnNCName
	^ self streamAdapterClass on:
		(self newStreamOn: self ncName)