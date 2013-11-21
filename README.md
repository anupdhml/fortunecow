fortunecow 
==========

A (simple) bash script that combines fortune and cowsay, with some ocd tendencies
Mostly useful for printing (funny) messages at terminal startup

* Intended use: Place the script in your $PATH, and call it from *~/.bashrc* (runs it at terminal startup) 
* Dependencies: *cowsay*, *fortune*
* Available options: *--disable-ocd*, *--default-message*, all args from *fortune* program (do *man fortune*)

When using *disable-ocd*, cow is selected at random. Random generation of fortune is left to the *fortune* program at all times.

## Setting fortunes

By default, fortunes are picked up from the default location */usr/share/games/fortunes* (Ubuntu) or */usr/share/fortunes/* (Arch Linux).
If you want to use the fortune collection here with the program, you may add this to your *.bashrc*.

    FORTUNE_BASE_DIR=/path/to/fortune/folders/
    ~/bin/fortunecow -e $FORTUNE_BASE_DIR/*/ # -e treats all fortune files as equal.

## Setting cowfiles

By default, cows are picked up from the default location */usr/share/cowsay/cows/* (Ubuntu) or */usr/share/cows/* (Arch Linux).
To use the cow collection here, add something like this to your *.bashrc*.

    COW_BASE_DIR=/path/to/cow/folders
    export COWPATH="$COW_BASE_DIR/my_cows:$COW_BASE_DIR/other_cows:$COW_BASE_DIR/aur_cows:$COW_BASE_DIR/ubuntu_cows"

## OCD features

* Chalkboard gag is reserved for Bart. Similarly, futurama fortunes are spoken by futurama characters,
  calvin and hobbes quotes by calvin, and so on. (Eg: fortunecow ~/data/fortunes/pop/futurama).
  Mapping for this is done with bash globs, and more can be added in the script.
* Ban cows without removing the cow file (edit the script vars manually for this)
* Offensive fortune calls for offensive cow (*-o argument*)
* Some cows do not speak. They think.
* ascii-art fortunes are not meant to be spoken. Cows are not employed for such fortunes and *long* fortunes

## Sample outputs
     __________________________________________________________________
    /  Bubblegum: Bender, you can talk trash, you can handle the ball, \
    |  but look in your heart and ask yourself: are you funky          |
    |  enough to be a Globe Trotter? Are you?                          |
    |  Bender: Yes.                                                    |
    |  Bubblegum: Are you?                                             |
    |  Bender: I mean, with time, my funk level could...               |
    |  Bubblegum: Are you?!                                            |
    |  Bender: No.                                                     |
    \  Bubblegum: Deal with it.                                        /
     ------------------------------------------------------------------
       \
        \
         ( )
          H
          H
         _H_
      .-'-.-'-.
     /         \
    |           |
    |   .-------'._
    |  / /  '.' '. \
    |  \ \ @   @ / /
    |   '---------'
    |    _______|
    |  .'-+-+-+|
    |  '.-+-+-+|
    |    """""" |
    '-.__   __.-'
         """
    /home/anup/data/fortunes/pop/futurama bender.cow -g 5

     _____________________________________________________________________
    ( NASA Researcher:  Why, they're all a bunch of blue-collar slobs!    )
    (                                                                     )
    ( Launch Manager:  People, that's who we need for our next astronaut. )
    (                                                                     )
    ( Launch Assistant:  I suggest a lengthy, inefficient search.  At the )
    ( taxpayers' expense, of course.                                      )
    (                                                                     )
    ( Launch Manager:  I wish there was an easier way.                    )
    (                                                                     )
    (              [Phone rings]                                          )
    (                                                                     )
    ( Homer:  Hello, is this NASA?                                        )
    (                                                                     )
    (      [ ] The Simpsons - 1F13 - Deep Space Homer.                    )
     ---------------------------------------------------------------------
       o                ,---. 
        o       ,.'-.   \ 
         o      ( ( ,'"""""-. 
          o     `,X          `. 
           o    /` `           `._ 
              (            ,   ,_\ 
              |          ,---.,'o `. 
              |         / o   \     ) 
               \ ,.    (      .____, 
                \| \    \____,'     \ 
              '`'\  \        _,____,' 
              \  ,--      ,-'     \ 
                ( C     ,'         \ 
                 `--'  .'           | 
                   |   |         .O | 
                 __|    \        ,-'_ 
                / `L     `._  _,'  ' `. 
               /    `--.._  `',.   _\  ` 
               `-.       /\  | `. ( ,\  \ 
              _/  `-._  /  \ |--'  (     \ 
             '  `-.   `'    \/\`.   `.    ) 
                   \  -hrr-    \ `.  |    | 
    /home/anup/data/fortunes/pop/simpsons homer.cow -b 2

     _____________________________________________________________
    / In every job that must be done, there is an element of fun. \
    | Find the fun and snap!  The job's a game.                   |
    | And every task you undertake, becomes a piece of cake,      |
    |         a lark, a spree; it's very clear to see.            |
    \                 -- Mary Poppins                             /
     -------------------------------------------------------------
        \                                  ___-------___
         \                             _-~~             ~~-_
          \                         _-~                    /~-_
                 /^\__/^\         /~  \                   /    \
               /|  O|| O|        /      \_______________/        \
              | |___||__|      /       /                \          \
              |          \    /      /                    \          \
              |   (_______) /______/                        \_________ \
              |         / /         \                      /            \
               \         \^\\         \                  /               \     /
                 \         ||           \______________/      _-_       //\__//
                   \       ||------_-~~-_ ------------- \ --/~   ~\    || __/
                     ~-----||====/~     |==================|       |/~~~~~
                      (_(__/  ./     /                    \_\      \.
                             (_(___/                         \_____)_)
    songs-poems turtle.cow -y 84

     ____________________________________________________________________________
    / A Thaum is the basic unit of magical strength.  It has been universally    \
    | established as the amount of magic needed to create one small white pigeon |
    | or three normal sized billiard balls.                                      |
    \                 -- Terry Pratchett, "The Light Fantastic"                  /
     ----------------------------------------------------------------------------
             
              \\\|||///               \\\|||///                \\\|||///
            .  =======              .  =======               .  =======
           / \| O   O |            / \| O   O |             / \| O   O |
           \ /  \v_'/              \ /  \v_'/               \ /  \v_'/
            #   _| |_               #   _| |_                #   _| |_
           (#) (     )             (#) (     )              (#) (     )
            #\//|* *|\\             #\//|* *|\\              #\//|* *|\\
            #\/(  *  )/             #\/(  *  )/              #\/(  *  )/
            #   =====               #   =====                #   =====
            #   (\ /)               #   (\ /)                #   (\ /)
            #   || ||               #   || ||                #   || ||
           .#---'| |----.          .#---'| |----.           .#---'| |----.
            #----' -----'           #----' -----'            #----' -----'
    magic natives.cow -p 84

     ____________________________________________________________________________
    / Chuck Norris built a time machine and went back in time to stop the JFK    \
    | assassination. As Oswald shot, Chuck met all three bullets with his beard, |
    \ deflecting them. JFK's head exploded out of sheer amazement.               /
     ----------------------------------------------------------------------------
       \
        \
            .--.
           |o_o |
           |:_/ |
          //   \ \
         (|     | )
        /'\_   _/`\
        \___)=(___/

    chucknorris tux.cow -y 84

     ____________________________________________________________________________
    / How do you power off this machine?                                         \
    |         -- Linus, when upgrading linux.cs.helsinki.fi, and after using the |
    \            machine for several months                                      /
     ----------------------------------------------------------------------------
      \
       \____
      /@    ~-.
      \/ __ .- |
       // //  @
    linux suse.cow -s 6
