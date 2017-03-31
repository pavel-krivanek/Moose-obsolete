parse support
nestedBlock
	| blockIsland block nilIsland |
	blockIsland := self seaInstance.
	nilIsland := self nilIsland.
	
	block := PPDelegateParser new.
	block setParser: (${ asParser,  (blockIsland plus / nilIsland), $} asParser).
	block name: 'block'.
	
	blockIsland island: block.
	blockIsland name: 'block island'.
	^ block