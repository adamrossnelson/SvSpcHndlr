# sshnd

## Introduction
Interactive filename picker for Stata.

## Help Wanted

This filename picker could be improved if it were converted to a package. Seeking collaborators on that conversion project.

## Basic Usage

From command line or other do files available at:

```
do https://raw.githubusercontent.com/adamrossnelson/sshnd/master/sshnd.do
```

## Extended Usage

Gathers input from the user. Prompts  user to specify a log file location. Input from user establishes a naming convention. From that convention `sshnd` creates three global variables that can be used to save files matching that naming convention. `dtagbl` will contain path and filename for a `.dta` file. `loggbl` will contain a path and filename for a `.log` file. `wkdgbl` will contain a path that may serve as a working directory.

After creating the `dtagbl` `loggbl` and `wkdgbl`, `sshnd` changes the working directory to the path stored in `wkdgble`.

`sshnd` results are logged in the log file specified by `loggbl` which may be appended by subsequent do files.

This routine works well at the beginning of do files which are intended to execute standardized/routine procudures but by multiple users with different file systems. For example the [StataIPEDSAll](https://github.com/adamrossnelson/StataIPEDSAll) quickly collects data from online and then compiles panel data sets.

Note: Example below references desktop location hwever, user(s) need not specify Desktop location.

Example of do file output:
```
#############################################################################

     This do file will create (replace):
          Datafile:  C:\Users\username\Desktop\UserInputName.dta
          Logfile:   C:\Users\username\Desktop\UserInputName.log

     This do file will create (use):
          Workspace: C:\Users\username\Desktop\testtestwksp

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
