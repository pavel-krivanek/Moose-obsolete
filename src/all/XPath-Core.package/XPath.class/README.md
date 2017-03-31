This class evaluates XPath expressions in the context of XMLNodes with optional custom context objects to control evaluation. It supports complete XPath 1.0 syntax with extensions.

Basic usage:
	| doc path result context |
	doc := XMLDOMParser parse: '<test>test</test>'.
	path := XPath for: '/test'.
	result := path in: doc.

	"with a custom context"
	path := XPath for: '/*[name() = $name]'.
	context :=  XPathContext new.
	context
		variableAt: 'name'
		put: 'test'.
	result :=
		path
			in: doc
			context: context.

The syntax extensions are:
- Prefix wildcards in name tests like "*:name"
- Expanded name tests like "Q{namespaceURI}localName" that allow easier namespace testing 
- The element(), attribute(), and namespace() type tests that can also have embedded name tests like "element(name)"

Unlike standard XPath, by default prefixes in node tests are matched against literal prefixes of nodes, so you don't need to declare prefixes in the context before using them in node tests. Declaring at least one prefix triggers standard behavior. See XPathContext for more.

XPath expressions can be encoded directly in Smalltalk using special binary selectors on XMLNodes and  XMLNodeSets:
	xmlNode // 'entry' / '*' / 'link' @ 'href'.

Block or position predicates can be applied with ?? to axis node test arguments or to result node sets. This returns the first element of each 'entry' descendant:
	xmlNode // 'entry' / ('*' ?? 1).

These return the first (document order) element of the first (document order) 'entry' descendant:
	(xmlNode // 'entry' / '*') ?? 1.
	xmlNode // 'entry' / '*' ?? 1. "same"

Block predicates take upto three arguments, the context node, context position, and context size. This returns the 2nd-5th 'link' elements of all descendant 'entry' elements with no more than 5 'link' elements:
	xmlNode // 'entry' //
		('link' ?? [:node :position :size |
				position >= 2
					and: [size <= 5]]).

Multiple predicates are supported by chaining ?? or using collection arguments. These return the first 'content' element with children of each 'entry' descendant:
	xmlNode // 'entry' //
		('content'
			?? [:node | node hasChildren]
			?? 1).
	xmlNode // 'entry' //
		('content' ?? {[:node | node hasChildren]. 1})