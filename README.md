# Amphetamine Expanded Process Detection


## About Expanded Process Detection
Amphetamine is a sandboxed app. This means that macOS security restrictions prevent Amphetamine from doing some things out-of-the-box, such as being able to see all processes running on your Mac. If you're tyring to set up an App/Process Trigger and aren't seeing the process you want, you may need to install this Expanded Process Detection script. To be sure, double-check that the process is actually running on your Mac first. You can't add a process to an Amphetamine Trigger without the process actually running at the time you are configuring the Trigger. If you're sure the process is running, try downloading this script and installing it in the specific path.

## How To Install Expanded Process Detection

1. Download the project or clone this repository.
2. Unzip the project if you downloaded a zip file.
3. Open a terminal and use `cd` to change to the unzipped directory or the location of the cloned repository.
4. Use the following commands:
   1. `make clean` removes any temporary or compiled files and starts fresh
   2. `make build` compiles the plain-text version of the script (in the `src` folder) and places it in the `out` folder
   3. `make bundle` builds a zip file containing the compiled script and places it into the `Script` folder
   4. `make install` places a copy of the compiled script into the `$HOME/Library/Application Scripts/com.if.Amphetamine` folder

5. Quit and relaunch Amphetamine

### Requirements

Amphetamine 5.3 or higher.
