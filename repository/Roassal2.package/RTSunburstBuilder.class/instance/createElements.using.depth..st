private
createElements: atree using: ablock depth: depth
	| e |
	e := super createElements: atree using: ablock depth: depth.
	maxLevel := maxLevel max: depth.
	^ e