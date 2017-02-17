enumerating
intersection: aNodeSet
	^ (self select: [:each | aNodeSet includes: each]) sort