Variables
---

Variables are to be named as such if they reperersent a function value
[Name]space . [Fo]lder . [Folder|File it reperesents][8]
botw:stamina/bossbar
botw.st.bossbar

If the action is a boolean that is continuous end with ing
[Name]space.[Action]ing
botw.running
botw.sneaking
botw.jumping

Because minecraft has issues, we need to interpolerate boolean values.
For each interpolation value, just add a number to reperesent the frame of interpolation.
Each interpolation needs to have a temp value, that value shall be 0

If the action is a one time pulse event then make it past tense
[Name]space.[Action][Past-Tense]
botw.ran
botw.snuck
botw.jumped

**Global Variables**
Global Variables are variables used internally or should be set for options
They will be used by a command multiple times.
Global Variables should be assigned under the fake player "server"

*Temporary Variables*
Temporary Variables are variables used interally for calculations exclusively ( or similar )
Temporary Variables should be assigned under the fake player "[name]space.temp" or "#[name]space.temp" if you want it private. If it is not private it is assumed it can be global.
Temporary Variables can be global

*Config Variables*
Similar to Global and Temporary however they exist only to be set. That's it.
They should end with  or similar if possible