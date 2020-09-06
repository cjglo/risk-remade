# Remake-Game


## Sections

- [Purpose of this Project](#purpose)
- [Structure of Code](#structure-of-the-source-code-and-objects)
- [Upcoming Plans](#upcoming-plans)

## Purpose
Just to note, this isn't a complete p.  I wanted to have a fun way to practice smart pointers, linked lists, (data structures, algortihms, best practices, etc.) while I have a few weeks between classes.  I am also at the same time learning rust, so I may attempt to include some things in rust just to get used to using dynamically allocated memory in that language.


## Structure of the Source Code and Objects

Right now most of the objects are self explanatory, (Items, entities, healing being a type of item)  for item I plan to have that class be abstract, then have every dervied class have a use() function that does its action, and just call those methods.

The two tricky classes I want to write down so I don't forget is GameData which will hold and handle loading saves and saving and presenting the menu of options to load.

The second tricky one is LevelStruct, which I will use to handle all the levels and such, so they are just called based on while loops in the basefile with main()



## Upcoming Plans:
This is for organizing my thoughts on some ideas and things to implement.  Again, this project is just to practice coding, so none of these ideas are really made for optimal enjoyment of the game or speed of the program; they are made simply so I can have a creative way to implement a data structure or try an algorithm:


### Hash Map
Haven't thought this through that much, but I could probably implement a hash map for the inventory rather than a list or sequence.  I could also just use a hash map somewhere else, maybe something for conversations?  Might be a bit complex but dialog options could be hashed if the user can type them out?  

### Implement more of an envirnment
This idea is really in its infancy, but more of an envirnment would be nice.  Could even try to find a game engine to practice api, but that may be unnecessary for the purpose of this project, just an idea.

#### Map & Locations (seperate classes?)
- I am thinking maybe all locations are objects inside one map object that is used to navigate, or maybe every entity has a location attribute which is a pointer set equal to a location.  Not sure yet



