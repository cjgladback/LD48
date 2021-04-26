-> startscreen

//alternative names: Appearances to the Contrary, Shots in the Dark
//this title, Of Sound Mind, works best if we bring up the weirdly intense release forms Kasey had to sign before they even knew her research would take her into the caves

EXTERNAL holdIt(wait)
EXTERNAL playIt(playing)
EXTERNAL stopIt(playing)

LIST location = carNight, carDay, lhTop, lhMid, lhGround, entry, hall, hallwindow, stairs, light

LIST props = camera, photoBlank, photoCreep, release, book, research

LIST sounds = roadF, road, wind, wheedee, wheedeeL, whim

VAR wait = -1.1

VAR playing = roadF
VAR saying = wheedeeL

=== startscreen ===
~ location = carNight
~ saying = wheedeeL
~ playing = road
~ playIt(playing)
~ playIt(saying)
Places to go, people to see!
+ [Get on the road.]->ontheroad

=== ontheroad ===
~ stopIt(playing)
~ playing = roadF
~ playIt(playing)
~ location = carDay
~ wait = 3
~ holdIt(wait)
Okay okay, how 'bout this one? Did You Know: #kasey
+ [&]
~ wait = 5
~ holdIt(wait)
 -- The urge to sing The Lion Sleeps tonight is always just a whim away, a whim away, a whim away, a whim away... #kasey
 ++ [&]
 ~ wait = 2
 ~ holdIt(wait)
  --- Oh no. Where'd you hear that one? #sarah
  +++ [&]
  ~ wait = 3
  ~ holdIt(wait)
   ---- Ah, I think it was a repost in a collection of cat puns, of all things. #kasey
   ++++ [&]
   ~ wait = 1.5
   ~ holdIt(wait)
    ----- Cats? #sarah
    +++++ [&]
    ~ wait = 3
    ~ holdIt(wait)
     ------ The mention of the word "lion" was enough, I suppose. #kasey
     ++++++ [&]
     ~ wait = 2
     ~ holdIt(wait)
      ------- I guess so. #sarah
      +++++++ [&]
      ~ wait = 3
      ~ holdIt(wait)
       -------- Hey, how is the little lion, by the way? #kasey
       ++++++++ [&]
       ~ wait = 7
       ~ holdIt(wait)
        --------- Neko? He's great. Sam's watching him while I'm gone. Pretty sure I lost the title of "best human" when the first fish can opened. #sarah
        +++++++++ [&]
        ~ holdIt(wait)
         ---------- Aw! Honestly, I miss him almost as much as Rufus. Wish you could've brought him along. #kasey
         ++++++++++ [&]
         ~ wait = 10
         ~ holdIt(wait)
          ----------- Can you imagine? Cross country with a cat? The sound alone would drive me crazy in minutes. Plus, no way would I get him back in the car for the next leg. #sarah
          +++++++++++ [&]
          ~ wait = 12
          ~ holdIt(wait)
           ------------ True. Though I'm sure the lighthouse conservators would understand if I inexplicably had a cat all the sudden, scratching up the antique woodwork and visitors. #kasey
           ++++++++++++ [&]
           ~ wait = 8
           ~ holdIt(wait)
            ------------- Oh yeah, old buildings are famously built to last... unless someone uses them as a scratching post. #sarah
            +++++++++++++ [&]
            ~ wait = 6
            ~ holdIt(wait)
             -------------- Just like the people who fund their upkeep. #kasey
             ++++++++++++++ [&]
             ~ wait = 4
             ~ holdIt(wait)
              --------------- Anybody reduced you to clawing? #sarah
              +++++++++++++++ [&]
              ~ wait = 10
              ~ holdIt(wait)
               ---------------- No, no. The hands-on ones have been relatively content to leave me to my hideyholes since that whole release form panic. #kasey
               ++++++++++++++++ [&]
               ~ wait = 4
               ~ holdIt(wait)
                ----------------- Oh yes, the Panic of 86. #sarah
                +++++++++++++++++ [&]
                ~ holdIt(wait)
                 ------------------ Sorry, the what? #kasey
                 ++++++++++++++++++ [&]
                 ~ wait = 8
                 ~ holdIt(wait)
                  ------------------- The one where they threatened to 86 your whole deal cause someone forgot to mail the paperwork. #sarah
                  +++++++++++++++++++ [&]
                  ~ wait = 3
                  ~ holdIt(wait)
                   -------------------- Oh, ha. Yeah. #kasey
                   ++++++++++++++++++++ [&]
                   ~ wait = 6
                   ~ holdIt(wait)
                    --------------------- I mean, I don't want you to sue me either, but that sounded extreme. #sarah
                    +++++++++++++++++++++ [&]
                    ~ wait = 8
                    ~ holdIt(wait)
                     ---------------------- It wasn't anything I haven't signed before. And it's their first time handling this program. They were nervous. #kasey
                     ++++++++++++++++++++++ [&]
                     ~ wait = 10
                     ~ holdIt(wait)
                      ----------------------- The only thing odd was that they encouraged me to go down to check out the caves while they processed it. #kasey
                      +++++++++++++++++++++++ [&]
                      ~ holdIt(wait)
                       ------------------------ Like they thought I was more likely to trip on the stairs than while spelunking. I get the feeling they don't get out much. #kasey
                       ++++++++++++++++++++++++ [&]
                       ~ wait = 14
                       ~ holdIt(wait)
                        ------------------------- Or one of their job boards sold it as "kickin' it old school in a lighthouse" and they were worried you meant the bucket. #sarah
                        +++++++++++++++++++++++++ [&]
                        ~ wait = 4
                        ~ holdIt(wait)
                         -------------------------- Ha. Anyway, safety first. #kasey
                         ++++++++++++++++++++++++++ [&]
                         ~ wait = 3
                         ~ holdIt(wait)
                          --------------------------- Legally speaking. #sarah
                          +++++++++++++++++++++++++++ [&]
                          ~ wait = 10
                          ~ holdIt(wait)
                           ---------------------------- Speaking of, did you get a chance to check your headlights are working? There are a lot of dropoffs around here. #kasey
                           ++++++++++++++++++++++++++++ [&]
                           ~ holdIt(wait)
                            ----------------------------- Mine have gone out a few times on the way back from town and there are some harrowing turns. #kasey
                            +++++++++++++++++++++++++++++ [&]
                            ~ wait = 4
                            ~ holdIt(wait)
                             ------------------------------ I should be there before dusk - wait, "a few times?!" #sarah
                             ++++++++++++++++++++++++++++++ [&]
                             ~ wait = 14
                             ~ holdIt(wait)
                              ------------------------------- Listen, a fully functioning automobile is outside of my prodigious and prestigious residency budget. Anyway, did you check? #kasey
                              +++++++++++++++++++++++++++++++ [&]
                              ~ holdIt(wait)
                               -------------------------------- Yeah, my dad did the full gamut of checks before I had a chance. I was more worried I'd forget something on the packing list. #sarah
                               ++++++++++++++++++++++++++++++++ [&]
                               ~ wait = 10
                               ~ holdIt(wait)
                                --------------------------------- Oh, did you bring the camera? #kasey
                                +++++++++++++++++++++++++++++++++ [&]
                                ~ wait = 14
                                ~ holdIt(wait)
                                 ---------------------------------- Yes. And enough of the film we could burn it for heat if we needed. The whole vacation stress test is a go. #sarah
                                 ++++++++++++++++++++++++++++++++++ [&]
                                 ~ holdIt(wait)
                                  ----------------------------------- Fantastic! I can't wait to show you around the caves here, there are so many cool phenomena! I swear some of them are previously unrecorded. #kasey
                                  +++++++++++++++++++++++++++++++++++ [&]
                                  ~ holdIt(wait)
                                   ------------------------------------ Oh! Oh! Even better, one of the ones I can't find in any research is in a section with magnetic fields that mess with my phone's power source! #kasey
                                   ++++++++++++++++++++++++++++++++++++ [&]
                                   ~ wait = 4
                                   ~ holdIt(wait)
                                    ------------------------------------- Is your phone okay? #sarah
                                    +++++++++++++++++++++++++++++++++++++ [&]
                                    ~ wait = 16
                                    ~ holdIt(wait)
                                     -------------------------------------- Yeah, it always powers back on - but! I haven't gotten a picture. Now, we can say that the first photograph was taken on the original prototype Sarah N. Dippy Pic! #kasey
                                     ++++++++++++++++++++++++++++++++++++++ [&]
                                     ~ wait = 5
                                     ~ holdIt(wait)
                                      --------------------------------------- I'm never calling it that. #sarah
                                      +++++++++++++++++++++++++++++++++++++++ [&]
                                      ~ holdIt(wait)
                                       ---------------------------------------- Fair. Wise. Measured. #kasey
                                       ++++++++++++++++++++++++++++++++++++++++ [&]
                                       ~ wait = 14
                                       ~ holdIt(wait)
                                        ----------------------------------------- Ah I can't wait to see you. But I gotta go write some reports and you need to focus on the road. #kasey
                                        +++++++++++++++++++++++++++++++++++++++++ [&]
                                        ~ wait = 4
                                        ~ holdIt(wait)
                                         ------------------------------------------ You go, girl. Work that paper. #sarah
                                         ++++++++++++++++++++++++++++++++++++++++++ [&]
                                         ~ holdIt(wait)
                                          ------------------------------------------- Drive safely; watch the turns. #kasey
                                          +++++++++++++++++++++++++++++++++++++++++++ [&]
                                          ~ holdIt(wait)
                                           -------------------------------------------- Will do. See you soon. #sarah
                                           ++++++++++++++++++++++++++++++++++++++++++++ [&]->arrival

