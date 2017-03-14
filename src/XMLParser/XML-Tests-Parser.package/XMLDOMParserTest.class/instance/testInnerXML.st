tests
testInnerXML
	| document |

	document := XMLDOMParser parse: self addressBookXML.
	document allElementsNamed: 'person' do: [:person | | contactInfo address1 address2 |
		#('address' 'job-info' 'manager') do: [:each |
			self assert: (person elementAt: each) innerXML = ''].

		contactInfo := person elementAt: 'contact-info'.
		address1 := (person attributeAt: 'first-name'), '@example.com'.
		address2 := (person attributeAt: 'first-name'), '@users.example.com'.
		self
			assert: (contactInfo innerXML: '<email></email><email2/>') innerXML = '<email /><email2 />';
			assert: contactInfo elements size = 2;
			assert: (contactInfo elements first isNamed: 'email');
			assert: (contactInfo elements second isNamed: 'email2');
			assert: (contactInfo firstElement innerXML: address1, '<!--ignored-->') innerXML = address1;
			assert: (contactInfo elements second innerXML: '<![CDATA[', address2, ']]>') innerXML = address2.
		self assert:
			contactInfo innerXML = 
				('<email>', address1, '</email><email2>', address2, '</email2>')].