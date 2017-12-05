qui {

// X.X.X. 04DEC2017 Updates following Nov/Dec Stata software update
// X.X.X. 01SEP2017 Adam Ross Nelson Original Version
// Author/Creator: Adam Ross Nelson
// Questions: Via GitHub or Twitter @adamrossnelson
// Maintained at: https://github.com/adamrossnelson/StataQuickReference

// This do prompts the user to specify a log file location. From log file 
// location this do file also infers the same location for saving dta 
// files. Lastly, this do also infers a sub dir which can be used to save
// and store temporary, working, or meta files.

// Intended use is to call this do file from another do file. This do file
// will establish three globals for later use: lobal dtagbl = $dtagbl AND
// Global loggbl = $loggbl AND Global wkdgbl = $wkdgbl

// Set preferences
set more off
clear all
set logtype text

// Gathers input from user. Error checks user correctly specified .log filename.

	// Declare a global with a default project name.
global loggbl = "LogFileName.log"
	// Ask user to define project name and location.
capture window fsave loggbl "Specify a log file name and location." "Log file|*.log" log
	// Close stray SvSpcHndlr log file.
capture log close SvSpcHndlr
noi log using "$loggbl", replace name(SvSpcHndlr)
	// Define location and file name for resulting data file.
global dtagbl = subinstr("$loggbl",".log",".dta",.)
	// Define location path for workspace.
global wkdgbl = subinstr("$loggbl",".log","wksp",.)

	// Provide user with information & option to cancel.

noi di ""
noi di "#############################################################################"
noi di ""
noi di "     Will create (or overwrite):"
noi di "          Datafile:  $dtagbl"
noi di "          Logfile:   $loggbl"
noi di ""
noi di "     Will create (use):"
noi di "          Workspace: $wkdgbl"
noi di ""
noi di "     Dialogue window asks, Are you sure you wish to proceed?"
noi di ""
noi di "#############################################################################"

window stopbox rusure "Will create or overwrite : `=char(13)'" ///
"$loggbl, " ///
"$dtagbl, & " /// 
"$wkdgbl. `=char(13)'" ///
"Do you wish to continue?"

	// Make directory at workspace location.
	// -mkdir- for existing location does not delete existing data.
capture mkdir "$wkdgbl"
	// Change working directory to new location.
cd "$wkdgbl"
	// Double check working directory location.
noi di ""
noi di ""
noi di "Changed working directory; current working directory:"
noi di c(pwd)
noi di ""
noi di "Global dtagbl = $dtagbl"
noi di "Global loggbl = $loggbl"
noi di "Global wkdgbl = $wkdgbl"
noi di ""
noi di "{ul:To append log file...}"
noi di "    Use:  {cmd:log using {it:filename} [, append]}"
noi di "     OR:  {cmd:log using {it:$loggbl} [, append]}"
noi di "     OR:  {cmd:log using {it:loggbl (see above)} [, append]}"
noi di ""
noi log close SvSpcHndlr
}
