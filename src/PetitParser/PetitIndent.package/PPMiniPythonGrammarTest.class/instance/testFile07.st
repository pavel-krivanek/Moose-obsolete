test-grammar
testFile07
	code := '
# indent your Python code to put into an email
import glob
# glob supports Unix style pathname extensions
python_files = glob.glob(''*.py'')
for file_name in sorted(python_files):
    print ''    ------'' + file_name

    with open(file_name) as f:
        for line in f:
            print ''    '' + line.rstrip()

    print bar
'.
	self parse: code.

	self assert: result size = 9.
	self assert: result first = #for:.
	self assert: result second = #print.
	self assert: result third = #with:.
	self assert: result fourth = #for:.
	self assert: result fifth = #print.
	self assert: result sixth = #':for'.
	self assert: result seventh = #':with'.
	self assert: result eighth = #print.
