cochange
parallelInheritancePatterns
	
	| patterns toRemove |
	patterns := self
		coChangePatternsUsing:
			[:each | each referenceVersionsThatChangedPropertyNamed: #WNOC].
	patterns
		do:
			[:each | 
			toRemove := OrderedCollection new.
			each histories
				do:
					[:eachHistory | 
					(each histories
						anySatisfy:
							[:eachOtherHistory | eachHistory subHierarchy includes: eachOtherHistory])
						ifTrue: [toRemove addLast: eachHistory]].
			each histories removeAll: toRemove].
	^patterns select: [:each | each histories size > 2]