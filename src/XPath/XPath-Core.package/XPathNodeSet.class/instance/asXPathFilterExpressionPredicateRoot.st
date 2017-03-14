converting
asXPathFilterExpressionPredicateRoot
	"any node set can be filterd as a whole with predicates in a filter
	expression, like '(/one)[two]' or '$one[two]' (when $one is bound to
	a node set), but it must be sorted so predicate positions are relative to
	document order"
	^ self sorted