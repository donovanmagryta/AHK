#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

InputBox, OutputVar, Menu, Code Command?

if (OutputVar = "help") {
MsgBox, vid, pic, url, aud, txt, big, btn, stop
Reload
}

if (OutputVar = "quit") {
MsgBox, Stopped.
}

if (OutputVar = "stop") {
MsgBox, Stopped.
}

if (OutputVar = "exit") {
MsgBox, Stopped.
}

if (OutputVar = "vid") {
FileSelectFile, SelectedFile, , , Pick Filename, Video (*.mp4; *.ogg)
SplitPath, SelectedFile, name
if SelectedFile =
    MsgBox, You didn't pick a filename.
else
clipboard =  <video controls> <source src="%name%" type="video/mp4"> Your browser does not support the video tag.</video>
MsgBox, Code snippet copied to clipboard!
Reload
 }


if (OutputVar = "pic") {
FileSelectFile, SelectedFile, , , Pick Filename, Image (*.svg; *.png;*.jpg;*.gif)
SplitPath, SelectedFile, name
if SelectedFile =
    MsgBox, You didn't pick a filename.
else
clipboard = <img src="%name%" ALT=""/>
MsgBox, Code snippet copied to clipboard!
Reload
 }



if (OutputVar = "url") {
FileSelectFile, SelectedFile, , , Pick Icon, Image (*.svg; *.png;*.jpg;*.gif)
SplitPath, SelectedFile, name
InputBox, LinkInput, Question 2, Link URL?
clipboard =  <a href="%LinkInput%"> <img src= "%name%" ALT=""> </a>
MsgBox, Code snippet copied to clipboard!
Reload
}


if (OutputVar = "aud") {
FileSelectFile, SelectedFile, , , Pick File, Audio (*.mp3)
SplitPath, SelectedFile, name
if SelectedFile =
    MsgBox, You didn't pick a filename.
else
clipboard = <audio controls><source src="%name%" type="audio/mpeg"></audio>
MsgBox, Code snippet copied to clipboard!
Reload
 }

if (OutputVar = "txt") {
InputBox, txtInput, Question 2, Text content?
clipboard =  <p>"%txtInput%"</p>
MsgBox, Code snippet copied to clipboard!
Reload
}

if (OutputVar = "btn") {
FileSelectFile, SelectedFile, , , Pick HTML file, html (*.html;)
SplitPath, SelectedFile, name
InputBox, LinkInput, Question 2, Button title?
clipboard =  <button><a href="%name%#top">%LinkInput%</a></button>
MsgBox, Code snippet copied to clipboard!
Reload
}

if (OutputVar = "big") {
InputBox, txtInput, Question 2, Text content?
clipboard =  <h2>"%txtInput%"</h2>
MsgBox, Code snippet copied to clipboard!
Reload
}

else {
MsgBox, Available commands: vid, pic, url, fil, aud, txt, big, btn, stop 
}










