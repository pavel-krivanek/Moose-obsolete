A PPMemoizingIsland is memoized version of PPIsland. Use this one, unless you don't mind really bad performance. If the memoized version is not working flawlessly, its a bug!

Please see help of the PPIsland for how to use...

Instance Variables
	memoizationDictionaries:		<Object>
	rootParser:		<Object>

memoizationDictionaries
	- memoization cache

rootParser
	- used for memoizing, once the root changes, flushes the caches
