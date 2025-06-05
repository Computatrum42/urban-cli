# urban-cli
A cli program that uses Urban Dictionary API to output a dictionary search or some other functions like a random entry.

## Installation
``git clone https://github.com/Computatrum42/urban-cli``
``cd urban-cli/``
``sudo make install``

## For uninstallation:
``cd urban-cli/``
``sudo make uninstall``

## OS Support
I dunno, it works with my Arch Linux machine. /j
Pretty much any Unix-like/Unix-based operating system with a proper Ruby support. But for some reason, it does not work with Windows.
 
## Required packages
- ruby
- make

## Usage
```urban-cli [word]``` or ```urban-cli [flag] [option]```

for example:
```urban-cli Linux``` or ```urban-cli -o random```


## Known issues
- Non-ASCII characters couldn't used for searching. It happens because the URI library only accepts the ASCII characters. Which makes sense because URLs uses ASCII characters, but its possible to see a non-ASCII character in an URL, not in a domain though.

- Due to the "algorhythm changes", project wouldn't work in some operating systems because the program creates a shell script at the /usr/local/bin and carries the Ruby scripts at /usr/local/lib. I doubt I know anything about POSIX, lolz.

## Todo list
- Non-ASCII character issue (It has a slim chance to get resolved but I'll try.)
- Add to repositories like AUR (i dunno)
- Entry selection, so you can read other entries about the same word instead of sticking with a single entry.
