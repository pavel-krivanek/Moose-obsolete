tests - complex
testFile2
	| text using imports class file |
	text := '
	
using a.b.c;
using c.d.e;
// some comment
namespace cde {

class Foo 
endclass

public class 123 // invalid class
public struct {}

class bar endclass
}	
	'.
	
	using := 'using' asParser trim, (self identifier, ('.' asParser, self identifier) star) flatten ==> [:t | t second].
	
	imports := (self sea: using) star.
	
	class := ('public' asParser trim optional, 'class' asParser trim, self identifier,  'endclass' asParser trim) 
		==> [:t | t third] .
	file := imports, ((self sea: class) ==> [:t | t second ]) plus.	
	
	result := file parse: text.
	
	self assert: result isPetitFailure not.
