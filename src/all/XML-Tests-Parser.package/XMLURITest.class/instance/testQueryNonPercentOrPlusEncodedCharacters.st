tests
testQueryNonPercentOrPlusEncodedCharacters
	| queryKey queryValue uriString uri |

	queryKey :=
		(self nonPercentEncodedPathCharacters copyWithoutAll: '=&+'), '/?'.
	queryValue :=
		(self nonPercentEncodedPathCharacters copyWithoutAll: '&+'), '/?'.
	uriString := '?', queryKey, '=', queryValue.
	uri := uriString asXMLURI.
	self
		assert: uri query = (OrderedCollection with: queryKey -> queryValue);
		assert: (uri queryAt: queryKey) = queryValue;
		assert:
			(uri
				queryAt: queryKey
				ifAbsent: ['absent']) = queryValue;
		assert:
			(uri queryValuesAt: queryKey) = (OrderedCollection with: queryValue);
		assert:
			(uri
				queryValuesAt: queryKey
				ifAbsent: [#('absent')]) = (OrderedCollection with: queryValue);
		assert: uri queryKeys = (OrderedCollection with: queryKey);
		assert: (uri queryIncludesKey: queryKey);
		assert: uri rawQuery = (OrderedCollection with: queryKey -> queryValue).

	uri uriString: nil.
	self assert: uri printString = uriString.