private-pragmas
resolveFameNameFromPragma: class
	| pragma pakPragma typename |
	pragma := (self retrieveClassPragma: class).
	typename := pragma argumentAt: 1.
	pakPragma := self retrievePackagePragma: pragma.
	pakPragma ifNotNil:
		[ ^ (pakPragma argumentAt: 1), '.', typename ].
	^ typename