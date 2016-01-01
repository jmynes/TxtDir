# Translating .txt files to Directory Trees

Running this bash script will prompt the user to pick a root directory, and (if permissable) write the directories and sub-directories from a formatted .txt file to the chosen root directory.

## Execution Example

```
1. Execute script
./txtDir.sh

------------------------------------------------------------------------
Welcome to TxtToDir
Text files must be formatted as described in README.md
------------------------------------------------------------------------

2. > Please issue a command (h for help): l

Legend:
------------------------------------------------------------------------
.txt representation		| Folder's relation to provided root dir
------------------------------------------------------------------------
-1						| /1
--1A					| /1/1A
---1Aa					| /1/1A/1Aa
--1B					| /1/1B/

-Sample2				| /2
--Sample2A				| /2/2A
--Sample2B				| /2/2B
--Sample2C				| /2/2C

-Sample3				| /3
------------------------------------------------------------------------
etc...
Starting from provided rootDir, with your desired folder names.

3. > Please issue a command (h for help): s

Present working directory:
/home/user/TxtToDir 

4. > Please provide desired root directory:  /home/user/Files/

Root dir: /home/user/Files

5. > Is that correct? (Y/N): Y

6. > Please issue a command (h for help): 

```

## Plan.txt Example
```
#Number of - Denotes parent directory
.
Computers and Tech
-Backups
--Android
---Drivers
---Galaxy Tab
---Glass
---Nexus 5
---Nexus 6P
---Root
--Firefox Profiles
--OSes
---Current
---Old
---OS Configs and Settings
----Drivers
----Dotfiles
----Hacks
----Readmes
--Flashdrives
--Installers and APKs
--Rars
-Fonts
-ISOs
--Windows
--Linux
--Other
--Rescue
-Tools
--Activators
--Drivers
--Installers
-Miscellaneous
-VMs
--Linux
--Other
--Windows

Design
-Game
-Graphics
--Adobe
---Flash
---Photoshop
--Other
--Wallpapers
-Music
-Portfolio

Documents
-Bitcoin
-Documentation
--How-tos
--Manuals
--Self-documentation
-IRC logs
-School
--High School
--College
---Semester 1
---Semester 2
---Semester 3
---Semester 4
---Semester 5
-Writing

Games
-Emulation
-Minecraft
-Other
-Steam

Music
-Chiptune
-Etc
-Flacs
-Nerdcore
-Radio Broadcasts
-Rars
-Ringtones

Organization
-Scheduling
-To-Dos

Pictures
-Photographs
-Wallpapers
-Memes and Macros

Programming
-Projects
--Bash
---TxtDir
--C
--Java
--Web

Videos
-Movies
-Youtube
--UL
--DL
```
##TO-DO:
- [ ] Fix path input
  - [ ] Sanitize
  - [ ] If path is invalid, inform the user and prompt again
  - [ ] Allow for use of ~ . .. etc
- [ ] Translate .txt into commands
  - [ ] Given the .txt file is already formatted properly, write directories
  - [ ] If directories exist, prompt user with ability to fix this
  - [ ] Also fixing it in the .txt
  - [ ] Sanitize .txt file automatically?
- [ ] Allow commands at execution time, as flags, rather than interactive script
