accessing
prototype
	^ prototype
		ifNil: [
			prototype :=
				(XPathFunctionPrototypeParser
					on: self prototypeSource
					for: XPathTypedFunctionPrototypeParserHandler new)
					parse]