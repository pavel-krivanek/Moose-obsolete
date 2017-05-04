*XPath-GTExtensions
gtExampleXPathASTNode
	<gtExample>
	<label: 'addressbook/person[1]/address/@city'>
	
	^ (XPathExpressionParser
			on: 'addressbook/person[1]/address/@city'
			for: XPathASTExpressionParserHandler new) parse