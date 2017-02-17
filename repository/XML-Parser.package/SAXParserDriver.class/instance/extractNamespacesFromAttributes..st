private
extractNamespacesFromAttributes: anOrderPreservingDictionary
	"returns an ordered collection of namespace prefix/uri associations
	removed from the attribute dictionary or nil if there aren't any"
	| namespaces keysToRemove |

	self haveNoUnhandledReservedAttributes.
	anOrderPreservingDictionary keysDo: [:name |
		"optimized comparison ordering"
		(name at: 1) == $x
			ifTrue: [
				name isXMLNSAttributeName
					ifTrue: [
						"only initialize when needed"
						(namespaces ifNil: [namespaces := OrderedCollection new: 5])
							addLast:
								(name size > 6 "'xmlns:' size"
									ifTrue: [name copyFrom: 7 to: name size]
									ifFalse: ['']) ->
										(anOrderPreservingDictionary at: name).
						"only initialize when needed"
						(keysToRemove ifNil: [keysToRemove := OrderedCollection new: 5])
							addLast: name]
					ifFalse: [
						name isXMLReservedAttributeName
							ifTrue: [
								"at least one xml attr is not an xmlns attr, so there
								will still be reserved attrs to handle after extracting
								the namespaces"
								self haveUnhandledReservedAttributes]]]].

	keysToRemove
		ifNotNil: [
			"use removeKeys: for speed"
			anOrderPreservingDictionary removeKeys: keysToRemove].

	^ namespaces.