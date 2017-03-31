initialization
initializePresenter

	"This causes the diagram's script to be executed again."
	button1 action: [ view add: (RTEllipse new size: 40 atRandom) element. view signalUpdate ].
	button2 action: [ RTFlowLayout on: view elements. view signalUpdate ]