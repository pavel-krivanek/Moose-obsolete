spec
test_c_l_folded
	self parse: '>
 folded
 text
' rule: #c_l_folded.
	self assert: result = 'folded text
'.

	self parse: '>

 folded
 line

 next
 line
   * bullet

   * list
   * lines

 last
 line

# Comment' rule: #c_l_folded.

	self assert: result = '
folded line
next line
  * bullet

  * list
  * lines

last line
'.