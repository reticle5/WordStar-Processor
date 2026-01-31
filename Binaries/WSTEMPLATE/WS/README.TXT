                      WORDSTAR FOR DOS 7.0

                          README TOPICS

INSTALLATION
  Screen Fonts for Preview
  Screen Fonts for Fax Files

EDITING
  Moving More Quickly in Dialog Box Lists
  Printing Page Numbers in Headers and Footers
  Opening Files on a Read-only Disk

MACROS
  Assigning Macros to the F11 and F12 Function Keys
  Displaying Function Key Labels
  Disabled Mouse in Macros

MOUSE ITEMS
  Double-clicking in Dialog Box Lists
  Additional Mouse Shortcuts
  Microsoft Mouse

PREVIEW

USING XMS AND EMS

CORRECT GRAMMAR FOR DOS

STAR EXCHANGE
  Installing Star Exchange
  Converting Database Files to WordStar Data Files

WORDSTAR ICON FOR MICROSOFT WINDOWS

LAPTOPS

USING DOWNLOADED DESKJET FONTS

________________________________________________________________

In this README, the WSCHANGE paths are shown in parentheses.  To
use WSCHANGE to change a default value, type WSCHANGE WS at the
WordStar directory prompt (usually \WS), and then choose the
letters (menu commands) shown in parentheses.

Note:  Certain product names in this README file are trademarks
or registered trademarks of their respective owners.
________________________________________________________________

INSTALLATION

Screen Fonts for Preview

At the Add or Remove a Feature screen, you can install three
different types of screen fonts for Preview.  The screen font
options are Code page 437, Code page 850, and PostScript fonts.
If you want to install PostScript fonts, install both PostScript
and code page 850 fonts.  (Be sure to set the code page to 850 in
DOS.  See your DOS manual for instructions.)

You can install all three screen font options if you need them,
but then Preview works more slowly.

Screen Fonts for Fax Files

To use a greater variety of fonts in your fax files, install the
Code page 850 fonts.

EDITING

Moving More Quickly in Dialog Box Lists

To move more quickly through the list in a dialog box, use ^\ to
turn off the function that updates the corresponding field.  To
turn updating back on, press the Spacebar.

Printing Page Numbers in Headers and Footers

