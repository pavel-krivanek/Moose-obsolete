private
prescanNodesForSharedParent
	"check if all nodes in the node set have the same parent so sorting
	can be done quicker and if there are no attributes or namespaces
	in the node set so they can be ignored during sorting"

	| sharedParent |

	sharedParent := nodeSetCollection first parent.

	"we could breakout once sharedParent is nil (there isn't one) and
	mustVisitNamespaces and mustVisitAttributes are both true, because
	no more info is needed, but that's so uncommon (attributes and namespace
	nodes in a node set and no shared parent) that it's not worth testing for
	each iteration"
	nodeSetCollection do: [:each |
		each isNamespace
			ifTrue: [mustVisitNamespaces := true]
			ifFalse: [
				each isAttribute
					ifTrue: [mustVisitAttributes := true]].
		sharedParent
			ifNotNil: [
				each parent == sharedParent
					ifFalse: [sharedParent := nil]]].
	^ sharedParent.