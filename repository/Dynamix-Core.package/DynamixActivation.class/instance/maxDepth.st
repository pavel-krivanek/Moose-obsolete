accessing-derived
maxDepth
	| maxLevel max |
	maxDepth := 0.
	self children notEmpty 
		ifTrue: [
			maxLevel := 0.
			self allChildren do: [:ea | (ea level > maxLevel) ifTrue: [maxLevel := ea level]].
			max := maxLevel - self level ].
    ^ max