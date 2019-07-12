# kak-anywhere

Launch a Kakoune editor anywhere to edit text from other applications!

## Usage

The standard use case is to allow editing text from other applications'
feature-poor text fields:
* with an entry field highlighted hit `win-e`. This will open the field's
  existing contents in a floating Kakoune window for editing.
* On exiting the Kakoune editor, the field's contents is replaced with the
  edited contents.

There is a more flexible hotkey, `win-c` that just allows editing the current
clipboard contents. This is a super flexible tool that can be used in a number
of creative ways including:
* Use as a quickly opened scratch-pad
* Use as a calculator: Just write a math expression in Kakoune, select the line
  with `x` and evaluate it using `!bc -l`.

## Requirements:

* [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
* [Autohotkey](https://www.autohotkey.com/)

## Setup

1. Edit the commented variables at the top of `kak-anywhere.ahk`.

2. Add the AHK script to your startup folder at
   `C:\Users\USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`.

3. Run the AHK script `kak-anywhere.ahk`.

