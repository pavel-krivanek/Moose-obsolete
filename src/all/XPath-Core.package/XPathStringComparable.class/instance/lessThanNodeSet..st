private
lessThanNodeSet: aNodeSet
	| number |
	
	number := value asXPathNumber.
	^ aNodeSet anySatisfy: [:each |
		number < each stringValue asXPathNumber].