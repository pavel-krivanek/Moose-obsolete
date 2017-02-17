private
copiedPrefixMappings
	"replaces current mappings with copy for copy-on-write"
	prefixMappings
		ifNil: [^ self prefixMappings]
		ifNotNil: [^ prefixMappings := prefixMappings copy]