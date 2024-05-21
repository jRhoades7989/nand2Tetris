# nand2Tetris
## License
This is the work of (www.nand2tetris.org)[https://www.nand2tetris.org/]. The licensing information can be found at (nand2tetris License)[https://www.nand2tetris.org/license]. It is protected under the (Common Attribution-NonCommercial-ShareAlike 3.0 Unported License)[https://creativecommons.org/licenses/by-nc-sa/3.0/]

## Overview
This is my work on Nand2Tetris. Anything in the "MyWork" folder is my own code (or the assembled/compiled version thereof). I have avoided providing straight answers to the original prompts in the MyWork folder to respect the wishes of the creators

## Projects
### 0_MachineLanguage
All .asm files can be compiled to .hack files using Assembler.sh in the "tools" directory. In bash simply run:
```
source Assembler.sh <PathTo>/mywork/<ModuleName>/YourFile.asm
```
This will produce a .hack file in the same folder as the .asm file which can then be loaded and run by running the CPUEmulator from the tools. That opens into a nice GUI depicting the inner workings of the ram.
#### Comp.asm
The original assignment is to do some multiplication. The project using similar principles that I put together for my personal interpretation does a simple subtraction based division that will take the dividend in R0, the divisor in R1 and will store the quotient in R2 and the remainder in R3.
