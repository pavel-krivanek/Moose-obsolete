private
axisSpecifiersTemplate
	"Returns an array of arrays where each subarray has an axis name,
	a handler selector to map it to, and the principal node type for
	that axis, which is used to determine the parser state class
	when parsing the node test after."

	^ #(
		#('ancestor'           handleAncestorAxis         element)
		#('ancestor-or-self'   handleAncestorOrSelfAxis   element)
		#('attribute'          handleAttributeAxis        attribute)
		#('child'              handleChildAxis            element)
		#('descendant'         handleDescendantAxis       element)
		#('descendant-or-self' handleDescendantOrSelfAxis element)
		#('following'          handleFollowingAxis        element)
		#('following-sibling'  handleFollowingSiblingAxis element)
		#('namespace'          handleNamespaceAxis        namespace)
		#('parent'             handleParentAxis           element)
		#('preceding'          handlePrecedingAxis        element)
		#('preceding-sibling'  handlePrecedingSiblingAxis element)
		#('self'               handleSelfAxis             element)
	)