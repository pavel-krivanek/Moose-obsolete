utility
mark: backElement with: elements
	(backElement hasAttribute: #nestedElements)
		ifFalse: [ backElement attributeAt: #nestedElements put: RTGroup new ].
	(backElement attributeAt: #nestedElements) addAll: elements.
	elements do: [ :anElement | anElement attributeAt: #parentElement put: backElement ]