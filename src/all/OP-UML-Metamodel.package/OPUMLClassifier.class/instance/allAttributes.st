operations
allAttributes
	"The query allAttributes gives an ordered set of all owned and inherited attributes of the Classifier. All owned attributes appear before any inherited attributes, and the attributes inherited from any more specific parent Classifier appear before those of any more general parent Classifier. However, if the Classifier has multiple immediate parents, then the relative ordering of the sets of attributes from those parents is not defined."
	
	"{OCL} result = (attribute->asSequence()->union(parents()->asSequence().allAttributes())->select(p | member->includes(p))->asOrderedSet())"
	
	| allAttributes |
	allAttributes := OrderedCollection new.
	allAttributes addAll: self attributes.
	sharedGeneralizations
		at: #Class
		ifPresent: [ :cls | allAttributes addAll: cls ownedAttributes ].
	self parents do: [ :each | allAttributes addAll: each allAttributes ].
	^ (allAttributes collect: [ :each | each -> 1 ]) asOrderedDictionary keys
