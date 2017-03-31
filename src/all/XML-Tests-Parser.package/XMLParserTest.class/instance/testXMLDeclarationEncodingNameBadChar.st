tests
testXMLDeclarationEncodingNameBadChar
	| validChars |

	validChars := '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_.-'.
	0 to: 255 do: [:each | | char charString |
		char := each asCharacter.
		(validChars includes: char)
			ifFalse: [
				charString := char asString.
				self
					should: [SAXHandler parse: '<?xml version="1.0" encoding="ISO', charString, '"?>']
					raise: XMLWellFormednessException]].