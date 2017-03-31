private
checkCallback
	| call |
	onload ifNil: [ ^ self ].
	call := true.
	tiles keys do: [ :k | 
		(tiles at: k) = self class emptyTile ifTrue: [ call:= false] ].
	call ifTrue: [ onload fork ].