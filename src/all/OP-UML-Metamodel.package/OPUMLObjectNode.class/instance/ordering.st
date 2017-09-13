accessing
ordering
	"Indicates how the tokens held by the ObjectNode are ordered for selection to traverse ActivityEdges outgoing from the ObjectNode."
	^ ordering ifNil: [ ordering := OPUMLObjectNodeOrderingKind new FIFO ]