building
from: objects nesting: block1 leaves: block2

	rootNodes := objects collect: [:obj | self createElements: obj nesting: block1 leaves: block2 depth: 1 ].
	
	^ rootNodes