To print a page number in headers and footers, type # where you
want the page number to print.  (Don't type ampersands around
the #.)

Opening Files on a Read-only Disk

If you want to open files on a read-only disk (a write-protected
floppy or a drive where you don't have write access), you need to
make a patch in WSCHANGE (E=).  At the label prompt, type NWFLG
and press Enter.  Then, type 16 and press Enter.  Press ^X and
then Y to exit WSCHANGE.  (In the LAN version of WordStar, NWFLG
is already set to 16.)

MACROS

Assigning Macros to the F11 and F12 Function Keys

As a default, WordStar doesn't let you assign macros to the F11
and F12 function keys.  If your keyboard has these function keys
and you want to assign macros to them, use WSCHANGE (ADC) to
turn on extended keyboard support.

Changing the Function Keys for HELP and DONE
        
If the standard settings of F1 (for HELP) and F10 (for DONE) 
conflict with keys you have already defined, you can 
change the settings by patching U1FKEY and U2FKEY.
        
To change the key for HELP, patch U1FKEY to the use the two-byte
scan code of the key you want to use. The default is 3B00H.  
For example, to change HELP to F5 (scan code 3F00H), patch U1FKEY to 
00 3F. (Note that the low byte, 0, is entered first.)  The 
description string follows in the next 8 bytes.  The default setting
is "Help." 
        
To change the key for DONE, patch U2FKEY to use the scan code of the 
key you want to use.  

Displaying Function Key Labels

You can display function key labels at the bottom of the screen.
These labels show the first six characters of the corresponding
macro filenames.  To turn on display of labels, use WSCHANGE
(DBA2K).

Changing Function Key Labels
        
The names for Function Key Labels are based on the filenames 
of the macros that are assigned to them.  The first letter is 
capitalized and the rest are in lower case.  

-  To force the next letter to be capitalized, use an underscore 
   in the macro filename.  
-  To insert a space and capitalize the next letter, use a hyphen
   in the macro filename.
        
Function Key Colors
   
Function key colors, by default, are linked to menu colors.  The
function key numbers are linked to the status line highlight color.
        
You can change the color mappings using the label patcher in 
WSCHANGE.  Two bytes define each color.  The values below define
how to link the function key colors to one of the WordStar screen 
color settings.
        
-  To change the color of the function key descriptions, use
   the FCOLOR label.
        
   To link function key colors to another WordStar screen color
   choose the appropriate number (in hex, for the label patcher)
   from the following list:
        
   00 00: default 
          display name: maps to menu color
          function key number: maps to status line highlight
   01 00: maps to strikeout colors
   02 00: maps to normal text colors
   04 00: block mark settings of these text attributes when added
          to the values with a zero second byte. For example, 
          14 00 gives a subscript color when it's in a block of 
          marked text.
   08 00: maps to underline color

   10 00: maps to subscript color
   20 00: maps to superscript color
   40 00: text bold (also used for highlight if added to values with  
          a non zero second byte.  For example, 40 08 gives button 
          highlight color.
   80 00: maps to italic color

   00 01: maps to normal text color (same as 2)
   00 02: maps to title line color
   00 04: maps to menu color
   00 08: maps to button bar color

   00 10: maps to ruler line color
   00 20: maps to status line color
   00 40: maps to flag column color
        
-  To define the colors for the function key numbers, use FCOLOR+2 
   and FCOLOR+3.  Use the same values used for the function
   key descriptions above.
        
   For example, to change the function key color to be the same as
   the button bar, and to change the numbers to be the same 
   as marked subscript text, you can use the label patcher to patch 
   FCOLOR to: 00 08 14 00 

   In other words, use 00 08 for the button bar and 14 00 for the 
   numbers.

Disabled Mouse in Macros

The mouse is usually disabled while you're recording a macro in
WordStar.  Although the mouse is functional in Preview, the mouse
commands aren't recorded.

MOUSE ITEMS

Double-clicking in Dialog Box Lists

When you move the mouse pointer through a list in a dialog box,
the corresponding entries in the dialog box are updated.  On some
computers, this updating process may appear slow, and it can
disable double-clicking.  To avoid this, turn off automatic field
updating in WSCHANGE (DBH2EA).

Additional Mouse Shortcuts

-  To exit WordStar from the Opening Menu, double-click the Exit
   button in the title bar.
-  To change window size (with two windows open), click the
   double arrow symbol in the title bar.
-  To move the cursor to the other window, click in the desired
   window or click the window indicator (1 or 2) in the title 
   bar.
-  To toggle between Insert and Overwrite modes, click the
   Insert/Ins-off indicator in the status line.
-  To modify ruler line settings, click in the ruler line.

Microsoft Mouse

If you use a Microsoft mouse driver version 6.0 or later, and you
have a delay going to or from Preview, Inset, Run a DOS Command,
MailList, TelMerge, or Star Exchange, you can eliminate the delay
by making a patch in WSCHANGE (E=).  At the label prompt, type
MRESET and press Enter.  Then, type 02 and press Enter.  (This
tells WordStar to use the software reset function for the mouse
rather than the full reset function.)  Press ^X and then Y to
exit WSCHANGE.

PREVIEW

You can set three new Preview options in the FONTID.CTL file.
Open FONTID.CTL as a nondocument.  DISPLAY_GRID lets you turn
the grid display on as a default.  ZOOM_LEVEL and SAVE_ZOOM_LEVEL
let you set the default zoom level and save zoom level changes
for the current editing setting.  See FONTID.CTL for more 
information.

USING XMS AND EMS

WordStar can use your computer's expanded memory (EMS) and
extended memory (XMS) to run more efficiently.  See "Installing
and Customizing" for information on EMS.

WordStar uses XMS in the same way it does EMS.  The default for
XMS usage is 0 pages.  You can change this amount using 
WSCHANGE (CC2J).

It's generally best to use a total of 8-35 pages of EMS.
Using fewer than 8 pages or more than 35 pages may slow
WordStar down.  You can try different settings within this range
to find the optimum efficiency on your system.

CORRECT GRAMMAR FOR DOS

Installing Correct Grammar

The WSCG.EXE file lets you use WordStar with Correct Grammar for DOS.
This file is installed with WordStar; it is also installed with
Correct Grammar.  For best results, be sure to use the WSCG.EXE file
that has the most recent date.

To check the file date:

   1  Go to the \WS directory and type DIR. Make 
      note of the date next to WSCG.EXE.  

   2  Go to the Correct Grammar disk or directory and type DIR.
      Determine whether the WSCG.EXE date is more recent
      than the one in the \WS directory.

If the Correct Grammar disk contains the most recent WSCG.EXE:

   1  Install Correct Grammar as described in the Correct
      Grammar manual.

   2  Copy the WSCG.EXE file to the \WS directory.  This will
      overwrite the older file with the newer one.
 
If /WS directory contains the most recent WSCG.EXE use the guidelines
below.

-  If your Correct Grammar files are in a different directory than 
   the WordStar directory:

   1  Copy WSCG.EXE from your WordStar directory to the Correct Grammar 
      directory.  
   
   2  Be sure that both directories are on your DOS path.

-  If you install Correct Grammar in your WordStar directory after
   installing WordStar, follow these steps:

   1  Before you install Correct Grammar, rename the WSCG.EXE file
      in your WordStar directory (usually \WS) to WSCG.SAV.

   2  Install Correct Grammar in your WordStar directory.  Copy 
      WSCG.SAV to WSCG.EXE.

      Note:  If you are installing the LAN version of WordStar, 
      you must install Correct Grammar in your WordStar program 
      directory.

Running Correct Grammar

To run Correct Grammar, follow the instructions in the Correct
Grammar documentation.  Use WSCG.EXE instead of WS.EXE to start
WordStar.  Be sure that WordStar is on your DOS path.

Note:  Before you run Correct Grammar on a new, unnamed WordStar 
file, be sure to save the file.


STAR EXCHANGE

Installing Star Exchange

To install only the default applications (WordStar, WordPerfect
5, and ASCII), at the Add or Remove a Feature screen, mark Star
Exchange with a + (plus key), and choose Selected options.  At
the Star Exchange Conversion Options screen, press F10.

Converting Database Files to WordStar Data Files

If you have a database file from another program that you want to
merge print with WordStar, you can use Star Exchange to create a
comma-delimited ASCII file.  Select the conversion option called
WordStar Data.  Also, make sure that the comma is selected for
the Spreadsheet Delimiter option in System Setup (the comma is
the default option).

WORDSTAR ICON FOR MICROSOFT WINDOWS

WS.ICO contains the WordStar for DOS icon.  When you install
WordStar, WS.ICO is copied into your WordStar directory.

To use a customized icon for WordStar in Windows:

1  Add WordStar for DOS to Windows as you would any non-Windows 
   application.
2  To see the WordStar for DOS icon, choose the File > Proper-
   ties command from the Program Editor.  Choose Change Icon.  In
   the File Name field, type the complete pathname for this file,
   for example, C:\WS\WS.ICO.
3  Return to the Program Manager.  You'll see the WordStar for
   DOS icon.

LAPTOPS

If you have a Laptop or Notebook PC with an LCD screen, black and
white may be reversed in Preview.  To correct this, set INVERSE=1
in the FONTID.CTL file.

If you mostly use an external monitor with your laptop, you
should install for the external monitor and use the default
colors.  

USING DOWNLOADED DESKJET FONTS

Some font creation programs, such as Bitstream Fontware, generate
both LaserJet and DeskJet soft fonts.  However, you can't add
DeskJet soft fonts to a custom database.  If you have one of
these programs and want to use DeskJet fonts, follow the steps
below.

1  In LSRFONTS, create a custom database (*.DTU) with your 
   LaserJet fonts.  
2  Delete the LaserJet fonts.
3  In PRCHANGE, add the LaserJet fonts from the custom database 
   to the DeskJet PDF.
4  Download the DeskJet fonts to the printer before you print.

WS7-0D
