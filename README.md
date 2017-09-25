# SvSpcHndlr
Interactive filename picker for Stata. Previously found in StataQuickReference project.

## Usage

Recommend referencing stable 1.0 release from other do files available at:

```
do https://raw.githubusercontent.com/adamrossnelson/sshnd/1.0/sshnd.do
```

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

## License

MIT License

Copyright (c) 2018 Adam Ross Nelson JD PhD

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
