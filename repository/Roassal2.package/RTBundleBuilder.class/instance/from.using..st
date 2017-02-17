building
from: aCollection using: ablock
	childrenBlock := ablock.
	^ rootNodes := aCollection collect: [ :obj | self createElements: obj using: ablock depth: 1 ].