tests - complex
testImports
	| text using imports   |
	text := '

/** whatever */	
using a.b.c;
// another comment
using c.d.e;
// some comment
namespace cde {
}	
	'.
	
	using := 'using' asParser trim, (self identifier, ('.' asParser, self identifier) star) flatten ==> [:t | t second].
	imports := ((self sea: using) ==> [:t | t second ]) star.
	
	result := imports parse: text.
	
	self assert: result size = 2.
	self assert: result first = 'a.b.c'.
	self assert: result second = 'c.d.e'.
