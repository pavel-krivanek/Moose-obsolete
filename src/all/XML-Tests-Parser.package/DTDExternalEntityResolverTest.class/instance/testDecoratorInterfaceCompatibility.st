tests
testDecoratorInterfaceCompatibility
	| resolver resolverBaseClass |

	self isTestingLimiting
		ifFalse: [^ self].

	"decorators must support the resolver base class's public interface"
	resolver := self newResolver.
	resolverBaseClass := DTDExternalEntityResolver.
	"avoid #methodsDo: for GS compatibility"
	resolverBaseClass selectorsDo: [:each |
		"use #whichCategoryIncludesSelector: for backwards compatibility"
		((resolverBaseClass whichCategoryIncludesSelector: each)
			asString beginsWith: 'private')
			ifFalse: [
				self assert: (resolver respondsTo: each)]].