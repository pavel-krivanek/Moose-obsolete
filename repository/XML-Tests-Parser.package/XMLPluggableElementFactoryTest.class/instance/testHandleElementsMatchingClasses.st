tests
testHandleElementsMatchingClasses
	| document |

	document :=
		(XMLDOMParser on: self sampleUsersXML)
			nodeFactory:
				(XMLPluggableElementFactory new
					handleElementsMatchingClasses:
						(Array
							with: XMLFUserElement
							with: XMLFUsernameElement
							with: XMLFRealNameElement));
			parseDocument.

	document root elementsDo: [:element |
			self
				assert: (element class == XMLFUserElement);
				assert: (element elements first class == XMLFUsernameElement);
				assert: (element elements second class == XMLFRealNameElement)].