private
resolvePrefix: aPrefix
	^ self
		resolvePrefix: aPrefix
		ifUnresolvable: ''