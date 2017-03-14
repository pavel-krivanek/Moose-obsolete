private
createElements: atree nesting: block1 leaves: block2 depth: depth
	| e |
	e := super createElements: atree nesting: block1 leaves: block2 depth: depth.
	maxLevel := maxLevel max: depth.
	^ e