=== arrival ===
~ location = carNight
~ wait = -1.1
                                  
                     
                     
-> it_begins
=== it_begins ===
Weow. #owen
+ ["Hi, Owen Wilson."]->finish
+ [Don't acknowledge him.]->silence
+ [Gossip about it.]->gossip

= silence
How's it going? #dracula
+ ["Pretty okay, Drac."]->vampy

= gossip
You speak veirdly sometimes, do you not, Oven Vilson? #dracula
+ ["True dat, Drac."]
 -- Weow, I'm feeling so attacked right now. #owen
 ++ ["Ah sorry."]->
 -- Ve could alvays just back off. #dracula
 ++ ["Yeah, let's."]->finish
 ++ ["Or we could attack more literally."]
  --- I'm getting outta here. #owen
  +++ ["Fine."]
   ~ props -= camera
   ---- That vas awkvard. #dracula
   ++++ [What isn't these days.]
    ----- True zat. #dracula
    +++++ [Please stop reading my mind.]->finish

=== vampy ===
I vant to suck your blud. #dracula
+ ["Ah ah ah."]->finish
+ ["What's with Owen here?"]->it_begins.gossip

=== finish ===
\ 
-> END

=== function holdIt(x) ===
// Usually external functions can only return placeholder
// results, otherwise they'd be defined in ink!
~ return

=== function playIt(x) ===
// Usually external functions can only return placeholder
// results, otherwise they'd be defined in ink!
~ return

=== function stopIt(x) ===
// Usually external functions can only return placeholder
// results, otherwise they'd be defined in ink!
~ return


//tags list:
//#manager #msloop #dare #brad #whitney #julie #shawndra #stephen #river
//#chat #sfx #loud
//#flicker

/* Reference block from last LD

VAR chosen = ""
VAR loopcount = 0
VAR distrust = false

LIST location = office, meeting, crimescene, outside

LIST present = (manager), msloop, dare, brad, whitney, julie, shawndra, stephen, river, cops, security

LIST known = julieName, shawndraName, stephenName, riverName, smudge, clean, loupe, kill_scissors, solve_scissors, kill_pen, solve_pen, kill_tweezers, solve_tweezers


->start_loop
=== start_loop ===
~ location = office
~ present += manager
"The lights are flickering again." #manager
+ ["{Weird|Huh|Wish I could fix it}."]->intro01

=== intro01 ===
"{boardroom:You okay? }{loopcount >= 2:You look a little pale. }Oh, right; you have to get up to that meeting with Monica. We'll check into the lights without you." #manager
+ ["Thanks. Just a sec."] ->intro02

= intro02
{TURNS_SINCE(-> intro01) == 1:"Alright, but be quick. Gotta represent the punctuality of Maintenance!"|} #manager
+ {TURNS_SINCE(-> intro01) == 1} ["Punctuality? In this company? Say it ain't so."]
    -- "Ha. {&'We make the Clock Work for You,'|We put the 'timelines' in 'timeliness,'|We try to be ahead of the times,} but we're still fans of the old-fashioned way."->intro02
+ [Remind Dare in Untangling]->introDare
+ [Remind Brad in Janitorial]->introBrad
+ [Remind Whitney in Resources]->introWhitney
+ [Hurry on your way]->boardroom


= introDare
~ chosen = "dare"
Of course! What kind of Clockwork employee would I be if I forgot a summons from Monica Loop herself. I'll just leave these lines a-tanglin'. #chat #dare
+ ["I'd never doubt you."]->boardroom

= introBrad
~ chosen = "brad"
Oh yeah, I'm ready. It'll be a nice break. And hey, maybe some of these floors will actually get a smudge while we're up there. #chat #brad
+ ["Give Medusa a fighting chance without a reflection."]->boardroom

= introWhitney
~ chosen = "whitney"
Yeah, not a clue what the meeting's about. But thanks for the reminder! See you there. #chat #whitney
+ ["Oh, you brought your glasses today?"]->boardroom

=== boardroom ===
~ location = meeting
~ present -= manager
~ present += (julie, shawndra, stephen, river)
{
        - chosen == "dare":
            ~ present += dare

        - chosen == "brad":
            ~ present += brad
            
        - chosen == "whitney":
            ~ present += whitney
}
{I|Back i}n the boardroom, everyone seems to be waiting for {something|Ms. Loop to arrive}. Everyone including you.{| It's eerily quiet}
+ [Talk to {known ? shawndraName:Shawndra|your neighbor}]
  ~ known += shawndraName
  -- "Good morning! Yes, I'm Shawndra. Human Resources, but I don't bite. Does Maintenance know what this meeting's about?" #shawndra
  ++ ["I was hoping you did."]
  -- "No, alas. Such is the state of our intra-company communication." #shawndra
  ++ ["{Yeah|I guess so|Mm-hmm}."]->boardroom_msloopenters
+ [Remark on the weather]
  -- "Yeah, it sure is. I remember last year it was the opposite. Like some kind of weird cycle." #stephen
  ++ ["Ain't that the way."]
    --- "All I can say is thank goodness for the top-notch climate control in this office." #julie
    +++ [Sit back, satisfied to have broken the silence]
      ---- "Clockwork Inc is nothing if not gifted in controlling variables." #shawndra
      ++++ [...]->boardroom_msloopenters
    +++ {present ? (dare)}["Who actually designed this building?"]
      ---- "Whoever they were, they forgot to leave room for spaceheaters on the floor of the TM room." #river
      ++++ ["Is that why maintenance keeps getting requests for ceiling mounts?"]
      ---- "May cooler heads prevail." #dare
      ++++ [Laugh]->boardroom_msloopenters
      ++++ [Groan]->boardroom_msloopenters
      ++++ [Pick a fight]->fight
    +++ ["It is nice in here."]
      ---- "Well, it would be if the coffee maker in Accounting weren't on the fritz. #stephen
      ++++ [...]
      ~ known += stephenName
      ---- "I wouldn't say your chemical dependency has any bearing on whether the atmosphere is nice, Stephen." #julie
      ++++ [....]
      ~ known += julieName
      ---- "Well, Julie, I'd say it's actually kinda chilly." #stephen
      ++++ [.....]->boardroom_msloopenters
    +++ ["Wow this is boring."]
      ~ distrust = true
      ---- "...Worse than sitting in silence in a boardroom with strangers?" #stephen
      ++++ ["Fair."]->boardroom_msloopenters
      ++++ [Pick a fight]->fight
  ++ [Lapse into silence]->boardroom_msloopenters
+ [Wait this out]->boardroom_msloopenters

= boardroom_msloopenters
~present += msloop
Finally, {Ms. Monica Loop|Ms. Loop} steps into the room.
+ [...]
-"Thank you for your patience, everyone. I hope you all had a chance to get acquainted! It's so seldom that we have interdepartmental gatherings." #msloop
+ [...]
- "As you know, here at Clockwork Inc, our chief value is integrity, and that implies a need to stick together." #msloop
+ [...]
- "Now, I'm sure you're all wondering why I've gathered you here today..."
A low whine cuts her off. #msloop
vvhmvvhmVVHMVVVHHMMmwumwumwumwub #sfx #flicker
+ [There go the lights]
- "...And when we'll get the power fluctuations under control. Let's just give the generators a moment to kick in." #msloop
+ [...]
- Everything's louder in the silence after the TM's surge. Or is someone moving?
+ [...]->boardroom_split

= boardroom_split
The lights turn on again. <>
{
        - chosen == "dare":
            -> scissors

        - chosen == "brad":
            -> pen
            
        - chosen == "whitney":
            -> tweezers

        - else:
            // breakfast-based dreams have no effect
            -> focusgroup
}

= scissors
~ location = crimescene
~ present -= msloop
Five people gasp. Five people including you, as the total number still drawing breath in this room.
+ [{known ? (kill_scissors):It's reflex more than anything|{pen && tweezers:Oh dear|"...Ms. Loop?"}}]
~ known += kill_scissors
- {known ? stephenName:Stephen|The dour man} is already bending over her before anyone else can react. Ms. Loop? Oh my goodness! Are those scissors? ->interrogation

= pen
~ location = crimescene
~ present -= msloop
Five people gasp. Five people including you, as the total number still drawing breath in this room.
+ [{known ? (kill_pen):It's reflex more than anything|{scissors && tweezers:Oh dear|"...Ms. Loop?"}}]
~ known += kill_pen
- {known ? stephenName:Stephen|The dour man} is already bending over her before anyone else can react. Oh my goodness. Ms. Loop! Is that a pen? ->interrogation

= tweezers
~ location = crimescene
~ present -= msloop
Five people gasp. Five people including you, as the total number still drawing breath in this room.
+ [{known ? (kill_tweezers):It's reflex more than anything|{scissors && pen:Oh dear|"...Ms. Loop?"}}]
What the heck?! Where did those tweezers come from? Ms. Loop? Ms. Loop?? ->interrogation

= interrogation
Oh no. Poor Ms. Loop.
+ {chosen == "dare"}[Talk to Dare]->boardroom_dare
+ {chosen == "brad"}[Talk to Brad]->boardroom_brad
+ {chosen == "whitney"}[Talk to Whitney]->boardroom_whitney
+ [...]->boardroom_reset

= boardroom_dare
Sure nuff. #dare
+ [...]->boardroom_reset

= boardroom_brad
Indeed. #brad
+ [...]->boardroom_reset

= boardroom_whitney
Wow. #whitney
+ [...]->boardroom_reset

= boardroom_reset
~ chosen = ""
~ loopcount ++
~ present -= (manager, msloop, dare, brad, whitney, julie, shawndra, stephen, river, cops, security)
#flicker
->start_loop

=== focusgroup ===
I'm so glad we could have this talk. #msloop
+ [...]->boardroom.boardroom_reset

=== fight ===
~ present += security
A minute later, you're tackled to the ground by security. They call local law enforcement.
+ ["{That's overkill|C'mon, not again}!"]->arrest

= arrest
The security team pretends not to hear your objections, and you see flashing lights reflecting from the entryway.
+ [...]
-As the doors open, a{loopcount >= 1: now-familiar|n otherwordly} whine jostles your bones along with the TM's rustling and haywire lights...
+ [...]
-vvhmvvhmVVHMVVVHHMMMVVVVHHHHHMMMMMMMMMMM #sfx
+ [...]->boardroom.boardroom_reset

*/