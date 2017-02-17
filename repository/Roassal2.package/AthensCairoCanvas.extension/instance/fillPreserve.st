*roassal2
fillPreserve
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #(#void #cairo_fill_preserve #(#self))

	