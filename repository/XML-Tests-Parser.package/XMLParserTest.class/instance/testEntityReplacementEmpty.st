tests
testEntityReplacementEmpty
	| xml document |

	xml := '<?xml version="1.0"?>
	<!DOCTYPE entities [
		<!ENTITY % inner "">
		%inner;
		<!ENTITY inner  ""> 
		<!ENTITY outer ''&inner;''>]>
	<entities one="&outer;" two="&inner;" three=''&outer;'' four=''&inner;''>&outer;&inner;</entities>'.

	self
		shouldnt: [document := XMLDOMParser parse: xml]
		raise: XMLWellFormednessException.
	self
		assert: (document root attributeAt: 'one') = '';
		assert: (document root attributeAt: 'two') = '';
		assert: (document root attributeAt: 'three') = '';
		assert: (document root attributeAt: 'four') = '';
		assert: document root contentString = ''.