# 32-bit Arithmetic Logic Unit (ALU) for the Beta Processor

In this lab, we will build a 32-bit **Arithmetic and Logic Unit (ALU)** for the Beta processor. This ALU will be essential for your 1D Project Checkoff 1 and Lab 4, where we’ll expand on it to build a complete Beta CPU. 


Google Docs Link :https://docs.google.com/document/d/1l3-4kyhg9b8mtr-oamoHcYWCpaH2rKl1D6EYhDtmV9w/edit?usp=sharing


## Overview

The **Arithmetic Logic Unit (ALU)** is a **combinational logic device** responsible for performing arithmetic and logic operations within a CPU. Our ALU has two 32-bit inputs (`A` and `B`) and produces a 35-bit output:
- `alu[31:0]`: The primary 32-bit result of the operation.
- `Z`: Zero flag, indicating if the result is zero.
- `V`: Overflow flag.
- `N`: Negative flag.

## ALU Modules

To build the ALU modularly, we will create separate units for each core operation. These include:
1. **Addition/Subtraction Unit** - Handles basic addition and subtraction.
2. **Comparison Unit** - Used for branching by comparing values.
3. **Boolean Unit** - Performs bitwise operations like XOR and masking.
4. **Shifter Unit** - Supports bit shifts for division/multiplication by 2 and data manipulation.
5. **Multiplier Unit** - Responsible for multiplication, requiring a more complex design.

Each of these modules will generate its own 32-bit output, which we’ll later combine to produce a single ALU result.

Consult 50.002 lab handout for more information.

## User Manual
### Components
The machine consists of the following interactive components:
**Inputs:**
-2x non-lit buttons: START and SELECT used for selecting the difficulty/stage.
-16x LED-lit buttons arranged in a 4 by 4 grid. These buttons will be used for playing/solving the puzzle stages.

**Outputs:**
-2x 7-segment LED displays.
	-During difficulty/stage selection: Displaying the chosen difficulty/stage number to the player
	-During Gameplay: the right-side displays the current count of moves performed in the current attempt to solve the stage; the left-side displays the minimum number of required moves to solve the stage.
-The 4 by 4 LED grid will serve the purpose of indicating the current state (lit/unlit) of each light in the 4 by 4 grid, which indicates the current state of the puzzle.

### Startup: Difficulty and Stage Selection
1. Upon powering-on the prototype. the player will first be required to select the desired difficulty of the puzzle. At this stage, the user can repeatedly press the SELECT (green) button to toggle between the difficulty options of Easy and Hard mode, with the currently selected option displayed on the 7-segment displays as ‘EASY’ and ‘HArd’ respectively. 
Upon deciding upon a selected difficulty, the player can press the START (red) button to confirm the selected difficulty.

2. Next, the stage (represented by the number displayed on the right-side 7-segment display) can be selected by the player via pressing the SELECT (green) button to toggle between the different stages available. Once the player has decided on a stage, the selection can be confirmed by pressing the START (red) button. This will load the selected stage layout and begin the gameplay phase.

### Gameplay
1. When the difficulty and stage has been selected, the stage map will be displayed via the LEDs of the 4 by 4 button grid within the white square of the prototype. The left-side 7-segment display will display the known minimum number of moves required to complete the stage, while the right-side display will show the count of how many button presses have been made in the current solving attempt.
2. When any button is pressed, this will toggle the state of the LED light of the pressed button, as well as the lights of all adjacent buttons: to the left, right, above and below. If the difficulty selected is HARD, the buttons at the edges of the grid, when pressed, will also affect the lights at the opposite ends of the grid.
3. Whenever a player presses a button to change the state of the puzzle, the counter in the right-side display will increase to reflect a successful button press. Players should ensure to press the button firmly to ensure presses are registered properly.
4. The goal of the player, regardless of stage/difficulty, is to press the buttons in a sequence that turns off all 16 lights in the matrix, and to do so in as few button presses as possible.
5. If at any point during the game, the player wishes to reset the puzzle and the button press count, the player may do so by pressing the START (red) button.
6. Upon completing the stage, all LED-buttons will be unlit, and the player will no longer be able to make changes to the puzzle stage, and no further button presses will be recorded. To return to difficulty and stage selection, the player may press the START (red) button.
