parse support
nilIsland
	|  nilIsland |
	nilIsland := self seaInstance.
	
	nilIsland island: nil asParser.
	nilIsland name: 'nil island'.
	
	^ nilIsland