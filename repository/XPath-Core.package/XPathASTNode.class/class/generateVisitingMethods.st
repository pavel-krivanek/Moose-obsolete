private
generateVisitingMethods
	"self generateVisitingMethods"

	self allSubclassesDo: [:each | | nameWithoutPrefixAndSuffix |
		nameWithoutPrefixAndSuffix := each nameWithoutPrefixAndSuffix.
		each
			compile: 'acceptNodeVisitor: aNodeVisitor
	aNodeVisitor visit', nameWithoutPrefixAndSuffix, ': self'
			classified: #visiting.
		XPathASTNodeVisitor
			compile:
				'visit', nameWithoutPrefixAndSuffix, ': ',
					((nameWithoutPrefixAndSuffix first isVowel
						and: [(nameWithoutPrefixAndSuffix beginsWith: 'Un') not])
						ifTrue: ['an']
						ifFalse: ['a']), nameWithoutPrefixAndSuffix
			classified: #visiting]