tests
testEntityLiteralContextNesting
	| xml inner outer document |

	xml := '<?xml version="1.0"?>
	<!DOCTYPE entities [
		<!ENTITY % inner " <!ENTITY inner  &#34; '' inner &#39; &#34;>">
		%inner;
		<!ENTITY outer '' &#39; " &inner; &#39; " ''>
	]>
	<entities one="&outer;" two="&inner;" three=''&outer;'' four=''&inner;''>&outer;&inner;</entities>'.
	inner := ' '' inner '' '.
	outer := ' '' " ', inner, ' '' " '.

	self
		shouldnt: [document := XMLDOMParser parse: xml]
		raise: XMLWellFormednessException.
	self
		assert: (document root attributeAt: 'one') = outer;
		assert: (document root attributeAt: 'two') = inner;
		assert: (document root attributeAt: 'three') = outer;
		assert: (document root attributeAt: 'four') = inner;
		assert: (document root contentString) = (outer, inner).