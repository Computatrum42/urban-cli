# urban-cli
A cli program that uses Urban Dictionary API to output a dictionary search or some other functions like a random entry.

## Installation
idk it works on my arch linux machine /j

OS Support: Pretty much any Unix-like/Unix-based operating system with a proper Ruby support.

By the way, I couldn't upload any repository yet.
And probably I won't do this, I could ask my friend to do these extra stuff.

### Required packages
- ruby (no shit sherlock)
- make (actually there is no makefile yet but just wait)

## Usage
```urban-cli [word]``` or ```urban-cli [flag] [option]```

for example:
```urban-cli Linux``` or ```urban-cli -o random```


## Known issues
Non-ASCII characters couldn't used for searching. It happens because the URI library only accepts the ASCII characters.

## Todo list
- Flag system (completed)
- Random option (completed along with flag system)
- Non-ASCII character issue (It has a slim chance to get resolved but I'll try.)
 
