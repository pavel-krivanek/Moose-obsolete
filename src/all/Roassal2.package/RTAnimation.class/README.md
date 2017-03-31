I am called on every Morphic repaint cycle so you can update your visualization accordingly.

==#start== method is called when the animation has been added to the view (so you can prepare your animation)

==#refresh== is called on every repaint cycle (depending on the configured FPS many times every second)

==#hasCompleted== should return ==true== once your animation has completed it's purpose, then it is automatically removed/detached from the view.