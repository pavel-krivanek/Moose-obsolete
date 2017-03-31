private
resolveReferences

	self elements do: [ :elem |
		elem attributes values do: [ :attr |
			attr resolveReferences: index ] ]