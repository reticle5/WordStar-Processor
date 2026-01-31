;** DISPLAY ADAPTER TYPE **
;
;   Display adapter (CRT) type is determined automatically in many cases.
;   Items marked "NA" (Non-Autoswitch) must be selected manually.
;
;   CRT_TYPE=X
;
;   where "X" can be one of the following:
;
;  <BLANK> = "Autoswitch" Mode
;       (for the items below which do not have to be selected manually)
;
;  NOTE: If you are using an extended memory manager (QEMM, 386^MAX, etc.) 
;       which uses video memory, you must explicitly specify your CRT_TYPE.
;
;  <FILENAME> (for external driver program) e.g., CRT_TYPE=MYDRIVER.WGD
;       If the display adaptor/monitor you are using is not shown below,
;       contact the manufacturer to see if a special WordStar graphics
;       driver is available.
;
;      0 = 720  X 348  Hercules Graphics Card
;      1 = 640  X 200  IBM Color Graphics Adapter (CGA)
;      2 = 640  X 350  IBM Enhanced Graphics Adapter (EGA) (16 Color)
;      3 = 1280 X 800  Wyse 700
; NA   4 = 1280 X 1024 Genius2
; NA   5 = 728  X 1008 Genius
;      6 = 640  X 480  IBM Video Graphics Adapter (VGA) (16 Color)
;      7 = 1600 X 1280 Cornerstone Vista 1600
; NA   8 = 800  X 600  Cirrus VGA (16 COLOR)
;      9 = 640  X 400  Compaq/Toshiba Plasma
; NA  10 = 1024 X 768  IBM 8514/A & XGA (16 Color)
; NA  11 = 1024 X 768  Orchid VGA - Tseng Labs mode 37H (16 Color)
;     12 = 640  X 480  IBM PS/2 Model 30
; NA  13 = 0800 X 0600 Paradise VGA [Mode 58H] (16 Color)
; NA  14 = 0640 X 0480 Paradise EGA2 Auto 480 [Mode 50H] (16 Color)
; NA  15 = 0640 X 0350 EGA Mono
; NA  16 = 0640 X 0480 Everex Microenhancer [Mode 50H BL,00] (16 Color)
; NA  17 = 0800 X 0600 Everex [Mode 50H BL,02] (16 Color)
; NA  18 = 1024 X 0352 Everex Mono
; NA  19 = 1024 X 0704 Everex Mono
; NA  20 = 0800 X 0600 Genoa SuperEGA/SuperVGA [Mode 79H] (16 Color)
; NA  21 = 1600 X 1280 Cornerstone DualPage Display
; NA  22 = 0768 X 1008 Cornerstone SinglePage Display
; NA  23 = Reserved
; NA  24 = 640  X  200 NEC Ultralite
; NA  25 = 1024 X  768 Genoa 6400 / Trident [Mode 5FH] (16 Color)
; NA  26 = 640  X  480 VGA Mono (supports many notebook PC's--
;                               use with INVERSE=1 for LCD displays)
; NA  27 = 800  X  600 VGA  "VESA" standard [Mode 6AH] (16 Color)
;            (may require VESA BIOS extension resident)
; NA  VESA1024.WGD     1024 x 768 "VESA"-compatible SuperVga (most boards)
;            (requires VESA BIOS extension resident - supplied with board)
;
;   DEFAULT : "Autoswitch" mode
;
;   Type your selection below:
;
CRT_TYPE=
;
;** INVERSE VIDEO **
;
;   INVERSE=X
;
;   Where "X" is either:  0 for normal video (the default), or
;                         1 for inverse video (all colors reversed).
;
;   Use INVERSE=1 for displays which normally operate in black-on-white.
;   Typical displays are liquid-crystal screens used in laptops & notebook 
;     PC's.  Do not use this with a driver which already inverts the colors.
;   If Page Preview shows a black page with white text, then try INVERSE=1.
;
;   Type your selection below:
;
INVERSE=
;
;** MONITOR ASPECT RATIO ADJUSTMENT **
;
;   ASPECT=X
;
;   Where "X" is a positive or negative number (ie. 10,+10,-10). This
;   number adjusts the horizontal dots used to show a page.
;
;   To check the aspect ratio for accuracy, use the grid option
;   in page preview.  If the horizontal and vertical components
;   of the grid are equal, the aspect ratio is correct.
;
;   DEFAULT = 0
;
;   Type your selection below:
;
ASPECT=
;
;
;** GRID TYPE **
;
;   GRID_TYPE=X
;
;   Where "X" can be one of:
;
;     1   = Pica Grid       (6  per inch)
;     2   = Inch Grid       (10 per inch) (Not usable with CGA)
;     3   = Inch Grid       (4  per inch)
;     4   = Centimeter Grid (2  per cm)
;     5   = Centimeter Grid (5  per cm)   (Not recommended for CGA)
;
;   DEFAULT = 2
;
;   Type your selection below:
;
GRID_TYPE=2
;
;
;** DISPLAY_GRID **
;
;   DISPLAY_GRID=X
;
;   Where "X" can be one of:
;
;     0   = Do not show grid first time into preview.
;     1   = Show grid first time into preview.
;
;   DEFAULT = 0
;
;   Type your selection below:
;
DISPLAY_GRID=0
;
;
;** ZOOM_LEVEL **
;
;   ZOOM_LEVEL=X
;
;   Where "X" can be one of:
;
;     1   = 4x Zoom
;     2   = 2x Zoom
;     3   = Full Page
;     4   = Display Even & Odd
;     5   = Thumbnail Display
;     6   = Sketch Display
;
;   DEFAULT = 3
;
;   Type your selection below:
;
ZOOM_LEVEL=3
;
;
;** SAVE_ZOOM_LEVEL **
;
;   SAVE_ZOOM_LEVEL=X
;
;   Where "X" can be one of:
;
;     0   = Do not save while in WordStar
;     1   = Save zoom level while in WordStar
;
;   DEFAULT = 0
;
;   Type your selection below:
;
SAVE_ZOOM_LEVEL=0
;
;** PAPER COLOR **
;
;   PAPER_COLOR=X
;
;   Where "x" is a number between 0 and 15. 0=Black, 15=White. 
;   Other numbers represent colors on color monitors. Higher numbers
;   are lighter colors.
;
;   CAUTION: Colored text is not visible against the same color paper.
;   White is recommended.
;   
;   DEFAULT = White
;
;   Type your selection below:
;
PAPER_COLOR=15
;
;** BACKGROUND COLOR **
;
;   BACKGROUND_COLOR=X
;
;   Where "x" is a number between 0 and 15. 0=Black, 15=White. 
;   Other numbers represent colors on color monitors. Higher numbers
;   are lighter colors.	 This does not work on black & white screens.
;   If BACKGROUND_COLOR is not given, WordStar's text background color 
;     will be used.
;
;   CAUTION: Don't make your Background color the same as your paper color.
;   Dark colors are recommended.
;   
;   DEFAULT = WordStar's background color.
;
;   Type your selection below:
;
BACKGROUND_COLOR=
;
;** TOP_OFFSET **
;
;   TOP_OFFSET=X
;
;   Where X can be any value between -2160 and 2160.  (-/+ 3 inches)
;
;   This represents an offset, in 1/720 inches, to reposition the text
;   downward on the display page to compensate for the un-printable
;   margin at the top of the page.  Set the value which causes the text
;   to be positioned correctly (vertically) on the page to match the
;   printed output.  DEFAULT=0.
;
TOP_OFFSET=
;
;** LEFT_OFFSET **
;
;   LEFT_OFFSET=X
;
;   Where X can be any value between 0 and 720.  (1 inch)
;
;   This represents an offset, in 1/720 inches, to reposition the text
;   to the right on the display page to compensate for the un-printable
;   margin at the left of the page.  Set the value which causes the text
;   to be positioned correctly (horizontally) on the page to match the
;   printed output.  DEFAULT=0.
;
;   HINT: Use 144 for LaserJet II,  180 for LaserJet III and IIp. 
;
LEFT_OFFSET=
;
;** PAGE SIZE ** (must match your printer page size)
;
;   PAGE=<HSIZE>X<VSIZE>
;
;   WHERE :
;
;     HSIZE = Horizontal Size  (in Inches). Use period or comma for decimal.
;     VSIZE = Vertical Size
;
; Examples:
;
;PAGE=8.25X11.6825   ; European A4
;PAGE=8.5X11         ; US Letter
;PAGE=8.5X14         ; US Legal
;
;   DEFAULT : PAGE=8.5X11  (FOR US LETTER)
;
;   Type your selection below:
;
PAGE=8.5X11
;
;** FAX_RES ** OUTPUT RESOLUTION FOR FAX FILES
;
;FAX_RES=0; Low   (200 x 100 dpi) Resolution
;FAX_RES=1; High  (200 x 200 dpi) Resolution  (DEFAULT)
;FAX_RES=2; H-P   (300 x 300 dpi) Resolution
;FAX_RES=3; 9-pin (120 x  72 dpi) Resolution   (9-pin dot-matrix, not FAX)
;FAX_RES=4; 24-pin(180 x 180 dpi) Resolution  (24-pin dot-matrix, not FAX)
;
;   Type your selection below:
;
FAX_RES=1
;
;** MOUSE ** OPTIONS
;
;MOUSE=0; Mouse support disabled
;MOUSE=1; Use mouse if specified in WordStar. (DEFAULT) 
;         Left-handed if specified in WordStar.
;         Sensitivity as specified in WordStar.
;MOUSE=2; Use mouse. Right-handed.
;MOUSE=3; Use mouse. Left-handed.
;
;   Type your selection below:
;
MOUSE=1
;
;** MOUSE SENSITIVITY **
;
;MOUSE_SENSITIVITY=X
;
;   Where X can be any value between 4 and 32.  (Default=15)
;   This value overrides the sensitivity specified in WSCHANGE or WINSTALL.
;   Smaller values are more sensitive. 
;   Values less than 8 don't give resolution to 1 pixel.
;
;   Type your selection below:
;
MOUSE_SENSITIVITY=
;
;** MOUSE BUTTON COLOR **
;
;BUTTON_COLOR=X
;
;   Where X is 0 or 1.  (Default=0)
;
;       0 = Mouse buttons are grey.
;       1 = Mouse buttons are same color as menu bar.
;
;   This is for color displays only.
;
BUTTON_COLOR=
;
01=NPSHLV1 ,100 050 4006 341
02=NPSHLV2 ,100 050 4206 341
03=NPSHLV3 ,100 050 4106 341
04=NPSHLV4 ,100 050 4306 341
05=COURIER1,120 072 4403 341
06=COURIER2,120 072 4603 341
07=COURIER3,120 072 4503 341
08=COURIER4,120 072 4703 341
09=UNIVERS1,180 093 C034 341
10=UNIVERS2,180 093 C134 341
11=UNIVERS3,180 093 C234 341
12=UNIVERS4,180 093 C334 341
13=TIMES1  ,180 082 C405 341
14=TIMES2  ,180 087 C505 341
15=TIMES3  ,180 079 C605 341
16=TIMES4  ,180 082 C705 341
17=TMS850J
18=TMS850I
19=TMS850B
20=TMS850R
21=HEL850J
22=HEL850I
23=COU850R
24=COU850B
25=COU850I
26=COU850J
27=GOT850R
28=GOT850B
29=GOT850I
30=GOT850J
31=HEL850R
32=HEL850B
33=ZAPFDBR
34=ZAPFCHI
35=SYMBOLR
36=PALATNJ
37=PALATNI
38=PALATNB
39=AVGARDR
40=AVGARDB
41=AVGARDI
42=AVGARDJ
43=BOOKMNR
44=BOOKMNB
45=BOOKMNI
46=BOOKMNJ
47=HELVNAR
48=HELVNAB
49=HELVNAI
50=HELVNAJ
51=NEWCNTR
52=NEWCNTB
53=NEWCNTI
54=NEWCNTJ
55=PALATNR
