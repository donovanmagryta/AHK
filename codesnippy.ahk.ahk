#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
InputBox, OutputVar, Question 1, Code Command?
if (OutputVar = "vid")
FileSelectFile, SelectedFile, , , Pick Filename, Video (*.mp4; *.ogg)
SplitPath, SelectedFile, name
if SelectedFile =
    MsgBox, You didn't pick a filename.
else
clipboard =  <video width="320" height="240" controls> <source src="%name%" type="video/mp4"> Your browser does not support the video tag.</video>
MsgBox, Code snippet copied to clipboard!
