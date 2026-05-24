# MacOS

1. Open Finder and press cmd + shift + g

2. Go to: ~/Library/Keyboard Layouts

3. Unzip macos/Graphite.zip and copy the resulting file into that directory

4. Log out, log back in

5. Go to System Settings > Keyboard Layouts

6. Click the + button, and search for Graphite

# Linux

## If you don´t have any other user layouts 

If you don´t have any other user layouts installed under `$HOME/.config/xkb`, copy the contents of `xkb` to `$HOME/.config/xkb`.
## If you have other user variants intalled for the `us` layout

1. Backup the contents of your `.config/xkb` directory, just in case.

2. Add the following to the `<layoutList>` tag to the `$HOME/.config/xkb/evdev.xml`: 
```xml
<layout>
  <configItem>
    <name>us</name>
  </configItem>
  <variantList>
      <variant>
        <configItem>
          <name>graphite</name>
          <shortDescription>graphite</shortDescription>
          <description>English (Graphite)</description>
        </configItem>
      </variant>
      <variant>
        <configItem>
          <name>graphite-intl</name>
          <shortDescription>graphite-intl</shortDescription>
          <description>English (Colemak intl.)</description>
        </configItem>
      </variant>
  </variantList>
</layout>
```

3. Append the contents of `xkb/symbols/us` to `$HOME/.config/xkb/symbols/us`:
```bash
# Assuming you are at the repo root directory
$ cat xkb/symbols/us >> $HOME/.config/xkb/us
``` 