# Installation Instructions

## MacOS

1. Open Finder and press `Cmd + Shift + G`

2. Go to: `~/Library/Keyboard Layouts`

3. Unzip `macos/Graphite.zip` and copy the resulting file into that directory

4. Log out, log back in

5. Go to System Settings > Keyboard Layouts

6. Click the + button, and search for Graphite

## Windows

1. Download and unzip either:
   - `windows/graphite.zip` for the standard Graphite layout
   - `windows/graphmod.zip` for the angle-modded version
   
   See below to learn more about the angle mod version.

2. Navigate to the unzipped directory and run `setup.exe`

3. Log out and log back in

4. You will now see a keyboard layout switcher in the windows taskbar. You can switch between layouts by typing the `Windows + Space` or `Ctrl + Shift` shortcuts.

5. To uninstall:
   - Go to Start > Settings > Apps > Apps & features
   - Select the layout and click Uninstall

## Modifying the Windows Layout

The `.klc` files in the `windows` folder are source files for the keyboard layouts. To modify these:

1. Install Microsoft Keyboard Layout Creator (MSKLC) from the [Microsoft website](https://www.microsoft.com/en-us/download/details.aspx?id=102134)

2. Open MSKLC and go to File > Load Source File

3. Navigate to either:
   - `windows/graphite.klc` for the standard layout
   - `windows/graphmod.klc` for the angle mod version

4. Make your desired modifications

5. Go to Project > Build DLL and Setup Package to create a new installer

Note: The `.klc` files are provided for transparency and customization. Most users should use the pre-built `.zip` installers instead.

## About Angle Mod

Angle mod is a keyboard layout modification that affects the bottom row of keys, shifting the key placements slightly to match the natural angle of your hands when typing. This modification can make typing more comfortable, particularly on traditional row-staggered keyboards. 

If the staggered bottom row of your keyboard does not bother you, stick to the standard Graphite layout (`graphite.zip`), otherwise go with the Graphite Angle Mod version (`graphmod.zip`).

```
Graphite

` 1 2 3 4 5  6 7 8 9 0 [ ]
  b l d w z  ' f o u j ; = \
  n r t s g  y h a e i ,
  q x m c v  k p . - /
 ```

```
Graphite Angle Mod

` 1 2 3 4 5  6 7 8 9 0 [ ]
  b l d w z  ' f o u j ; = \
  n r t s g  y h a e i ,
  x m c v q  k p . - /
 ```