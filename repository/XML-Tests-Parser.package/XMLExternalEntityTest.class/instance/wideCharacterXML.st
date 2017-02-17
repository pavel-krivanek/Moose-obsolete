source
wideCharacterXML
	^ '<?xml version="1.0"?>
		<currency>
			<name>Euro</name>
			<symbol>{1}</symbol>
			<sub>
				<name>Cent</name>
				<symbol>{2}</symbol>
				<total>100</total>
			</sub>
		</currency>'
			format:
				(Array
					with: 16r20AC asCharacter
					with: 16rA2 asCharacter)