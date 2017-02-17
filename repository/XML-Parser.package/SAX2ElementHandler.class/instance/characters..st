handling - content
characters: aString
	"Handles character data in an element, such as the 'test' in
	'<characters>test</characters>' or in the CDATA section '<![CDATA[test]]>'.
	
	It may be sent multiple times for different sections of character data
	in a single element if they're separated by other nodes or entity
	references like in '<characters>one<!--comment-->two</characters>'."