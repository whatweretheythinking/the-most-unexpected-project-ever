           IDENTIFICATION DIVISION.
           PROGRAM-ID. SuggestMovie.
           ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
           DATA DIVISION.

           FILE SECTION.
           
           WORKING-STORAGE SECTION.
           01 RandomMovieTable.
               02 MovieValues.
                 03 Filler PIC X(60) VALUE
                  "12 Angry Men 1957".
                 03 Filler PIC X(60) VALUE
                  "3 from Hell 2019".
                 03 Filler PIC X(60) VALUE
                  "48 Hrs. 1982".
                 03 Filler PIC X(60) VALUE
                  "A Boy and His Dog 1975".
                 03 Filler PIC X(60) VALUE
                  "A Christmas Story 1983".
                 03 Filler PIC X(60) VALUE
                  "A Clockwork Orange 1971".
                 03 Filler PIC X(60) VALUE
                  "A Few Good Men 1992".
                 03 Filler PIC X(60) VALUE
                  "A Knight's Tale 2001".
                 03 Filler PIC X(60) VALUE
                  "A Nightmare on Elm Street 1984".
                 03 Filler PIC X(60) VALUE
                  "A Nightmare on Elm Street 2010".
                 03 Filler PIC X(60) VALUE
                  "Addams Family Values 1993".
                 03 Filler PIC X(60) VALUE
                  "Airplane! 1980".
                 03 Filler PIC X(60) VALUE
                  "Alien 1979".
                 03 Filler PIC X(60) VALUE
                  "Aliens 1986".
                 03 Filler PIC X(60) VALUE
                  "American Psycho 2000".
                 03 Filler PIC X(60) VALUE
                  "Animal House 1978".
                 03 Filler PIC X(60) VALUE
                  "Arachnophobia 1990".
                 03 Filler PIC X(60) VALUE
                  "Arlington Road 1999".
                 03 Filler PIC X(60) VALUE
                  "Assault on Precinct 13 1976".
                 03 Filler PIC X(60) VALUE
                  "Back to the Future 1985".
                 03 Filler PIC X(60) VALUE
                  "Back to the Future Part II 1989".
                 03 Filler PIC X(60) VALUE
                  "Back to the Future Part III 1990".
                 03 Filler PIC X(60) VALUE
                  "Bad Santa 2003".
                 03 Filler PIC X(60) VALUE
                  "Beverly Hills Cop 1984".
                 03 Filler PIC X(60) VALUE
                  "Beverly Hills Cop II 1987".
                 03 Filler PIC X(60) VALUE
                  "Big Trouble in Little China 1986".
                 03 Filler PIC X(60) VALUE
                  "Bill & Ted's Excellent Adventure 1989".
                 03 Filler PIC X(60) VALUE
                  "Black Sheep 1996".
                 03 Filler PIC X(60) VALUE
                  "Blazing Saddles 1974".
                 03 Filler PIC X(60) VALUE
                  "Born in East L.A. 1987".
                 03 Filler PIC X(60) VALUE
                  "Bowfinger 1999".
                 03 Filler PIC X(60) VALUE
                  "Boyz n the Hood 1991".
                 03 Filler PIC X(60) VALUE
                  "Braindead 1992".
                 03 Filler PIC X(60) VALUE
                  "Brewster's Millions 1985".
                 03 Filler PIC X(60) VALUE
                  "Brigsby Bear 2017".
                 03 Filler PIC X(60) VALUE
                  "Caddyshack 1980".
                 03 Filler PIC X(60) VALUE
                  "Can't Buy Me Love 1987".
                 03 Filler PIC X(60) VALUE
                  "Carrie 1976".
                 03 Filler PIC X(60) VALUE
                  "Casino 1995".
                 03 Filler PIC X(60) VALUE
                  "Child's Play 1988".
                 03 Filler PIC X(60) VALUE
                  "Child's Play 2 1990".
                 03 Filler PIC X(60) VALUE
                  "Child's Play 3 1991".
                 03 Filler PIC X(60) VALUE
                  "Chinatown 1974".
                 03 Filler PIC X(60) VALUE
                  "Chopping Mall 1986".
                 03 Filler PIC X(60) VALUE
                  "Christine 1983".
                 03 Filler PIC X(60) VALUE
                  "City Slickers 1991".
                 03 Filler PIC X(60) VALUE
                  "Clash of the Titans 1981".
                 03 Filler PIC X(60) VALUE
                  "Clue 1985".
                 03 Filler PIC X(60) VALUE
                  "Cobra 1986".
                 03 Filler PIC X(60) VALUE
                  "Coming to America 1988".
                 03 Filler PIC X(60) VALUE
                  "Commando 1985".
                 03 Filler PIC X(60) VALUE
                  "Conan the Barbarian 1982".
                 03 Filler PIC X(60) VALUE
                  "Cool Hand Luke 1967".
                 03 Filler PIC X(60) VALUE
                  "Creepshow 1982".
                 03 Filler PIC X(60) VALUE
                  "Critters 1986".
                 03 Filler PIC X(60) VALUE
                  "Dawn of the Dead 1978".
                 03 Filler PIC X(60) VALUE
                  "Dazed and Confused 1993".
                 03 Filler PIC X(60) VALUE
                  "Deliverance 1972".
                 03 Filler PIC X(60) VALUE
                  "Demolition Man 1993".
                 03 Filler PIC X(60) VALUE
                  "Die Hard 1988".
                 03 Filler PIC X(60) VALUE
                  "Die Hard 2 1990".
                 03 Filler PIC X(60) VALUE
                  "Die Hard With a Vengeance 1995".
                 03 Filler PIC X(60) VALUE
                  "Dirty Rotten Scoundrels 1988".
                 03 Filler PIC X(60) VALUE
                  "Dog Day Afternoon 1975".
                 03 FILLER PIC X(60) VALUE
                  "Dr. Strangelove 1964".
                 03 Filler PIC X(60) VALUE
                  "Dumb and Dumber 1994".
                 03 Filler PIC X(60) VALUE
                  "Enemy of the State 1998".
                 03 Filler PIC X(60) VALUE
                  "Escape from L.A. 1996".
                 03 Filler PIC X(60) VALUE
                  "Escape from New York 1981".
                 03 Filler PIC X(60) VALUE
                  "Evil Dead II 1987".
                 03 Filler PIC X(60) VALUE
                  "Excalibur 1981".
                 03 Filler PIC X(60) VALUE
                  "Fargo 1996".
                 03 Filler PIC X(60) VALUE
                  "Fast Times at Ridgemont High 1982".
                 03 Filler PIC X(60) VALUE
                  "Ferris Bueller's Day Off 1986".
                 03 Filler PIC X(60) VALUE
                  "Field of Dreams 1989".
                 03 Filler PIC X(60) VALUE
                  "Fight Club 1999".
                 03 Filler PIC X(60) VALUE
                  "First Blood 1982".
                 03 Filler PIC X(60) VALUE
                  "Fletch 1985".
                 03 Filler PIC X(60) VALUE
                  "Fletch Lives 1989".
                 03 Filler PIC X(60) VALUE
                  "Friday 1995".
                 03 Filler PIC X(60) VALUE
                  "Friday the 13th 1980".
                 03 Filler PIC X(60) VALUE
                  "Fried Green Tomatoes 1991".
                 03 Filler PIC X(60) VALUE
                  "Fright Night 1985".
                 03 Filler PIC X(60) VALUE
                  "Fright Night 2 New Blood 2013".
                 03 Filler PIC X(60) VALUE
                  "Fright Night 2011".
                 03 Filler PIC X(60) VALUE
                  "Full Metal Jacket 1987".
                 03 Filler PIC X(60) VALUE
                  "Ghostbusters 1984".
                 03 Filler PIC X(60) VALUE
                  "Gladiator 2000".
                 03 Filler PIC X(60) VALUE
                  "GoodFellas 1990".
                 03 Filler PIC X(60) VALUE
                  "Gremlins 1984".
                 03 Filler PIC X(60) VALUE
                  "Gremlins 2 The New Batch 1990".
                 03 Filler PIC X(60) VALUE
                  "Groundhog Day 1993".
                 03 Filler PIC X(60) VALUE
                  "Grumpier Old Men 1995".
                 03 Filler PIC X(60) VALUE
                  "Grumpy Old Men 1993".
                 03 Filler PIC X(60) VALUE
                  "Halloween 1978".
                 03 Filler PIC X(60) VALUE
                  "Halloween III Season of the Witch 1982".
                 03 Filler PIC X(60) VALUE
                  "Hard Rain 1998".
                 03 Filler PIC X(60) VALUE
                  "Hell Comes to Frogtown 1988".
                 03 Filler PIC X(60) VALUE
                  "High Risk 1981".
                 03 Filler PIC X(60) VALUE
                  "Highlander 1986".
                 03 Filler PIC X(60) VALUE
                  "Hot Times at Montclair High 1989".
                 03 Filler PIC X(60) VALUE
                  "House of 1000 Corpses 2003".
                 03 Filler PIC X(60) VALUE
                  "Hubie Halloween 2020".
                 03 Filler PIC X(60) VALUE
                  "In the Mouth of Madness 1995".
                 03 Filler PIC X(60) VALUE
                  "It 2017".
                 03 Filler PIC X(60) VALUE
                  "It Chapter Two 2019".
                 03 Filler PIC X(60) VALUE
                  "Italian Job 2003".
                 03 Filler PIC X(60) VALUE
                  "James Bond - A View to a Kill 1985".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Casino Royale 2006".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Casnio Royale 1967".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Diamonds Are Forever 1971".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Die Another Day 2002".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Dr. No 1962".
                 03 Filler PIC X(60) VALUE
                  "James Bond - For Your Eyes Only 1981".
                 03 Filler PIC X(60) VALUE
                  "James Bond - From Russia With Love 1963".
                 03 Filler PIC X(60) VALUE
                  "James Bond - GoldFinger 1964".
                 03 Filler PIC X(60) VALUE
                  "James Bond - GoldenEye 1995".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Licence to Kill 1989".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Live and Let Die 1973".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Moonraker 1979".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Never Say Never Again 1983".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Octopussy 1983".
                 03 Filler PIC X(60) VALUE
                  "James Bond - On Her Majesty's Secret Service 1969".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Quantum of Solace 2008".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Skyfall 2012".
                 03 Filler PIC X(60) VALUE
                  "James Bond - The Living Daylights 1987".
                 03 Filler PIC X(60) VALUE
                  "James Bond - The Man With The Golden Gun 1974".
                 03 Filler PIC X(60) VALUE
                  "James Bond - The Spy Who Loved Me 1977".
                 03 Filler PIC X(60) VALUE
                  "James Bond - The World Is Not Enough 1999".
                 03 Filler PIC X(60) VALUE
                  "James Bond - ThunderBall 1965".
                 03 Filler PIC X(60) VALUE
                  "James Bond - Tomorrow Never Dies 1997".
                 03 Filler PIC X(60) VALUE
                  "James Bond - You Only Live Twice 1967".
                 03 Filler PIC X(60) VALUE
                  "Jason and the Argonauts 1963".
                 03 Filler PIC X(60) VALUE
                  "Jaws 1975".
                 03 Filler PIC X(60) VALUE
                  "Jurassic Park 1993".
                 03 Filler PIC X(60) VALUE
                  "Just One of the Guys 1985".
                 03 Filler PIC X(60) VALUE
                  "K-9 1989".
                 03 Filler PIC X(60) VALUE
                  "Kindergarten Cop 1990".
                 03 Filler PIC X(60) VALUE
                  "Kingpin 1996".
                 03 Filler PIC X(60) VALUE
                  "L.A. Confidential 1997".
                 03 Filler PIC X(60) VALUE
                  "Last Action Hero 1993".
                 03 Filler PIC X(60) VALUE
                  "Lethal Weapon 1987".
                 03 Filler PIC X(60) VALUE
                  "Lethal Weapon 2 1989".
                 03 Filler PIC X(60) VALUE
                  "Life 1999".
                 03 Filler PIC X(60) VALUE
                  "Life of Brian 1979".
                 03 Filler PIC X(60) VALUE
                  "Logan's Run 1976".
                 03 Filler PIC X(60) VALUE
                  "Léon The Professional 1994".
                 03 Filler PIC X(60) VALUE
                  "Mad Max 1979".
                 03 Filler PIC X(60) VALUE
                  "Mad Max 2 1981".
                 03 Filler PIC X(60) VALUE
                  "Mad Max Beyond Thunderdome 1985".
                 03 Filler PIC X(60) VALUE
                  "Major League 1989".
                 03 Filler PIC X(60) VALUE
                  "Mannequin 1987".
                 03 Filler PIC X(60) VALUE
                  "Mars Attacks! 1996".
                 03 Filler PIC X(60) VALUE
                  "Maverick 1994".
                 03 Filler PIC X(60) VALUE
                  "Maximum Overdrive 1986".
                 03 Filler PIC X(60) VALUE
                  "Mississippi Burning 1988".
                 03 Filler PIC X(60) VALUE
                  "Monty Python and the Holy Grail 1975".
                 03 Filler PIC X(60) VALUE
                  "My Cousin Vinny 1992".
                 03 Filler PIC X(60) VALUE
                  "Napoleon Dynamite 2004".
                 03 Filler PIC X(60) VALUE
                  "National Lampoon's Christmas Vacation 1989".
                 03 Filler PIC X(60) VALUE
                  "National Lampoon's European Vacation 1985".
                 03 Filler PIC X(60) VALUE
                  "National Lampoon's Vacation 1983".
                 03 Filler PIC X(60) VALUE
                  "Nausicaä of the Valley of the Wind 1984".
                 03 Filler PIC X(60) VALUE
                  "Night of the Comet 1984".
                 03 Filler PIC X(60) VALUE
                  "Night of the Creeps 1986".
                 03 Filler PIC X(60) VALUE
                  "Ninja Scroll 1993".
                 03 Filler PIC X(60) VALUE
                  "No Country for Old Men 2007".
                 03 Filler PIC X(60) VALUE
                  "Not Another Teen Movie 2001".
                 03 Filler PIC X(60) VALUE
                  "O Brother, Where Art Thou! 2000".
                 03 Filler PIC X(60) VALUE
                  "Ocean's Eleven 1960".
                 03 Filler PIC X(60) VALUE
                  "Ocean's Eleven 2001".
                 03 Filler PIC X(60) VALUE
                  "Once Upon a Time… in Hollywood 2019".
                 03 Filler PIC X(60) VALUE
                  "One Flew Over the Cuckoo's Nest 1975".
                 03 Filler PIC X(60) VALUE
                  "PCU 1994".
                 03 Filler PIC X(60) VALUE
                  "Paprika 2006".
                 03 Filler PIC X(60) VALUE
                  "Parenthood 1989".
                 03 Filler PIC X(60) VALUE
                  "Pet Sematary 1989".
                 03 Filler PIC X(60) VALUE
                  "Pet Sematary 2019".
                 03 Filler PIC X(60) VALUE
                  "Phantasm II 1988".
                 03 Filler PIC X(60) VALUE
                  "Planes, Trains and Automobiles 1987".
                 03 Filler PIC X(60) VALUE
                  "Point Break 1991".
                 03 Filler PIC X(60) VALUE
                  "Poison Ivy 1992".
                 03 Filler PIC X(60) VALUE
                  "Poison Ivy 2 Lily 1996".
                 03 Filler PIC X(60) VALUE
                  "Police Academy 1984".
                 03 Filler PIC X(60) VALUE
                  "Police Academy 2 Their First Assignment 1985".
                 03 Filler PIC X(60) VALUE
                  "Police Academy 3 Back in Training 1986".
                 03 Filler PIC X(60) VALUE
                  "Police Academy 4 Citizens on Patrol 1987".
                 03 Filler PIC X(60) VALUE
                  "Poltergeist 1982".
                 03 Filler PIC X(60) VALUE
                  "Porky's 1981".
                 03 Filler PIC X(60) VALUE
                  "Predator 1987".
                 03 Filler PIC X(60) VALUE
                  "Prince of Darkness 1987".
                 03 Filler PIC X(60) VALUE
                  "Pulp Fiction 1994".
                 03 Filler PIC X(60) VALUE
                  "Raw Justice 1994".
                 03 Filler PIC X(60) VALUE
                  "Real Genius 1985".
                 03 Filler PIC X(60) VALUE
                  "Red Dawn 1984".
                 03 Filler PIC X(60) VALUE
                  "Remo Williams The Adventure Begins 1985".
                 03 Filler PIC X(60) VALUE
                  "Return of the Jedi 1983".
                 03 Filler PIC X(60) VALUE
                  "Return to Horror High 1987".
                 03 Filler PIC X(60) VALUE
                  "Revenge of the Nerds 1984".
                 03 Filler PIC X(60) VALUE
                  "Ritual 2002".
                 03 Filler PIC X(60) VALUE
                  "Road House 1989".
                 03 Filler PIC X(60) VALUE
                  "RoboCop 1987".
                 03 Filler PIC X(60) VALUE
                  "Rocky 1976".
                 03 Filler PIC X(60) VALUE
                  "Scooby-Doo! Return to Zombie Island 2019".
                 03 Filler PIC X(60) VALUE
                  "Scream 1996".
                 03 Filler PIC X(60) VALUE
                  "Scrooged 1988".
                 03 Filler PIC X(60) VALUE
                  "Se7en 1995".
                 03 Filler PIC X(60) VALUE
                  "Silence 2016".
                 03 Filler PIC X(60) VALUE
                  "Silver Bullet 1985".
                 03 Filler PIC X(60) VALUE
                  "Sixteen Candles 1984".
                 03 Filler PIC X(60) VALUE
                  "Sneakers 1992".
                 03 Filler PIC X(60) VALUE
                  "Sorry To Bother You".
                 03 Filler PIC X(60) VALUE
                  "Spaceballs 1987".
                 03 Filler PIC X(60) VALUE
                  "Stand by Me 1986".
                 03 Filler PIC X(60) VALUE
                  "Star Wars 1977".
                 03 Filler PIC X(60) VALUE
                  "Starship Troopers 1997".
                 03 Filler PIC X(60) VALUE
                  "Streets of Fire 1984".
                 03 Filler PIC X(60) VALUE
                  "Striking Distance 1993".
                 03 Filler PIC X(60) VALUE
                  "Summer Rental 1985".
                 03 Filler PIC X(60) VALUE
                  "Summer School 1987".
                 03 Filler PIC X(60) VALUE
                  "Super Troopers 2001".
                 03 Filler PIC X(60) VALUE
                  "Surviving the Game 1994".
                 03 Filler PIC X(60) VALUE
                  "Tampopo 1985".
                 03 Filler PIC X(60) VALUE
                  "Teenage Mutant Ninja Turtles 1990".
                 03 Filler PIC X(60) VALUE
                  "Tenet 2020".
                 03 Filler PIC X(60) VALUE
                  "Terminator 2 Judgment Day 1991".
                 03 Filler PIC X(60) VALUE
                  "The 'Burbs 1989".
                 03 Filler PIC X(60) VALUE
                  "The Addams Family 1991".
                 03 Filler PIC X(60) VALUE
                  "The Allnighter 1987".
                 03 Filler PIC X(60) VALUE
                  "The Blues Brothers 1980".
                 03 Filler PIC X(60) VALUE
                  "The Conversation 1974".
                 03 Filler PIC X(60) VALUE
                  "The Craft 1996".
                 03 Filler PIC X(60) VALUE
                  "The Crush 1993".
                 03 Filler PIC X(60) VALUE
                  "The Death of Stalin 2017".
                 03 Filler PIC X(60) VALUE
                  "The Deer Hunter 1978".
                 03 Filler PIC X(60) VALUE
                  "The Devil's Advocate 1997".
                 03 Filler PIC X(60) VALUE
                  "The Devil's Rejects 2005".
                 03 Filler PIC X(60) VALUE
                  "The Empire Strikes Back 1980".
                 03 Filler PIC X(60) VALUE
                  "The Evil Dead 1981".
                 03 Filler PIC X(60) VALUE
                  "The Faculty 1998".
                 03 Filler PIC X(60) VALUE
                  "The Fifth Element 1997".
                 03 Filler PIC X(60) VALUE
                  "The Fog 1980".
                 03 Filler PIC X(60) VALUE
                  "The Frighteners 1996".
                 03 Filler PIC X(60) VALUE
                  "The Fugitive 1993".
                 03 Filler PIC X(60) VALUE
                  "The Good Son 1993".
                 03 Filler PIC X(60) VALUE
                  "The Good, the Bad and the Ugly 1966".
                 03 Filler PIC X(60) VALUE
                  "The Goonies 1985".
                 03 Filler PIC X(60) VALUE
                  "The Graduate 1967".
                 03 Filler PIC X(60) VALUE
                  "The Great Escape 1963".
                 03 Filler PIC X(60) VALUE
                  "The Great Outdoors 1988".
                 03 Filler PIC X(60) VALUE
                  "The Hitcher 1986".
                 03 Filler PIC X(60) VALUE
                  "The Howling 1981".
                 03 Filler PIC X(60) VALUE
                  "The Irishman 2019".
                 03 Filler PIC X(60) VALUE
                  "The Jerk 1979".
                 03 Filler PIC X(60) VALUE
                  "The Karate Kid 1984".
                 03 Filler PIC X(60) VALUE
                  "The Killing of a Sacred Deer 2017".
                 03 Filler PIC X(60) VALUE
                  "The Lair of the White Worm 1988".
                 03 Filler PIC X(60) VALUE
                  "The Last Starfighter 1984".
                 03 Filler PIC X(60) VALUE
                  "The Lost Boys 1987".
                 03 Filler PIC X(60) VALUE
                  "The Meaning of Life 1983".
                 03 Filler PIC X(60) VALUE
                  "The Naked Gun 2½ The Smell of Fear 1991".
                 03 Filler PIC X(60) VALUE
                  "The Naked Gun From the Files of Police Squad! 1988".
                 03 Filler PIC X(60) VALUE
                  "The Omen 1976".
                 03 Filler PIC X(60) VALUE
                  "The Prestige 2006".
                 03 Filler PIC X(60) VALUE
                  "The Princess Bride 1987".
                 03 Filler PIC X(60) VALUE
                  "The Return of the Living Dead 1985".
                 03 Filler PIC X(60) VALUE
                  "The Rock 1996".
                 03 Filler PIC X(60) VALUE
                  "The Rocky Horror Picture Show 1975".
                 03 Filler PIC X(60) VALUE
                  "The Running Man 1987".
                 03 Filler PIC X(60) VALUE
                  "The Secret of My Success 1987".
                 03 Filler PIC X(60) VALUE
                  "The Shawshank Redemption 1994".
                 03 Filler PIC X(60) VALUE
                  "The Shining 1980".
                 03 Filler PIC X(60) VALUE
                  "The Terminator 1984".
                 03 Filler PIC X(60) VALUE
                  "The Texas Chain Saw Massacre 1974".
                 03 Filler PIC X(60) VALUE
                  "The Thing 1982".
                 03 Filler PIC X(60) VALUE
                  "The Treasure of the Sierra Madre 1948".
                 03 Filler PIC X(60) VALUE
                  "The Untouchables 1987".
                 03 Filler PIC X(60) VALUE
                  "The Warriors 1979".
                 03 Filler PIC X(60) VALUE
                  "The Wedding Singer 1998".
                 03 Filler PIC X(60) VALUE
                  "The Wizard 1989".
                 03 Filler PIC X(60) VALUE
                  "There Will Be Blood 2007".
                 03 Filler PIC X(60) VALUE
                  "They Live 1988".
                 03 Filler PIC X(60) VALUE
                  "Tommy Boy 1995".
                 03 Filler PIC X(60) VALUE
                  "Total Recall 1990".
                 03 Filler PIC X(60) VALUE
                  "Trading Places 1983".
                 03 Filler PIC X(60) VALUE
                  "Tremors 1990".
                 03 Filler PIC X(60) VALUE
                  "True Grit 1969".
                 03 Filler PIC X(60) VALUE
                  "True Lies 1994".
                 03 Filler PIC X(60) VALUE
                  "Turner & Hooch 1989".
                 03 Filler PIC X(60) VALUE
                  "U.S. Marshals 1998".
                 03 Filler PIC X(60) VALUE
                  "Uncle Buck 1989".
                 03 Filler PIC X(60) VALUE
                  "Vampires 1998".
                 03 Filler PIC X(60) VALUE
                  "Vegas Vacation 1997".
                 03 Filler PIC X(60) VALUE
                  "Village of the Damned 1995".
                 03 Filler PIC X(60) VALUE
                  "WarGames 1983".
                 03 Filler PIC X(60) VALUE
                  "Weekend at Bernie's 1989".
                 03 Filler PIC X(60) VALUE
                  "Weird Science 1985".
                 03 Filler PIC X(60) VALUE
                  "White Men Can't Jump 1992".
                 03 Filler PIC X(60) VALUE
                  "Willow 1988".
                 03 Filler PIC X(60) VALUE
                  "Willy Wonka & the Chocolate Factory 1971".
                   03 Filler PIC X(60) VALUE
                  "The Odyssey 1997".
                  03 Filler PIC X(60) VALUE
                  "The Big Lebowski 1998".
                  03 Filler PIC X(60) VALUE
                  "Castle In the Sky 1989".
                  03 Filler PIC X(60) VALUE
                  "Children of the Corn 1984".
                  03 Filler PIC X(60) VALUE
                  "Happy Gilmore 1996".
                  03 Filler PIC X(60) VALUE
                  "Kiki's Delivery Service 1989".
                  03 Filler PIC X(60) VALUE
                  "Office Space 1999".
                  03 Filler PIC X(60) VALUE
                  "Wayne's World 1992".
                  03 Filler PIC X(60) VALUE
                  "Bloody Birthday 1981".
                  03 Filler PIC X(60) VALUE
                  "Gymkata 1985".
                  03 Filler PIC X(60) VALUE
                  "Home Alone 1990".
                  03 Filler PIC X(60) VALUE
                  "Killer Party 1986".
                  03 Filler PIC X(60) VALUE
                  "Slaughter High 1986".
                  03 Filler PIC X(60) VALUE
                  "Raiders of the Lost Ark 1981".
                  03 Filler PIC X(60) VALUE
                  "Indiana Jones and the Temple of Doom 1984".
                  03 Filler PIC X(60) VALUE
                  "Friday the 13th Part 2 1981".
                  03 Filler PIC X(60) VALUE
                  "Sudden Death 1995".
                  03 Filler PIC X(60) VALUE
                  "Porco Rosso 1992".
                  03 Filler PIC X(60) VALUE
                  "Princess Mononoke 1997".
                  03 Filler PIC X(60) VALUE
                  "Spirited Away 2001".
                  03 Filler PIC X(60) VALUE
                  "Howl's Moving Castle 2004".
                  03 FILLER PIC X(60) VALUE
                  "Evil Dead Trap(Shiryo no wana) 1998".


               02 FILLER REDEFINES MovieValues.
                   03 RandomMovie PIC X(60) OCCURS 322 TIMES
                                           INDEXED BY Ridx.
           01 RC.
               02 RCValues.
                 03 Filler PIC X(60) VALUE
           "**** Classic for a reason. Didn't need any women".
                 03 Filler PIC X(60) VALUE
           "**   Weakest of the trilogy. Sid dying didn't help".
                 03 Filler PIC X(60) VALUE
           "***  Solid Buddy Cop movie almost feels like a 70s movie".
                 03 Filler PIC X(60) VALUE
            "**** What a fuckin treat, pay attention in the last scene".
                 03 Filler PIC X(60) VALUE
            "***** Maybe best christmas movie out there".
                 03 Filler PIC X(60) VALUE
           "**** Dwindles a bit after he goes to jail but real fun".
                 03 Filler PIC X(60) VALUE
           "**** Good political thriller. Something about the truth".
                 03 Filler PIC X(60) VALUE
           "***  Anachronistic Joy With Heath Ledger(not dead)".
                 03 Filler PIC X(60) VALUE
                  "**** Above Friday 13th but below Halloween".
                 03 Filler PIC X(60) VALUE
                  "*    Fucking terrible jump scare nonsense".
                 03 Filler PIC X(60) VALUE
              "**** HAS THE WHOLE WORLD GONE CRAZY?! and PROBATION!".
                 03 Filler PIC X(60) VALUE
           "***  Great but a lot of the jokes are topical to the 70s".
                 03 Filler PIC X(60) VALUE
                  "***** This is the horror one".
                 03 Filler PIC X(60) VALUE
                  "**** This is the action one".
                 03 Filler PIC X(60) VALUE
               "**** Fuck Huey Lewis, theres a scene with True order!".
                 03 Filler PIC X(60) VALUE
                  "**** A PLEDGE PIN?!".
                 03 Filler PIC X(60) VALUE
                  "***  Warning: John Goodman".
                 03 Filler PIC X(60) VALUE
           "***  Thriller that kind of drags with Bridges going insane".
                 03 Filler PIC X(60) VALUE
                  "**** Carpenter's first(good one) Rockin theme song".
                 03 Filler PIC X(60) VALUE
                  "**** It's back to the future I got nothin to say".
                 03 Filler PIC X(60) VALUE
                "**** Worse than the first but not a whole star worse".
                 03 Filler PIC X(60) VALUE
                  "**** See #2".
                 03 Filler PIC X(60) VALUE
                  "**** Goddamn funny".
                 03 Filler PIC X(60) VALUE
                  "**** I actually think I like the second one better".
                 03 Filler PIC X(60) VALUE
                  "**** Better than the first (dont watch the third)".
                 03 Filler PIC X(60) VALUE
           "***** Possibly first movie with an asian main character".
                 03 Filler PIC X(60) VALUE
                  "**** 69 DUDES!".
                 03 Filler PIC X(60) VALUE
           "**   Worse than Tommy Boy but its alright".
                 03 Filler PIC X(60) VALUE
                  "***** WE'RE GUNNA NEED A SHIT LOAD OF DIMES!".
                 03 Filler PIC X(60) VALUE
                  "**   Seems racist but Cheech wrote it so who knows!".
                 03 Filler PIC X(60) VALUE
                  "***  Best 90s Eddie Murphy movie".
                 03 Filler PIC X(60) VALUE
                  "**** Second(?) Best Black movie".
                 03 Filler PIC X(60) VALUE
                  "***  Peter Jackson crazy horror".
                 03 Filler PIC X(60) VALUE
           "***  Richard Pryor teams with Fat man for average comedy".
                 03 Filler PIC X(60) VALUE
                  "     Actually Havent watch it yet lol".
                 03 Filler PIC X(60) VALUE
                  "***  Billy Murry's character is kinda annoying".
                 03 Filler PIC X(60) VALUE
                  "***  Classic 80s RomCom".
                 03 Filler PIC X(60) VALUE
                  "**** Inspiration for Adam Sandler?".
                 03 Filler PIC X(60) VALUE
                  "***** I personally like it better than Goodfellas".
                 03 Filler PIC X(60) VALUE
                  "***  Pretty good for the crap it spawned later".
                 03 Filler PIC X(60) VALUE
                  "**   Slightly Worse than the first".
                 03 Filler PIC X(60) VALUE
             "**   Worse than the second but better than the fourth".
                 03 Filler PIC X(60) VALUE
                  "**** Woody Allen being Woody Allen".
                 03 Filler PIC X(60) VALUE
           "***  Shopping mall horror - Check the joe bob version".
                 03 Filler PIC X(60) VALUE
                  "***  Haunted Car nonsense, but its Carpenter".
                 03 Filler PIC X(60) VALUE
                  "***  Jews?! OUT WEST?!".
                 03 Filler PIC X(60) VALUE
                  "***  Cant belive this was made in 81".
                 03 Filler PIC X(60) VALUE
                  "**** Fun times had by all".
                 03 Filler PIC X(60) VALUE
                  "***  Check out stallones fuckin apartment, man".
                 03 Filler PIC X(60) VALUE
                  "***** The royal penis is clean".
                 03 Filler PIC X(60) VALUE
               "**** Action Romp backed with excellent xylphone music".
                 03 Filler PIC X(60) VALUE
                  "**** THE LAMENTATIONS OF THEIR WOMEN".
                 03 Filler PIC X(60) VALUE
                  "**** What a stupid reason to go to jail".
                 03 Filler PIC X(60) VALUE
                  "***  Featuring Tom Atkins as the abusive father".
                 03 Filler PIC X(60) VALUE
                  "**   80s Garbage".
                 03 Filler PIC X(60) VALUE
           "***  Lawsuit stopped the word 'living' from the title".
                 03 Filler PIC X(60) VALUE
                  "**** A good goddamn time".
                 03 Filler PIC X(60) VALUE
           "**** There's a whole movie in here aside from the rape!".
                 03 Filler PIC X(60) VALUE
                  "***  Like Taco Bell would ever reign over Carls jr.".
                 03 Filler PIC X(60) VALUE
                  "***** Die Hard but in a building".
                 03 Filler PIC X(60) VALUE
                  "**** Die Hard but in an airport".
                 03 Filler PIC X(60) VALUE
                  "**** Die Hard but in New York.  ZUES!".
                 03 Filler PIC X(60) VALUE
                  "**** Fun comedy with Steve Martin and some brit".
                 03 Filler PIC X(60) VALUE
           "**** Is he actually gay? What the hell is really going on".
                 03 FILLER PIC X(60) VALUE
                  "**** Slim Pickens Strikes Back".
                 03 Filler PIC X(60) VALUE
                  "**** Whelp see ya later".
                 03 Filler PIC X(60) VALUE
             "**** Pretty good aside from the 90s technology nonsense".
                 03 Filler PIC X(60) VALUE
                  "***  More of the same yet worse".
                 03 Filler PIC X(60) VALUE
                  "**** Inspired by Metal Gear Solid 2".
                 03 Filler PIC X(60) VALUE
                  "**** Remake of the first, more tree rape".
                 03 Filler PIC X(60) VALUE
                  "***  British King Arthur fun time".
                 03 Filler PIC X(60) VALUE
                  "**** Oh yah".
                 03 Filler PIC X(60) VALUE
                  "***  Fun Fact: Directed by a woman".
                 03 Filler PIC X(60) VALUE
                  "**** What a fuckin' bedroom this guy's got".
                 03 Filler PIC X(60) VALUE
           "***  Decent baseball movie James Earl saves it for sure".
                 03 Filler PIC X(60) VALUE
                  "**** Better than the book".
                 03 Filler PIC X(60) VALUE
                  "***** Check out the rubber dogs he smashes together".
                 03 Filler PIC X(60) VALUE
                  "**** Pretty fun one with Chevy".
                 03 Filler PIC X(60) VALUE
                  "***  Less fun one with Chevy".
                 03 Filler PIC X(60) VALUE
                  "**** Best Black movie maybe?".
                 03 Filler PIC X(60) VALUE
                  "***  Jason did nothing wrong".
                 03 Filler PIC X(60) VALUE
                  "**** Best chick flick around Kathy Bates is great".
                 03 Filler PIC X(60) VALUE
                  "**** Great 80s horror with even better makeup".
                 03 Filler PIC X(60) VALUE
                  "**   Meh".
                 03 Filler PIC X(60) VALUE
                  "***  Not half bad for a 2000s remake of good 80s".
                 03 Filler PIC X(60) VALUE
                  "**** If only it was all first half".
                 03 Filler PIC X(60) VALUE
                  "***** Rick Moranis pronouces Mario as MAREIO".
                 03 Filler PIC X(60) VALUE
                  "**** Period pieces are fun and this one is good".
                 03 Filler PIC X(60) VALUE
           "**** It's four stars to reinforce that i like Casino more".
                 03 Filler PIC X(60) VALUE
                  "***  Peak 80s Kids/Horror movie".
                 03 Filler PIC X(60) VALUE
                  "**   What the fuck man".
                 03 Filler PIC X(60) VALUE
                  "***** Harold Ramis got fuckin fat".
                 03 Filler PIC X(60) VALUE
               "**   They were def grumpier in the first, points lost".
                 03 Filler PIC X(60) VALUE
                  "***  Pretty damn funny actually".
                 03 Filler PIC X(60) VALUE
               "***** Carpenter gets bonus points, but not needed here".
                 03 Filler PIC X(60) VALUE
                  "**** Monster of 80s horror with Tom Atkins".
                 03 Filler PIC X(60) VALUE
              "***  MORGAN FREEMAN IS THE BAD GUY?! CHRISTAN SLATER?!".
                 03 Filler PIC X(60) VALUE
           "**** Real fun with Rowdy Rod, Def check the joebob version".
                 03 Filler PIC X(60) VALUE
                  "**   I dont remember why I downloaded this - action".
                 03 Filler PIC X(60) VALUE
                  "***  Featuring Connery's Spanish twin".
                 03 Filler PIC X(60) VALUE
                  "**   Compare to Fast times, male directed this time".
                 03 Filler PIC X(60) VALUE
           "***  It's almost really good, goes a bit off the rails tho".
                 03 Filler PIC X(60) VALUE
                  "***  Sandler still has some decent ones in him".
                 03 Filler PIC X(60) VALUE
                  "***  Wacky confusing Carpenter".
                 03 Filler PIC X(60) VALUE
                  "**** Man did part 2 suck or what".
                 03 Filler PIC X(60) VALUE
                  "**   Adults are boring in horror".
                 03 Filler PIC X(60) VALUE
                  "**** Featuring Italians".
                 03 Filler PIC X(60) VALUE
                  "**   Roger Moore worst Bond".
                 03 Filler PIC X(60) VALUE
                  "***** The rest of his suck".
                 03 Filler PIC X(60) VALUE
                  "*     BLAH".
                 03 Filler PIC X(60) VALUE
                  "*** Midling".
                 03 Filler PIC X(60) VALUE
                  "** Could have been worse, poor Brosnan".
                 03 Filler PIC X(60) VALUE
                  "***  Kinda boring but decent".
                 03 Filler PIC X(60) VALUE
                  "**   Damn it, Roger Moore again".
                 03 Filler PIC X(60) VALUE
                  "**** One of my favorite Bonds...Top 5 for sure".
                 03 Filler PIC X(60) VALUE
                  "**** Bond turns lesbian Pussy straight".
                 03 Filler PIC X(60) VALUE
                  "**** Proooooooobably the best".
                 03 Filler PIC X(60) VALUE
                  "***  Dalton is way better than Moore".
                 03 Filler PIC X(60) VALUE
                  "**   God damn it, more Moore".
                 03 Filler PIC X(60) VALUE
                  "**   Roger Moore finds Jaws love".
                 03 Filler PIC X(60) VALUE
                  "***  I guess Connery needed a check or something".
                 03 Filler PIC X(60) VALUE
              "**   Famous for the name, not the plot...Fuckin Moore".
                 03 Filler PIC X(60) VALUE
                "***  Kind of a weird one but Lazenby was a good Bond".
                 03 Filler PIC X(60) VALUE
                  "*     What the fuck was this?!".
                 03 Filler PIC X(60) VALUE
                  "**   Kind of bad after rewatches".
                 03 Filler PIC X(60) VALUE
                  "***  Dalton does decent, movie poster is pretty hot".
                 03 Filler PIC X(60) VALUE
                  "***  Not bad, not great".
                 03 Filler PIC X(60) VALUE
                  "***  One of the better Moore(crap) movies".
                 03 Filler PIC X(60) VALUE
                  "**   HEADING DOWNHILL!".
                 03 Filler PIC X(60) VALUE
             "***  Loses points for excessive underwater spear fights".
                 03 Filler PIC X(60) VALUE
                  "***  Second best of Brosnin".
                 03 Filler PIC X(60) VALUE
                  "***  Featuring Connery's Japanese Twin".
                 03 Filler PIC X(60) VALUE
                  "***  Check out that 60s cgi!".
                 03 Filler PIC X(60) VALUE
                  "***** Boat was big enough".
                 03 Filler PIC X(60) VALUE
           "***** A teen girl in the 90s knowing what unix is?".
                 03 Filler PIC X(60) VALUE
                  "**   80s gender bender womens power or something".
                 03 Filler PIC X(60) VALUE
                  "***  John Belushi is dead? Shit get his brother!".
                 03 Filler PIC X(60) VALUE
                  "***  That's the girl from Ms. Doubtfire, right?".
                 03 Filler PIC X(60) VALUE
                  "**** Agressive Toupee acting".
                 03 Filler PIC X(60) VALUE
                  "***** One of my top picks for all time".
                 03 Filler PIC X(60) VALUE
           "**   Kind of hard to like even tho hes parodying himself".
                 03 Filler PIC X(60) VALUE
                  "***** Everything I want from an R rated cop movie".
                 03 Filler PIC X(60) VALUE
                  "**** B-But youre bleck!".
                 03 Filler PIC X(60) VALUE
                  "**** Shit maybe this was the best 90s Murphy".
                 03 Filler PIC X(60) VALUE
                  "****Tunisians see gay British dick".
                 03 Filler PIC X(60) VALUE
                  "***  Pretty fun dystopian 70s flick".
                 03 Filler PIC X(60) VALUE
           "**** Apparently they were supposed to fuck in the script".
                 03 Filler PIC X(60) VALUE
                  "***  Shockingly different from its sequels".
                 03 Filler PIC X(60) VALUE
                  "**** Fun times all around".
                 03 Filler PIC X(60) VALUE
                  "***  Really could just end after the chainsaw fight".
                 03 Filler PIC X(60) VALUE
                  "***  Good for a background comedy".
                 03 Filler PIC X(60) VALUE
                  "**   Haha what the hell 1980s".
                 03 Filler PIC X(60) VALUE
                  "**** Nicholson wins an oscar".
                 03 Filler PIC X(60) VALUE
             "***  Not bad adventure/comedy in the west with Gibson".
                 03 Filler PIC X(60) VALUE
                  "**   Fun Garbage with Emilio".
                 03 Filler PIC X(60) VALUE
                  "***  Basically a true story".
                 03 Filler PIC X(60) VALUE
             "***** I understand if you don't want to watch it again".
                 03 Filler PIC X(60) VALUE
                  "**** YUUTS?!".
                 03 Filler PIC X(60) VALUE
                  "**** I think its fantastic, you might not".
                 03 Filler PIC X(60) VALUE
              "***  Pretty Decent Christmas movie, almost a classic".
                 03 Filler PIC X(60) VALUE
                  "**   Prett large step down from the origianl".
                 03 Filler PIC X(60) VALUE
                  "**** Holiday Rooooaaaooooaaaaooaood".
                 03 Filler PIC X(60) VALUE
                  "***** I think its the best so there".
                 03 Filler PIC X(60) VALUE
            "**** Fun 80s kind of post apocolyptic with cheerleaders".
                 03 Filler PIC X(60) VALUE
                  "**** Intro boring, Movie great, TOM ATKINS".
                 03 Filler PIC X(60) VALUE
                  "***  It's something alright".
                 03 Filler PIC X(60) VALUE
                  "No Country for Old Men 2007".
                 03 Filler PIC X(60) VALUE
           "***** I guess its maaybe better than There Will Be Blood".
                 03 Filler PIC X(60) VALUE
                  "**** Some hair nets in yonder burea".
                 03 Filler PIC X(60) VALUE
           "**   Kind of boring but different from newer version".
                 03 Filler PIC X(60) VALUE
                  "**** Worth watching to see Brad Pitt eat".
                 03 Filler PIC X(60) VALUE
                  "***** Better if you know the history of the era".
                 03 Filler PIC X(60) VALUE
                  "***** To hate Ratchet more, see Deep Space Nine".
                 03 Filler PIC X(60) VALUE
                  "**** History repeats iself! Expect a remake soon".
                 03 Filler PIC X(60) VALUE
                  "**** Fuckin' crazy Inception theft".
                 03 Filler PIC X(60) VALUE
           "***  It's alright but you gotta be in the mood for it".
                 03 Filler PIC X(60) VALUE
                  "**** Don't go down that road".
                 03 Filler PIC X(60) VALUE
                  "**   Obv not as good as original".
                 03 Filler PIC X(60) VALUE
            "***** Pretty fuckin great(imo) see Joebob for original".
                 03 Filler PIC X(60) VALUE
                  "***** Steve Martin teams with fat man for comedy".
                 03 Filler PIC X(60) VALUE
               "**** Keanu shoots angrly into the air for some reason".
                 03 Filler PIC X(60) VALUE
              "**   Watch it for the erotic thirller genre experience".
                 03 Filler PIC X(60) VALUE
                  "**   Like the original but more lesbianic".
                 03 Filler PIC X(60) VALUE
                  "***  First one's pretty good".
                 03 Filler PIC X(60) VALUE
                  "**   It's getting worse...".
                 03 Filler PIC X(60) VALUE
                  "**   Bleh".
                 03 Filler PIC X(60) VALUE
                  "*    Shut it down".
                 03 Filler PIC X(60) VALUE
                  "***** Actually done by Tobe Hooper".
                 03 Filler PIC X(60) VALUE
                  "**   Same director as A Christmas Story".
                 03 Filler PIC X(60) VALUE
                  "**** I actually think it's too much testosterone".
                 03 Filler PIC X(60) VALUE
                  "***  Not really talked about Carpenter, but solid".
                 03 Filler PIC X(60) VALUE
                  "***** Something about gay rape and a foot fetish".
                 03 Filler PIC X(60) VALUE
                  "**   A must watch just to see a Pam Anderson movie".
                 03 Filler PIC X(60) VALUE
                  "***  Val Kilmer before he got fat ".
                 03 Filler PIC X(60) VALUE
                  "***  Can you believe the remake didnt use China?".
                 03 Filler PIC X(60) VALUE
                  "**   80s Adventure but I don't really remember it".
                 03 Filler PIC X(60) VALUE
                  "**** They're all the same to me".
                 03 Filler PIC X(60) VALUE
                  "***  This one is out there...Horror I guess".
                 03 Filler PIC X(60) VALUE
            "**** Actually fun if youre not a modern day PC police".
                 03 Filler PIC X(60) VALUE
                  "**   Bet you didn't know this exsited".
                 03 Filler PIC X(60) VALUE
                  "***  ROAD HOUSE".
                 03 Filler PIC X(60) VALUE
                  "**** Red Foreman kills people but is still bald".
                 03 Filler PIC X(60) VALUE
                  "***** Pretty great".
                 03 Filler PIC X(60) VALUE
                  "**  I had to watch it since I liked the original".
                 03 Filler PIC X(60) VALUE
                  "***** MY PARENTS ARE GOING TO BE SO MAD AT MEEEEee".
                 03 Filler PIC X(60) VALUE
                  "**** RUSSIAN VODKA POISONED BY CHERNOBYL".
                 03 Filler PIC X(60) VALUE
                  "***** I dunno why movies like these died out".
                 03 Filler PIC X(60) VALUE
            "**** Japanese movie about killing christians, true story".
                 03 Filler PIC X(60) VALUE
              "***  Stephen King poo about werewolves and Gary Busey".
                 03 Filler PIC X(60) VALUE
           "**** The ugly nerd girl is festers wife in aadams family 2".
                 03 Filler PIC X(60) VALUE
                  "**** River phoenix wasnt dead yet!".
                 03 Filler PIC X(60) VALUE
                  "**** Fucking wild one".
                 03 Filler PIC X(60) VALUE
                  "***  Needs more Rick Moranis".
                 03 Filler PIC X(60) VALUE
                  "**** 12 year olds get leeches on their dicks".
                 03 Filler PIC X(60) VALUE
                  "**** I guess its my fave".
                 03 Filler PIC X(60) VALUE
                  "**** Featuring Gary Busey's son: Teeth".
                 03 Filler PIC X(60) VALUE
                  "***  Neo Noir ROCK MUSICAL".
                 03 Filler PIC X(60) VALUE
           "**   Bruce Willis balding just enough to look like my dad".
                 03 Filler PIC X(60) VALUE
           "**   Worth Watching if you like Fatman in average comedies".
                 03 Filler PIC X(60) VALUE
            "**** Bonus star for Mark Harmon, worth it for him alone".
                 03 Filler PIC X(60) VALUE
               "**** Some people dont like this for some weird reason".
                 03 Filler PIC X(60) VALUE
                  "***  Black man outsmarts a bunch of white people".
                 03 Filler PIC X(60) VALUE
                  "**** Japanese Ramen eating wackiness".
                 03 Filler PIC X(60) VALUE
                  "***  Perfect look back at the 80s".
                 03 Filler PIC X(60) VALUE
                  "***  It's alright.".
                 03 Filler PIC X(60) VALUE
                  "***** I can't do half stars here but this is 4 1/2".
                 03 Filler PIC X(60) VALUE
                  "**** Totally great Tom Hanks classic".
                 03 Filler PIC X(60) VALUE
               "**** The perfect kids movie and pretty funny to boot".
                 03 Filler PIC X(60) VALUE
                  "**   More 1980s teen nosense".
                 03 Filler PIC X(60) VALUE
                  "**** Surprsingly Long but good, with nazis".
                 03 Filler PIC X(60) VALUE
                  "**** Loose Prequel to Enemy of the State".
                 03 Filler PIC X(60) VALUE
           "***  Created a genre of it's own, also Fairuza Balk is hot".
                 03 Filler PIC X(60) VALUE
           "**   Alicia Silverstone seduces older man, loses career".
                 03 Filler PIC X(60) VALUE
                  "**** Goddamn fuckin funny(to me)".
                 03 Filler PIC X(60) VALUE
                  "***** One of the few movies where no one dies".
                 03 Filler PIC X(60) VALUE
           "***  Pretty good, I suppose it could be 4 but 3 also fine".
                 03 Filler PIC X(60) VALUE
                  "**** Better than First one with lots of Sid Haig".
                 03 Filler PIC X(60) VALUE
                  "**** Some people think its the best".
                 03 Filler PIC X(60) VALUE
                  "***  Sequel is better in every way".
                 03 Filler PIC X(60) VALUE
                  "***  Scream is responsible for this".
                 03 Filler PIC X(60) VALUE
                  "*****LEELU DALLAS MULTIPASS".
                 03 Filler PIC X(60) VALUE
                  "***  I want to give it 4 for atmosphere, but can't".
                 03 Filler PIC X(60) VALUE
            "***  Michael J before the time shakes, pretty decent".
                 03 Filler PIC X(60) VALUE
                  "**** Totally worth the time if you havent seen it".
                 03 Filler PIC X(60) VALUE
           "**   It's mostly good, Child killers always fun".
                 03 Filler PIC X(60) VALUE
                  "**** 60s western...you dont have to watch it.".
                 03 Filler PIC X(60) VALUE
                  "***** Just impossible to argue agaisnt".
                 03 Filler PIC X(60) VALUE
                  "***** Man is this good or what, but I like the 60s.".
                 03 Filler PIC X(60) VALUE
                  "**** Worth Watching".
                 03 Filler PIC X(60) VALUE
                  "***  Fatman and Akroyd in the woods comedy".
                 03 Filler PIC X(60) VALUE
                  "***  Rutger Hauer terrifies everyone who sees him".
                 03 Filler PIC X(60) VALUE
                  "***  If you think this is bad, check out the 7th".
                 03 Filler PIC X(60) VALUE
             "**** I liked it a lot, not as good as his classics tho".
                 03 Filler PIC X(60) VALUE
                  "**** This movie is just impossible to explain".
                 03 Filler PIC X(60) VALUE
                  "**** WILLIAM ZABKA IN: 80S BADGUY".
                 03 Filler PIC X(60) VALUE
                  "     Haven't watched this yet, whoops".
                 03 Filler PIC X(60) VALUE
           "***  Great British kind of erotic-horror its somethin else".
                 03 Filler PIC X(60) VALUE
                  "**   80s scifi adventure kids movie sorta - decent".
                 03 Filler PIC X(60) VALUE
                  "*** The Coreys star with some blond guy as vampires".
                 03 Filler PIC X(60) VALUE
           "***  Just not nearly as good as the others(except death)".
                 03 Filler PIC X(60) VALUE
                  "**   Fun for what it is".
                 03 Filler PIC X(60) VALUE
                  "***  Better than the other".
                 03 Filler PIC X(60) VALUE
                  "**** Give it a watch if youre in a 70s mood".
                 03 Filler PIC X(60) VALUE
                  "***** Goddamn fuckin good".
                 03 Filler PIC X(60) VALUE
                  "***  I don't love it as much as others".
                 03 Filler PIC X(60) VALUE
           "**** Really fun, Quigley goes full frontal".
                 03 Filler PIC X(60) VALUE
             "**** Best Nic Cage, but not because of him".
                 03 Filler PIC X(60) VALUE
                  "**** Tim Curry's Transvestite Hour".
                 03 Filler PIC X(60) VALUE
                  "***  Solid 80s Arnld".
                 03 Filler PIC X(60) VALUE
           "***  Michael J Fucks his Aunt and takes over company".
                 03 Filler PIC X(60) VALUE
             "***** It's not the best of all time but pretty damn good".
                 03 Filler PIC X(60) VALUE
               "***** Starts slow, gets good, Duvall is weird looking".
                 03 Filler PIC X(60) VALUE
                  "***** BETTER THAN THE SEQUEL, GET FUCKED".
                 03 Filler PIC X(60) VALUE
                  "***** Fuckin brutal beginning and wheelchair man".
                 03 Filler PIC X(60) VALUE
                  "***** Best horror movie all tiem".
                 03 Filler PIC X(60) VALUE
                  "**** Might not like it because of age but its good".
                 03 Filler PIC X(60) VALUE
                  "*** I do enjoy classic Connery".
                 03 Filler PIC X(60) VALUE
                  "****  Fantastic 70s if you havent seen it".
                 03 Filler PIC X(60) VALUE
                  "**** Totally underrated and good".
                 03 Filler PIC X(60) VALUE
                  "**** Me and James both think its great".
                 03 Filler PIC X(60) VALUE
                  "***** One of my big Favs...Maybe No deserved it".
                 03 Filler PIC X(60) VALUE
           "*****Rowdy Rod Beats up black man for six minutes straight".
                 03 Filler PIC X(60) VALUE
                  "***  Good Enough Spade and Farley were a good team".
                 03 Filler PIC X(60) VALUE
                  "**** Arnold getting a little strange with this oen".
                 03 Filler PIC X(60) VALUE
                  "**** Great all around comedy with Murph and Akroyd".
                 03 Filler PIC X(60) VALUE
                  "***** It's so good I can't explain it".
                 03 Filler PIC X(60) VALUE
           "**** I cant remember if I like this one or the remake more".
                 03 Filler PIC X(60) VALUE
                  "**** Peak Arnold and funny to boot".
                 03 Filler PIC X(60) VALUE
                  "***  Tom Hanks is an anal retentive nerd with a dog".
                 03 Filler PIC X(60) VALUE
                  "***  Pretty decent seqeul to the Fugative".
                 03 Filler PIC X(60) VALUE
                  "**** Fatman takes care of Culkin and some bitch".
                 03 Filler PIC X(60) VALUE
              "**   Carpenter dwindling in the 90s but worth watching".
                 03 Filler PIC X(60) VALUE
                  "***  Way better than it ever deserved to be".
                 03 Filler PIC X(60) VALUE
                  "**   Carpenter tries again in the 90s...meh".
                 03 Filler PIC X(60) VALUE
                  "***  Ferris Bueller can't swim and it haunts him".
                 03 Filler PIC X(60) VALUE
                  "**   Watch it simply for how dumb it is".
                 03 Filler PIC X(60) VALUE
                  "***  Solid 80s nonsense".
                 03 Filler PIC X(60) VALUE
           "***  Woody has been in a shocking amount of sports movies ".
                 03 Filler PIC X(60) VALUE
                  "**** OUT OF THE WAY, PECK!".
                 03 Filler PIC X(60) VALUE
                  "***** I Love it, fuck you if you don't".
                  03 Filler PIC X(60) VALUE
           "***  Made for Tv, it's pretty great take on The Odyssey".
                  03 Filler PIC X(60) VALUE
                  "***** 8 Year olds, dude".
                  03 Filler PIC X(60) VALUE
                  "**** Lesser Ghibli movies still get 4 stars".
                  03 Filler PIC X(60) VALUE
            "***  So good it got a South Park episode parodying it".
                  03 Filler PIC X(60) VALUE
                  "****  SUCK MY WHITE ASS, BALL!".
                  03 Filler PIC X(60) VALUE
           "**** Weakest Ghibli with prepubescent girl main character?".
                  03 Filler PIC X(60) VALUE
                  "***** Two chicks at the same time, man".
                  03 Filler PIC X(60) VALUE
                  "****  Good, not amazing, but good".
                  03 Filler PIC X(60) VALUE
             "***  Group of 12 year olds killing off the neighborhood".
                  03 Filler PIC X(60) VALUE
                  "**   Just look at the name.  GYMKATA".
                  03 Filler PIC X(60) VALUE
                  "***  Guest starring the Fat man".
                  03 Filler PIC X(60) VALUE
                  "***  I saw this once at like 2am on TNT one night".
                  03 Filler PIC X(60) VALUE
               "***  British horror pretending to be American horror".
                  03 Filler PIC X(60) VALUE
                  "*****THE FLY GOES INTO HIS MOUTH".
                  03 Filler PIC X(60) VALUE
                  "**** Point loss for annoying woman".
                  03 Filler PIC X(60) VALUE
                  "***   Who the fuck wears brown panties? Barf".
                  03 Filler PIC X(60) VALUE
                  "***  Die Hard in a hockey arena AND JCVD".
                  03 Filler PIC X(60) VALUE
                  "**** Made for middle aged men...So better watch it".
                  03 Filler PIC X(60) VALUE
                  "*****It's whatever".
                  03 Filler PIC X(60) VALUE
                  "*****Colorful".
                  03 Filler PIC X(60) VALUE
                  "**** 4 stars, suck it".
                  03 FILLER PIC X(60) VALUE
            "**** Totally fucked Japanese slasher, you've been warned".
               02 Test1 REDEFINES RCValues.
                   03 RatingsComments      OCCURS 322 TIMES.
                       04 Comment          PIC X(60).
                                                                    
           01 CharCount            PIC 99.
           01 StrgSize             PIC 99.
           01 RandomGen.
               02 FILLER           PIC X(4).
               02 Seed             PIC 9999.    
           01 Rando                PIC 9.
           01 IDX                  PIC  99.
           01 MovieMod             PIC 999 VALUE 321.
           01 MinNum               PIC 9 VALUE 1.
           LINKAGE SECTION.
           01 MovieRand            PIC 9(3).
           01 SuggestionTable.             
               02 SuggestionValues         OCCURS 5 TIMES.
                   03 SMovieName               PIC X(60).
                   03 SComment                 PIC X(60).
           PROCEDURE DIVISION USING  MovieRand, 
                                       SuggestionTable.
           
           MOVE FUNCTION CURRENT-DATE TO RandomGen
           Add 1 TO seed
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL idx > 5
           COMPUTE MovieRand = FUNCTION RANDOM * (MovieMod - 
                               MinNum + 1) + MinNum
           add 1 to seed
           DISPLAY RandomMovie(MovieRand)
           MOVE RandomMovie(MovieRand) TO SmovieName(idx)
           MOVE Comment(MovieRand) TO  SComment(idx)
           END-PERFORM.
           
           END PROGRAM SuggestMovie.
