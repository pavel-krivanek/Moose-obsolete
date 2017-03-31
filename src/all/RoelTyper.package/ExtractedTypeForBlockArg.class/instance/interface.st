private-accessing
interface
	^(lives inject: Set new into: [:ord :et | ord addAll: (et interface); yourself ]) asOrderedCollection