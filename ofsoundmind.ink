-> startscreen

//alternative names: Appearances to the Contrary, Shots in the Dark
//this title, Of Sound Mind, works best if we bring up the weirdly intense release forms Kasey had to sign before they even knew her research would take her into the caves

//tags: kasey, sarah, narr, beast

EXTERNAL holdIt(wait)
EXTERNAL playIt(playing)
EXTERNAL stopIt(playing)

LIST location = carNight, carDay, lhTop, lhMid, lhGround, entry, hall, hallwindow, stairs, light

LIST props = camera, photoBlank, photoCreep, release, book, research

LIST sounds = roadF, road, creak, wheedee, wheedeeL, whim

VAR wait = -1.1
VAR neg = 0

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
+ [Skip to the destination.]->arrival

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
~ stopIt(playing)
~ stopIt(saying)
~ playing = creak
~ playIt(playing)
~ location = carNight
~ wait = -1.1
Finally. I am so late. #narr
+ And at least[...] I can explain that->arrive01
+ Can't freakin' believe[...]
~ neg ++
->arrive01

= arrive01
<> I forgot the charger, of all things. #narr
+ Alright[...], there's 
~ location = lhTop
 -- <>no mistaking this is the place. #narr
 ++ Though she didn't mention[...]
 ~ location = lhMid
  --- <> the huge, dead tree. I'll be parking well away from that, thanks.
  +++ No wonder[...]
  ~ location = lhGround
   ---- <> they needed her to sign her life away in that release form. "Quick, before you're crushed!"


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


