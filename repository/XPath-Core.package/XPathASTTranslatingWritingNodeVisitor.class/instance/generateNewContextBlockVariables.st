private
generateNewContextBlockVariables
	| indexString |

	indexString := self generateNewContextBlockIndex asString.
	^ contextBlockVariables :=
		Array
			with: (indexString copyWithFirst: $n) "node variable"
			with: (indexString copyWithFirst: $p) "position variable"
			with: (indexString copyWithFirst: $s). "size variable"