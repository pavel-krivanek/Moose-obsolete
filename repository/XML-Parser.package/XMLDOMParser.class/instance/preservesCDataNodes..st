configuring
preservesCDataNodes: aBoolean
	"if enabled, <![CDATA[...]]> sections will be preserved as CDATA nodes
	and not ordinary string nodes and won't be merged with adjacent string
	nodes (not default)"
	self configuration preservesCDataNodes: aBoolean