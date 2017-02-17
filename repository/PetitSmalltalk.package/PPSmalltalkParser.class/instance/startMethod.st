accessing
startMethod
	"Make sure the method node has the source code properly set."
	
	^ ([ :stream | stream collection ] asParser and , super startMethod)
		map: [ :source :node | node source: source ]