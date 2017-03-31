let
_in
	"...the pre-parser inserts an implicit separating in token between each definition t
		hat begins at the same column as that token..."
		
	^ align, aligned ==> [ :e | #'_in' ]
