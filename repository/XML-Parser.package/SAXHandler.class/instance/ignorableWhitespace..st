handling - content
ignorableWhitespace: aString
	"When validation is enabled and a DTD with element declarations is
	present, this can be used to handle ignorable whitespace in elements
	with 'element content' (meaning they can only contain other elements
	and no PCDATA), such as between '<element-content>' and '<mixed-content>'
	or between '</mixed-content>' and '</element-content>' in this sample:
		'<!DOCTYPE element-content [
			<!--this has element content, so its whitespace is ignorable-->
			<!ELEMENT element-content (mixed-content)>
			<!--this has mixed content, so its whitespace is not ignorable-->
			<!ELEMENT mixed-content (#PCDATA|any-content)*>
			<!--this has any content, so its whitespace is not ignorable-->
			<!ELEMENT any-content ANY>
		]>
		<element-content>
			<mixed-content>
				<any-content> any </any-content>
			</mixed-content>
		</element-content>'

	Not sent if validation is disabled or if there's no DTD with element
	declarations."