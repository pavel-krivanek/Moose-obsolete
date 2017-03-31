testing
hasScopedAttributes
	"optimized to avoid lazy initialization"
	scopedAttributes == nil
		ifTrue: [^ false].
	^ scopedAttributes size > 0.