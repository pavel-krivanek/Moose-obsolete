tests
testModulus
	#('5 mod 2' '5 mod -2' '$var mod 2' '$var mod -2') do: [:each |
		self assert:
			(each asXPath
				in: nil
				context:
					(XPathContext new
						variableAt: 'var' put: 5;
						yourself)) = 1].

	#('-5 mod 2' '-5 mod -2' '$var mod 2' '$var mod -2') do: [:each |
		self assert:
			(each asXPath
				in: nil
				context:
					(XPathContext new
						variableAt: 'var' put: -5;
						yourself)) = -1].

	#('6 mod 3' '6 mod -3' '$var mod 3' '$var mod -3') do: [:each | | result |
		result :=
			each asXPath
				in: nil
				context:
					(XPathContext new
						variableAt: 'var' put: 6.0;
						yourself).
		self assert: result isXPathPositiveZero].

	#('-6 mod 3' '-6 mod -3' '$var mod 3' '$var mod -3') do: [:each | | result |
		result :=
			each asXPath
				in: nil
				context:
					(XPathContext new
						variableAt: 'var' put: -6.0;
						yourself).
		self assert: result isXPathNegativeZero].

	#('0.0 mod 0' '0.0 mod -.0' '$var mod 0' '$var mod -.0') do: [:each |
		self assert:
			(each asXPath
				in: nil
				context:
					(XPathContext new
						variableAt: 'var' put: 0.0;
						yourself)) isNaN].

	#('-0.0 mod 0' '-0.0 mod -.0' '$var mod 0' '$var mod -.0') do: [:each |
		self assert:
			(each asXPath
				in: nil
				context:
					(XPathContext new
						variableAt: 'var' put: Float xpathNegativeZero;
						yourself)) isNaN].