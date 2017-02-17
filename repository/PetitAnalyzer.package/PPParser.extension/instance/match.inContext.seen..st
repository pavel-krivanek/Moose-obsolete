*petitanalyzer-matching
match: aParser inContext: aDictionary seen: anIdentitySet
	"This is the default implementation to match two parsers. This code can properly handle recursion. This is code is supposed to be overridden in subclasses that add new state."

	(self == aParser or: [ anIdentitySet includes: self ])
		ifTrue: [ ^ true ].
	anIdentitySet add: self.
	^ self class = aParser class and: [ self matchList: self children against: aParser children inContext: aDictionary seen: anIdentitySet ]