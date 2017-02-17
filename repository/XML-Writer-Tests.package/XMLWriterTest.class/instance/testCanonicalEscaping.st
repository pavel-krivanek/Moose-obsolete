tests
testCanonicalEscaping
	| writer tag |

	"Attributes are changed 'by replacing all ampersands (&) with
	&amp;, all open angle brackets (<) with &lt;, all quotation mark
	characters with &quot;...'

	PCDATA is changed so 'all ampersands are replaced by &amp;,
	all open angle brackets (<) are replaced by &lt;, all closing
	angle brackets (>) are replaced by &gt;...'"
	(writer := XMLWriter new)
		isCanonical: true.
	(tag := writer tag: 'canonical')
		attributeAt: 'escaping'
		put: '<>"''&'.
	tag with: '<>"''&'.
	self assert:
		writer contents =
			'<canonical escaping="&lt;>&quot;''&amp;">&lt;&gt;"''&amp;</canonical>'.