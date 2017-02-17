resolving
resolvePrefix: aPrefix
	"Resolves the namespace URI of aPrefix (the defualt namespace URI if aPrefix
	is empty), including the predefined 'xml' and 'xmlns' prefixes. Returns an
	empty string if aPrefix is unresolvable."

	^ self
		resolvePrefix: aPrefix
		ifUnresolvable: ''