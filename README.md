# SvSpcHndlr
Interactive filename picker for Stata. Previously found in StataQuickReference project.

## SvSpcHndlr.do

Routine that interactively gathers input from the user. Prompts the user to specify a log file location. From log file location this do file also infers the same location for saving dta files. Lastly, this do also infers a sub dir which can be used to save and store temporary, working, or meta files.

Intended use is to call this do file from another do file. This do file will establish three globals for later use: lobal dtagbl = $dtagbl AND Global loggbl = $loggbl AND Global wkdgbl = $wkdgbl.

User need not specify Desktop location. User may specify any location.

Example of do file output:
```
#############################################################################

     This do file will create (replace):
          Datafile:  C:\Users\username\Desktop\UserInputName.dta
          Logfile:   C:\Users\username\Desktop\UserInputName.log

     This do file will create (use):
          Workspace: C:\Users\Adam Ross Nelson\Desktop\testtestwksp

     Dialogue window asks, Are you sure you wish to proceed?

#############################################################################

Now changed to new working direcotry; current working directory:
C:\Users\username\Desktop\UserInputNamewksp

Global dtagbl = C:\Users\username\Desktop\UserInputName.dta
Global loggbl = C:\Users\username\Desktop\UserInputName.log
Global wkdgbl = C:\Users\username\Desktop\UserInputNamewksp
```
