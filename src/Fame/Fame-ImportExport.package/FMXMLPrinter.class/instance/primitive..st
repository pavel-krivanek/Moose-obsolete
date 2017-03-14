parsing
primitive: value

	stream nextPut: $>.
	indent := indent + 1.
	self crTabs.
	(value isKindOf: Boolean) ifTrue: [
		stream 
			nextPutAll: '<Boolean value="';
			print: value;
			nextPut: $";
			nextPut: $/ ] ifFalse: [
	(value isKindOf: String) ifTrue: [
		stream nextPutAll: '<String value="'.
		value do: [ :char | | charToPrint |
			$" == char ifTrue: [ 
				stream nextPut: $\ ].
			Character cr == char ifTrue: [
				stream nextPut: $\.
				charToPrint := $n ].
			Character tab == char ifTrue: [
				stream nextPut: $\.
				charToPrint := $t ].
			stream nextPut: (charToPrint ifNil: [ char ] ) ].
		stream
			nextPut: $";
			nextPut: $/ ] ifFalse: [
	(value isKindOf: Number) ifTrue: [
		stream 
			nextPutAll: '<Number value="';
			print: value;
			nextPut: $";
			nextPut: $/ ] ifFalse: [ Error signal ]]].
	indent := indent - 1.