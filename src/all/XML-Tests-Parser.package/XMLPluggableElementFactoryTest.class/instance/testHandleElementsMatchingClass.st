tests
testHandleElementsMatchingClass
	| document |

	document :=
		(XMLDOMParser on: self sampleUsersXML)
			nodeFactory:
				(XMLPluggableElementFactory new
					handleElementsMatchingClass: XMLFUserElement;
					handleElementsMatchingClass: XMLFUsernameElement;
					handleElementsMatchingClass: XMLFRealNameElement);
			parseDocument.

	document root elementsDo: [:element |
			self
				assert: (element class == XMLFUserElement);
				assert: (element elements first class == XMLFUsernameElement);
				assert: (element elements second class == XMLFRealNameElement)].