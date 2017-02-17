validating
validatePrefix: aPrefix ofAttribute: anAttribute hasNoAliasesin: aSet
	| namespace oldSize |

	namespace := self validateAndResolvePrefix: aPrefix.

	"a #size check after is faster than #includes:"
	oldSize := aSet size.
	(aSet
		add: (anAttribute xmlLocalNameAfterPrefix: aPrefix) -> namespace;
		size) > oldSize
		ifFalse: [
			self
				errorAttribute: anAttribute
				aliasesNamespace: namespace]