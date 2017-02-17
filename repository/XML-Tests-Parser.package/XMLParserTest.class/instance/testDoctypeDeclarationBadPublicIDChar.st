tests
testDoctypeDeclarationBadPublicIDChar
	| validChars |

	validChars :=
		'!#$%''()*+,-./0123456789:;=?@ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz',
		(Character xmlSeparators copyWithout: Character tab).
	0 to: 255 do: [:each | | char charString |
		char := each asCharacter.
		(validChars includes: char)
			ifFalse: [
				charString := char asString.
				self
					should: [
						SAXHandler parse:
							'<!DOCTYPE test PUBLIC "//public//', charString, '" "external.dtd"><test/>']
					raise: XMLWellFormednessException]].
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE test PUBLIC "//public//', validChars, '" "external.dtd"><test/>']
		raise: XMLWellFormednessException.