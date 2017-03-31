test-grammar
testFile04
	code := '
import re
for test_string in [''555-1212'', ''ILL-EGAL'']:
    if re.match(r''^\d{3}-\d{4}$'', test_string):
        print test_string, ''is a valid US local phone number''
    else:
        print test_string, ''rejected''
'.
	self parse: code.
	
	self assert: result size = 6.
	self assert: result first = #for:.
	self assert: result second = #if:.
	self assert: result third = #print.
	self assert: result fourth = #print.
	self assert: result fifth = #':if'.
