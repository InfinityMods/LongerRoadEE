# 2.0.7

### TotoR
- Some variables were not set as they should be (e.g., use SetGlobal("FinalFight","AR6200",3) instead of SetGlobal("FinalFight","AR6200",2)) in redbodhx.bcs and redgdemx.baf
- Update the cutscene for compatibility with Ascension
- Use COMPILE with the .baf file instead of directly copying the .bcs file
- Use 'ref' when possible in the .baf files
- Update FinalA.d to use resimo3 when Imoen is in the party, instead of resimo1, which is used when she is dead
- Update lr6200jon2.baf to check for demogor3 like other enemies
- Fix some small typos in the cutscene

### AL|EN
- remove unicode from translation
- fixed malformed characters in translation

# 2.0.6

### TotoR
- Small reworks of cutscene
- Update jonel25.bcs instead of AR6200.bcs for more reliability in zobification
- Additional compatibility block for AR6005.bcs for mega mod games

# 2.0.5

### TotoR
- Append or replace blocks in scripts instead of overriding them
- Add check to avoid overriding items, creatures and scripts from Ascensions
- Rework of some scripts to be compatible with Ascension v2.0.x (this version is no more compatible with older versions, ie 1.4 or 1.5)
- Remove unnecessary duplicate in ee and Vanilla folders and create a generic Copy folder and move files to dedicated folders
- Use baf file instead of bcs file for easier maintenance and compatibility check
- Miscellaneous harmless Typos

# 2.0.4

### AL|EN
- updated Ascension mod requirements condition
- fixed typo: infer_charset > infer_charsets

# 2.0.3

### TotoR
- centered bams

### AL|EN
- centered EE bams

# 2.0.2

### AL|EN
- added LabelType = GloballyUnique to metadata
- added dynamic install order syntax
- remove outdated Ascension compatibility warnings

# 2.0.1

### AL|EN
- fixed installation problem for EE

# 2.0.0

### AL|EN
- added InfinityAutoPackager for automatic creation of .zip and .iemod packages
- added globally unique labels for all mod components
- replace REQUIRE COMPONENT with equivalent code which does not rely on DESIGNATED numbers
- bring back old tp2 name
- minor updates to mod readme
- minor corrections

### Austin87
- bring back compatibility with the "vanilla" version (checked during the game, no conflicts)

- added full translation into Russian

- revised scripts redbodh0 - redbodh2 and the order of their launch in the file finaleA.d - now cut-scenes are launched in the correct order, dialogs with the transformation of Imoen work and there are no more freezes. Previously, the game would freeze if Imoen was not in the party and cutscenes were previously reversed.

- fixed bugs due to which Baltazar and Imoen-Slayer did not attack the protagonist. The installation of the imoslay2 script for Imoen-Slayer was returned (it was in Ascension, but the LR mod removed it and therefore Imoen-Slayer was in place)

- added missing checks to the finaleA.d and imoen25p.dlg files in case Irenicus is not in the group for various reasons, added a new variable for this to the jonel25p.dlg file

- fixed confused dialogue in imoen25p.dlg

- a series of bcs-files related to the location with Balthazar (AR5505), replaced with one baf-file, added the setting of the variable required to launch the portal to the Throne of Bhaal after the death of Balthazar (previously, when killing Balthazar, it became impossible to get to the Throne)

- removed the replacement of the Balthazar cre-file with an outdated version from LR, thereby removing the bug due to which he had an incorrect script if the "Tougher Baltazar" component was not installed. Previously, because of this, Balthazar did not attack the protagonist

- fixed a bug in which the hostile Irenicus spoke to Bodhi in the final conversation, although she was not yet at the location, which led to the interruption of the dialogue. In the FinaleA.d file in the lrAscJon2 block, the transition to State is corrected - instead of 7, 15 is now indicated.

- fixed a bug in which Melissan turned to Bodhi, although earlier she did not summon her, but the hostile Irenicus (this was the reason for the game crash), additionally improved checks in the FinaleA.d file in the Imoen replica blocks (Imoen25P)

- fixed a bug in which, if a hostile Irenicus summoned Bodhi, she would address the protagonist as if Irenicus was not at the location

- fixed a bug where, if a hostile Irenicus was summoned, when Imoen turned into Slayer, she had no valid replicas and the dialogue was interrupted - expanded checks in the FinaleA.d file in Imoen replica blocks (Imoen25P)

