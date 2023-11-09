# Ideas
Here are some gameplay mechanics I have thought of.

- ## Rope Making
You can make rope by holding atleast 9 fiber and pressing the use input and it opens a UI called *"Braiding"*.
The brading UI shows three strands of the used fiber with a tie at the top and a propmt to press the *"right"* input. The left strand crosses over the middle strand, and it is now considered the middle strand.
Then you are prompted to press the *"left"* input, then the right strand crosses over the middle, and is now consided the middle strand.
You keep doing this till the chosen fiber is used up, which then closes the Braiding UI and gives braided rope, with the length depending on the amount of fiber used.

- ## Flint Knapping
Flint knapping is the process of hitting flint with a rock called the *"Hammerstone"* to break shards off the flint, called the *"Workpiece"*. These shards are sharp and can be used to make small game arrowheads.
By knapping the shards off the workpiece you can refine the shape till you reach the correct shape. I don't know if this is how it will be done, because it seems difficult to code, but we will see.

- ## Digging, and All That Entails
In the early game, you can use your hands to dig holes in loam, Though if you want to dig a hole in something that is harder, you will need to break it up with a hoe or a stick. A hole can be used for many things, such as pit kilns, charcoal pits, burying seeds to grow new plants, etc. There is a lot of things you can do with a hole.
  - ### Pit Kiln
    A pit kiln can be used to fire pottery that you have made.
  - ### Charcoal Pit
    A charcoal pit is a way to make charcoal. It is much more effecient than just burning campfires. To make one, dig a hole and place logs and sticks into it. Next, light the wood on fire and then cover it with the dirt you dug.

- ## World Generation
  A goal of mine is to have the world have randomly generated terrain. I want rivers to look like actual rivers and to be flowing, so that we can use water to push things. I will look into world generation then update this block once I have a formula.
  
  I have written an example file in the file [worldGen.txt](worldGen.txt). It uses Light Noise to decide information such as temperature, altitude, and moisture.
