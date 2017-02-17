private
encode: aString
	| result |
	result := aString asString.
	result := result copyReplaceAll: '&' with: '&amp;'. 
	result := result copyReplaceAll: '£' with: 'POUND'.
	result := result copyReplaceAll: '"' with: '&quot;'. 
	result := result copyReplaceAll: '<' with: '&lt;'.
	result := result copyReplaceAll: 'Ä' with: 'AE'.
	result := result copyReplaceAll: 'Ï' with: 'I'.
	result := result copyReplaceAll: 'Ü' with: 'UE'.
	result := result copyReplaceAll: 'Ö' with: 'OE'.
	result := result copyReplaceAll: 'ï' with: 'i'.
	result := result copyReplaceAll: 'ö' with: 'oe'.
	result := result copyReplaceAll: 'ä' with: 'ae'.
	result := result copyReplaceAll: 'ü' with: 'ue'.
	result := result copyReplaceAll: 'é' with: 'e'.
	result := result copyReplaceAll: 'è' with: 'e'.
	result := result copyReplaceAll: 'à' with: 'a'.
	result := result copyReplaceAll: 'â' with: 'a'.
	^ result