- fixed a bug in which, if Demogorgon appeared in the final dialogue and the protagonist chose the option to fight with him, after the cut-scene a series of bugs began - Melissan did not leave and continued to stand silently as a neutral character, Imoen in the form of Slayer stood still, and then immediately turned back into a normal form as if the fight had already ended, while Bodhi turned into a bat and attacked the protagonist in this form. All this has now been fixed, the scripts redgdem1 and redgdem3 have been reworked (Melissan's departure has been added), and the check !Global ("DemogorgonCometh", "GLOBAL", 1) has been added to the finbodhi.bcs script so that Bodhi does not turn into a bat during the final battle

- during the cut-scene with the appearance of Demogorgon (file redbodh3.bcs), some lines used the file "finiren", although only friendly Irenicus can participate in this scene, so the commands are changed to "lrirenic"

- fixed a bug due to which Irenicus, after defeating Demogorgon again at the Throne of Bhaal, repeated the same dialogue that had already spoken in the Watcher's Tower after the first death of Demogorgon. Added !AreaCheck ("AR6200") check-in jonel25.bcs script for this case.

- added code that removes opcode 319 from the Irenicus mask (imask1.itm) when mod installed on the non-EE version, because it is not supported on it and this caused the game to crash when Irenicus was called from the Abyss. If the mod is installed on the EE version, the opcode remains.

- removed unused script resimo5.bcs

# SPOILERS:
- the following options have been tested, there are no more bugs:
    * Irenicus was not summoned from the Abyss, Imoen in the group, Balthazar on the side of the protagonist
    * Irenicus was not summoned from the Abyss, Imoen is not, Balthazar is on the side of the protagonist
    * Irenicus was not summoned from the Abyss, Imoen is in the group, Balthazar is killed
    * Irenicus was not summoned from the Abyss, Imoen is not, Balthazar is slain
    * Irenicus and Imoen in the group, Baltazar is killed, there was no redemption for Irenicus, the soul of the descendant of Baal was transferred to him
    * Irenicus in the group, Imoen is not, Baltazar is killed, there was no redemption for Irenicus, the soul of Baal's descendant was transferred to him
    * Imoen is in the group, Irenicus is not, Baltazar is killed, there was no redemption for Irenicus, the soul of Baal's descendant was transferred to him
    * neither Imoen nor Irenicus is in the group, Baltazar is killed, there was no redemption for Irenicus, the soul of Baal's descendant was transferred to him
    * Irenicus adopted Ilmater, Imoen in the group
    * Irenicus accepted Ilmater, Imoen did not
    * Irenicus accepted Ilmater and he is not in the group
    * Demogorgon appeared in the final dialogue, peaceful solution
    * Demogorgon appeared in the final dialogue, combat decision

# 1.6.7
- updated GitHub download link

# 1.6.6
- compatibility with Ascension 2.x

# 1.6.5
- minor renaming of files

# 1.6.4
- WeiDU 246
- not needed backup folder
- restored original homepage and forum
- restored original readme
- minor corrections

# 1.6.1
- various EE related corrections

# 1.6
- rename tp2 to LongerRoadEE\LongerRoadEE.tp2 
- incorporate known issues from BWFixpack
- remove tiz/tis conversion and use PVRZ 
- update portraits for EE 
- update journal entries for EE 
- update item descriptions and usability 
- use wav instead ogg and remove the conversion 
- adapted scripts to EE functions 
- added HANDLE_CHARSETS 
- LongerRoadEE requires Ascension, added full compatibility with EE fixes
- removed speedbanter component for overall compatibility
- added polish translation by Cuttooth
- LoB flags added

# v1.5.1
- Added french translation by Erszebeth, who kindly introduced herself as : graphomane vampire / French sideshow freak, erszebeth.batory@wanadoo.fr, // and Translator extraordinaire ;) - D. 
- The French translation has an interesting history, as I was at first approached by the french team, the d'Oghmatiques, but eventually all the work was done by a single person in one summer. Quite an accomplishment IMHO.

# v1.5
- Yet another attempt to fix the two looping dialogs -- Edwin squirrel and Irenicus Evil talk. Added a new item -- a note that appears in PC inventory as a hint to where to look for the last artifact of the Deva Quest.
- Added 'add music check' to install options. This is supposed to make the LR mod easier compatible with BP. We shall see if more meddling is needed. Please report any errors you see while trying to install the LR with BP set of mods.

# v1.4.4
- Added spanish translation by Immortality and her crew.

# v1.4.3
- Yes another valiant attempt to fix the Melissan after Gromnir encounter bug. Re-scripted the conditions of the Irenicus's interjections and added timer, in case of the game glitch.
- Minor fixes of the Edwin-Irenicus banters, timer again.
- Changed the mask item so it gives  +1 int and does not grant immunity from stun.

# v1.4.2
- Firstly jcompton (who was kindly testing the mod) pointed out to the possible problem with series of cutscenes in Hell (the scripts and dialogs were not flowing tightly enough from one another, allowing for pauses and saving the game, which caused more problems.) I revised the scripts here and made the area un-save-able, added a few features for security and fixed the problem with absent 'start cutscene mode' action in a few scripts.
- Secondly looping dialog #5 in case of chosen evil path was fixed, it was related to not updating the counter in one script.
- Thirdly I finally tracked down and restored the missing nymph and minotaur from Improved Gromnir - Ascension component. Also tried to tighten the script by adding extra GLOBAL to avoid freezing the game if PC is not able to speak.
- The release also includes quite a few new bams by Sir-Kill, whom I want to thank once again for doing exceptionally good job on these.
- Finally, as suggested by Arcalian, Irenicus's 'Critical Hit' voice selection was changed to a new line.

# v1.4.1
- Fixed a small bug in Rielev initial dialog -- now you should be able to leave Pocket Plane in any case after you have refused him.
- New Paperdoll bam for Irenicus was made -- with no background. I think it looks much better than the old one -- thank you once again Sir-Kill!

# v1.4
- The looping dialog after talk #6 -- if Irenicus chose evil path after this conversation.
- If Player promised a soul and refused Sendai's soul Jon should now ask for a 'dragon' soul the second time around.Also this should notresult in him immediately have a dialog and change alignment.
- Made it so that he does not say his piece about wanting Balthazar's soul if he is redeemed.

# v1.3
- Neb fixed Machine of Lum the Mad exploit. I also made the demon Abaia spawn conditions a bit easier to fulfil.

# v1.2
- Fixed Irenicus turning hostile after talk with drow woodcutter bug and Irenicus getting insta-killed after the interject with the monk in the Abazigal dungeon.
- Added credits to the soundwork.

# v1.1
- Added the tisunpack.bat to the download -- this was the reason for the crash.
- Small fix to the Jaheira dialog that fixed her saying 'Escaped?...' over and over again.
- Fixed the good ending when Jon supposedly passed out was commenting on the PC choices.
