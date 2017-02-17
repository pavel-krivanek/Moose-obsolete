I am a lightweight alternative to RTDraggable.

During dragging, instead of moving the original element I create a "ghost double" that is dragged instead, and only when the dragging is complete the original shape is moved.

I am useful if the original elements has many children or related elements that would have to be updated during each dragging step. With me only single update at the end occurs.

!! Example

RTInteractionExample new exampleGhostDraggable open