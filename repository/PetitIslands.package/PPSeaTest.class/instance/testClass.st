tests - complex
testClass
	| text   file class |
	text := '
// some comment
namespace cde {

public class Foo 
endclass

public class 123 // invalid class
public struct {}

class bar endclass
class Zorg endclass
}	
	'.
	
	class := ('public' asParser trim optional, 'class' asParser trim, self identifier,  'endclass' asParser trim) 
		==> [:t | t third] .
	file := ((self sea: class) ==> [:t | t second ]) plus.	
	
	result := file parse: text.
	self assert: result size = 3.
	self assert: result first = 'Foo'.
	self assert: result second = 'bar'.
	self assert: result third = 'Zorg'.
