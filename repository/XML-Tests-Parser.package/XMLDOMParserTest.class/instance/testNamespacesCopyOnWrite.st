tests
testNamespacesCopyOnWrite
	| xml elements |

	xml := 
		'<one xmlns:prefix1="ns" xmlns="defualt">
			<two xmlns:prefix2="ns2"><three /></two>
			<four><five xmlns:prefix1="ns3" xmlns="defualt2" /></four>
		</one>'.
	elements := (XMLDOMParser parse: xml) allElements.
	self assert:
		(IdentitySet withAll: "avoid newFrom: for GS portability"
			(elements collect: [:each |
				each namespaceScope prefixMappings])) size = 3.

	elements := (XMLDOMParser parse: xml usingNamespaces: false) allElements.
	self assert:
		(IdentitySet withAll: "avoid newFrom: for GS portability"
			(elements collect: [:each |
				each namespaceScope prefixMappings])) size = elements size.