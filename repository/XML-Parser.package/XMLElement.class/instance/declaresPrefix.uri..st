testing
declaresPrefix: aPrefix uri: aURI
	"Did the receiver declare a new prefix/uri pair rather than inheriting one?"

	^ (self isDeclaredPrefix: aPrefix uri: aURI)
		and: [self isRoot
			or: [(self parent isDeclaredPrefix: aPrefix uri: aURI) not]]