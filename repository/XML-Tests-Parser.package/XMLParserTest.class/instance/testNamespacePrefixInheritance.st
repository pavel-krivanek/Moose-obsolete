tests
testNamespacePrefixInheritance
	self
		shouldnt: [
			SAXHandler
				parse:
					'<one xmlns:prefix1="ns">
						<prefix1:two xmlns:prefix2="ns2">
							<prefix2:three><prefix1:four /></prefix2:three>
						</prefix1:two>
					</one>'
				usingNamespaces: true]
		raise: XMLNamespaceException.
	
	#('<one xmlns:prefix1="ns">
			<prefix1:two xmlns:prefix2="ns2" />
			<prefix2:three />
		</one>'
		'<one xmlns:prefix1="ns">
			<prefix1:two xmlns:prefix2="ns2">
				<prefix2:three xmlns:prefix3="ns3" />
			</prefix1:two>
			<prefix3:four />
		</one>')
		do: [:each |
			self
				should: [
					SAXHandler
						parse: each
						usingNamespaces: true]
				raise: XMLNamespaceException.
			self
				shouldnt: [
					SAXHandler
						parse: each
						usingNamespaces: false]
				raise: XMLNamespaceException].