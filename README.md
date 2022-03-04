# NRDC

This tool is an open source replacement for Nintendo's NRDC tool, which was used to register ROM headers.

This tool will **not** byteswap the inputted data if provided with a V64 ROM.

You can obtain compiled executables from the [releases](../../releases) page.
</br></br>

### Compilation

If you are on Windows, simply run `makeme.bat` (assuming you have GCC installed).

If you are on Linux, compilation is as simple as running the following in a command prompt:
```
gcc -o nrdc nrdc.c
```
</br>

### Program usage

Simply pass a valid ROM image to the program as an argument:

```
nrdc.exe ROM.n64
```

The program will automatically request registration info, one at a time.

If you would rather do that step automatically, you can provide the data as extra arguments to the tool:

```
nrdc.exe ROM.n64 "ROM NAME" MANUFACTURER ID REGION
```

* `ROM NAME` must be 21 characters or less
* `MANUFACTURER` is usually a single letter, most N64 games use the letter `N`.
* `ID` is a short, 2 character identifier for your ROM. 
* `REGION` is a single character, which represents the region that the ROM is designed for. This is important for some emulators (such as Project64), which decide the game FPS based on this value (rather than the correct approach, which is to check the VI). The region table used by my tool is as follows:
```
B - Brazil
D - Germany
E - USA
F - France
G - Italy
H - Japan
I - Europe
J - Spanish
K - Australia
0 - Unknown
```

Game cartridges/ROMs typically have an ID that looks like `NUS-ABCD-REG`. All games start with `NUS`, then `A` is typically `N` (the manufacturer), `BC` is the two letter ID, and `D` is the region letter. `REG` will typically be `USA`, `EUR`, `JPN`, or many other 3 letter abbreviations. 

For a list of all N64 ROM headers, check [here](https://niwanetwork.org/wiki/List_of_Nintendo_64_games_by_serial_code). Make sure the homebrew you're registering isn't using one of these already existing ID's!