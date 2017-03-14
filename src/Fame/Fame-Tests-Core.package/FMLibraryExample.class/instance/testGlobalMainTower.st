examples
testGlobalMainTower
	| lib ttt |
	lib := self testCreateSCGLibrary.
	ttt := lib class reset mainLibrary.	"---- has global side-effect!"
	ttt model add: lib.
	ttt metamodel elements should include: ttt model elements anyOne metaDescription