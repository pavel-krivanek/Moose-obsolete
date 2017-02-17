hooks
renderIn: aView
	aView addAll: self elements.
	self elements do: #updateShape.