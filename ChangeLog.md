1.6.6
- compatibility with Ascension 2.x

1.6.5
- minor renaming of files

1.6.4
- weidu 246
- not needed backup folder
- restored original homepage and forum
- restored original readme
- minor corrections

1.6.1
- various EE related corrections

1.6 (derived from v1.5.1 for BG2/ToB)
- rename tp2 to LongerRoadEE\LongerRoadEE.tp2 
- incorporate known issues from BWFixpack
- remove tiz/tis conversion and use PVRZ 
- update portraits for EE 
- update journal entries for EE 
- update item descriptions and usability 
- use wav instead ogg and remove conversion 
- adapted scripts to EE functions 
- added HANDLE_CHARSETS 
- LongerRoadEE requires Ascension, added full compatibility with EE fixes
- removed speedbanter component for overall compatibility
- added polish translation by Cuttooth
- LoB flags added

v1.1
Added the tisunpack.bat to thedownload -- this was the reason for the crash.

Small fix to the Jaheira dialog that fixed her saying 'Escaped?...' over and over again.

Fixed the good ending when Jon supposedly passed out was commenting on the PC choices.

v1.2

Fixed Irenicus turning hostile after talk with drow woodcutter bug and Irenicus getting insta-killed after the interject with the monk in the Abazigal dungeon.

Added credits to the soundwork.

v1.3

Neb fixed Machine of Lum the Mad exploit. I also made the demon Abaia spawn conditions a bit easier to fulfil.

v1.4

Fixed several bugs here : 

The looping dialog after talk #6 -- if Irenicus chose evil path after this conversation. 

If Player promised a soul and refused Sendai's soul Jon should now ask for a 'dragon' soul the second time around. Also this should notresult in him immediately have a dialog and change alignment.

Made it so that he does not say his piece about wanting Balthazar's soul if he is redeemed.

v1.4.1

Fixed a small bug in Rielev initial dialog -- now you should be able to leave Pocket Plane in any case after you have refused him

New Paperdoll bam for Irenicus was made -- with no background. I think it looks much better than the old one -- thank you once again Sir-Kill!

v1.4.2

Lots of fixes in this release. 

Firstly jcompton (who was kindly testing the mod) pointed out to the possible problem with series of cutscenes in Hell (the scripts and dialogs were not flowing tightly enough from one another, allowing for pauses and saving the game, which caused more problems.) I revised the scripts here and made the area un-save-able, added a few features for security and fixed the problem with absent 'start cutscene mode' action in a few scripts.

Secondly looping  dialog #5 in case of chosen evil path was fixed, it was related to not updating the counter in one script.

Thirdly I finally tracked down and restored the missing nymph and minotaur from Improved Gromnir - Ascension component. Also tried to tighten the script by adding extra GLOBAL to avoid freezing the game if PC is not able to speak.

The release also includes quite a few new bams by Sir-Kill, whom I want to thank once again for doing exceptionally good job on these. 

Finally, as suggested by Arcalian, Irenicus's 'Critical Hit' voice selection was changed to a new line.

v1.4.3

Yes another valiant attempt to fix the Melissan after Gromnir encounter bug. Re-scripted the conditions of the Irenicus's interjections and added timer, in case of the game glitch. 

Minor fixes of the Edwin-Irenicus banters, timer again.

Changed the mask item so it gives  +1 int and does not grant immunity from stun.

v1.4.4

Added spanish translation by Immortality and her crew.

v1.5

Yet another attempt to fix the two looping dialogs -- Edwin squirrel and Irenicus Evil talk. Added a new item -- a note that appears in PC inventory as a hint to where to look for the last artifact of the Deva Quest. Added 'add music check' to install options. This is supposed to make the LR mod easier compatible with BP. We shall see if more meddling is needed. Please report any errors you see while trying to install the LR with BP set of mods.

v1.5.1

Added french translation by Erszebeth, who kindly introduced herself as : graphomane vampire / French sideshow freak, erszebeth.batory@wanadoo.fr, // and Translator extraordinaire ;) - D. 

The French translation has an interesting history, as I was at first approached by the french team, the d'Oghmatiques, but eventually all the work was done by a single person in one summer. Quite an accomplishment IMHO.

                            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~