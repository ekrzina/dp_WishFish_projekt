"WishFish" by Elena Krzina

When play begins:
	say "[italic type]'Welcome to the world of wishes'[roman type], an ominous voice calls from afar. You stirr in your sleep and wake up, only to find yourself on cold grass - you don't remember falling asleep here. You look around you, only to realize you are in the midst of a forest clearing. It’s horribly foggy, but strangely warm."

[Begin: Clearing (where the player starts)]
The Clearing is a room. The description is "It’s dark and foggy, so you don’t see much. There’s dark grass bluish in color from the light emitted by the few fireflies swirling around you. Trees as far and wide as the eye can see. There's an old sign here."

hp is a number variable. hp is 30.
attk is a number variable. attk is 0.
def is a number variable. def is 0.
damageDealt is a number variable. damageDealt is 0.
orders is a number variable. orders is 0.

pollyPick is a text that varies.

dragonHp is a number variable. dragonHp is 100.
dragonAction is a text that varies.
dragonHappy is a truth state that varies. dragonHappy is false.
inCombat is a truth state that varies. inCombat is false.

The gem collection is a number variable. The gem collection is 0.
hookTied is a number variable. hookTied is 0.
bucketGiven is a truth state that varies. bucketGiven is false.
rpsGold is a number variable. rpsGold is 0.
rpsWin is a truth state that varies. rpsWin is false.
lottyQuest is a truth state that varies. lottyQuest is false.
omeletteGiven is a truth state that varies. omeletteGiven is false.
bearQuest is a truth state that varies. bearQuest is false.
distracted is a truth state that varies. distracted is false.
thief is a truth state that varies. thief is false.
teardrop is a truth state that varies. teardrop is false.
caughtUp is a truth state that varies. caughtUp is false.
cellarBool is a truth state that varies. cellarBool is false.
owlPass is a truth state that varies. owlPass is false.

memoryFragment is a number variable. memoryFragment is 0.
murmurMemory is a truth state that varies. murmurMemory is false.
goldMemory is a truth state that varies. goldMemory is false.
ginnyMemory is a truth state that varies. ginnyMemory is false.

There is a cookie. It is edible. The description is "A chocolate-chip cookie, freshly baked and still warm. It restores 10 HP."
There is a hot tea. It is edible. The description is "Permanently hot tea. It smells of nothing in particular and is has a bitter taste."
There is an omelette. It is edible. The description is "An omelette made by Lotty. It restores 25 HP."
There is a golden egg. The description is "A golden egg. Sturdy and shiny. One of Lotty's ducks laid it."

Instead of eating:
	if noun is cookie:
		say "You ate the cookie. HP up!";
		remove cookie from play;
		increase hp by 10;
		if hp > 30:
			now hp is 30;
		if inCombat is true:
			now dragonAction is the substituted form of "[one of]claw attack[or]fire breath[or]take a breather[or]heal wounds[purely at random]";
			decrease dragonHp by damageDealt;
			say "[line break]DRAGON'S TURN[line break]";
			if dragonAction is  "claw attack":
				now damageDealt is 10 - def;
				decrease hp by damageDealt;
				say "The dragon swings its claws at you! You lost [damageDealt] HP!";
				if hp < 0:
					now hp is 0;
					if player carries the revive:
						say "The revive has revived you!";
						now hp is 30;
						remove revive from play;
				if hp is 0: 
					end the story saying "You've lost all your HP! You're unable to continue your journey.";
			if dragonAction is  "fire breath":
				now damageDealt is 15 - def;
				decrease hp by damageDealt;
				say "The dragon blows fire! You lost [damageDealt] HP!";
				if hp < 0:
					now hp is 0;
					if player carries the revive:
						say "The revive has revived you!";
						now hp is 30;
						remove revive from play;
				if hp is 0: 
					end the story saying "You've lost all your HP! You're unable to continue your journey.";
			if dragonAction is  "take a breather":
				now damageDealt is 7 - def;
				decrease hp by damageDealt;
				say "The dragon has to recharge and does nothing this turn.";
			if dragonAction is  "heal wounds":
				say "The dragon heals its wounds. It regained 5 HP!";
				increase dragonHp by 5;
	if noun is omelette:
		say "You ate [the noun]. HP up!";
		remove omelette from play;
		increase hp by 25;
		if hp > 30:
			now hp is 30;
		if inCombat is true:
			now dragonAction is the substituted form of "[one of]claw attack[or]fire breath[or]take a breather[or]heal wounds[purely at random]";
			decrease dragonHp by damageDealt;
			say "[line break]DRAGON'S TURN[line break]";
			if dragonAction is  "claw attack":
				now damageDealt is 10 - def;
				decrease hp by damageDealt;
				say "The dragon swings its claws at you! You lost [damageDealt] HP!";
				if hp < 0:
					now hp is 0;
					if player carries the revive:
						say "The revive has revived you!";
						now hp is 30;
						remove revive from play;
				if hp is 0: 
					end the story saying "You've lost all your HP! You're unable to continue your journey.";
			if dragonAction is  "fire breath":
				now damageDealt is 15 - def;
				decrease hp by damageDealt;
				say "The dragon blows fire! You lost [damageDealt] HP!";
				if hp < 0:
					now hp is 0;
					if player carries the revive:
						say "The revive has revived you!";
						now hp is 30;
						remove revive from play;
				if hp is 0: 
					end the story saying "You've lost all your HP! You're unable to continue your journey.";
			if dragonAction is  "take a breather":
				say "The dragon has to recharge and does nothing this turn.";
			if dragonAction is  "heal wounds":
				say "The dragon heals its wounds. It regained 5 HP!";
				increase dragonHp by 5;
	if noun is revive:
		say "You are not sure why you ate the revive. But you did so anyway.";
		remove revive from play;
		if inCombat is true:
			now dragonAction is the substituted form of "[one of]claw attack[or]fire breath[or]take a breather[or]heal wounds[purely at random]";
			decrease dragonHp by damageDealt;
			say "[line break]DRAGON'S TURN[line break]";
			if dragonAction is  "claw attack":
				now damageDealt is 10 - def;
				decrease hp by damageDealt;
				say "The dragon swings its claws at you! You lost [damageDealt] HP!";
				if hp < 0:
					now hp is 0;
					if player carries the revive:
						say "The revive has revived you!";
						now hp is 30;
						remove revive from play;
				if hp is 0: 
					end the story saying "You've lost all your HP! You're unable to continue your journey.";
			if dragonAction is  "fire breath":
				now damageDealt is 15 - def;
				decrease hp by damageDealt;
				say "The dragon blows fire! You lost [damageDealt] HP!";
				if hp < 0:
					now hp is 0;
					if player carries the revive:
						say "The revive has revived you!";
						now hp is 30;
						remove revive from play;
				if hp is 0: 
					end the story saying "You've lost all your HP! You're unable to continue your journey.";
			if dragonAction is  "take a breather":
				say "The dragon has to recharge and does nothing this turn.";
			if dragonAction is  "heal wounds":
				say "The dragon heals its wounds. It regained 5 HP!";
				increase dragonHp by 5;

There is an old sign in the clearing. It is scenery. The description is "On the sign, you can make out faded words made with black oil paint. It says '[italic type]Go north. Choose one. Go south. Choose any.'"

The Treestump is a room. It is north of the clearing. The description is "A large treestump is lying vertically on the ground of the clearing. A few toadstools sit around it, acting as lamps."
There is a flashlight in the treestump. The description is "As you inspect the flashlight, you see that it is fully functional and can be turned on and off without problems. It flickers a bit, but it should have enough battery to use it for a few minutes at worst."
There is a mirror in the treestump. The description is "The mirror is cracked in the middle, but it still serves its purpose of reflecting images. You know what they say about cracked mirrors, but you’re feeling lucky today."
There is a fishhook in the treestump. The description is "A single fishook that isn't attached to anything. It’s strange to see a fishhook not attached to a pole. You’re a fisherman’s son, so you know much about the art, and even a small hook could perhaps help you later."

Instead of taking the flashlight:
	Move the flashlight to the player;
	say "Upon taking the flashlight, the other items magically disappear... You decide to go back.";
	Move the player to the clearing;

Instead of taking the mirror:
	Move the mirror to the player;
	say "Upon taking the cracked mirror, the other items magically disappear... You decide to go back.";
	Move the player to the clearing;
	
Instead of taking the fishhook:
	Move the fishhook to the player;
	say "Upon taking the hook, the other items magically disappear... You decide to go back.";
	Move the player to the clearing;

Instead of going to the treestump:
	if the player carries the flashlight or the player carries the fishhook or the player carries the mirror:
		say "You have all the items you could get. Time to move on.";
	else if the player carries the fishhook:
		say "You have all the items you could get. Time to move on.";
	else if the player carries the mirror:
		say "You have all the items you could get. Time to move on.";
	otherwise:
		Move the player to the treestump;

The Hidden Cave is a room. It is east of the clearing. The description is "A small dark cave. You hear drops of water slowly fall to the watery ground beneath you. It's surprisingly cold for such a small space."

There is a duck in the hidden cave. The description is "A sitting white duck. [if the player carries duck]It's feathers are very soft to the touch - agh! It bit you![otherwise]It's sitting on a rock in the middle of the room, its thick feathers covering its feet. It's kind of cute. Did it get lost?"

Instead of taking the duck:
	if the player carries the cookie:
		say "The duck eyes the cookie you're carrying hungrily. You prepare to feed the bird, but it lunges at you and steals the cookie. You got the duck, but lost the cookie in the process.";
		move the duck to the player;
		remove cookie from play;
	else if the player carries the duck:
		say "You are already carrying the creature.";
	otherwise:
		say "The duck won't move from its spot. It hisses at you.";

The Diverging path is a room. It is south of the clearing. The description is "As you move deeper into the forest, you can see a tree-lined path that splits left and right. There is a carving in the middle of a giant tree, barely noticeable."
There is a carving in the diverging path. It is scenery. The description is "'[italic type]Have your dreams come true[roman type]', is written under the left arrow. A bit optimistic, and since you’re not sure yourself whether this location is a dream on its own, you’re not too excited. On the other hand, the right sign says '[italic type]The end of all[roman type]', which is kind of threatening, and your feet refuse to move." 

Dreams is a room. It is west of the diverging path. The description is "You find yourself in another clearing of the forest, but the trees around you appear to be violet in color. There is a clear stream in the middle of the clearing through which busy colorful fish swim. Small dragonflowers swaying in the trees emit a gentle light."

End of All is a room. It is east of the diverging path. The description is "Your footsteps echo through the small wooden path as if the floor was made of marble instead of leaves. The world around you is starting to feel more and more like a dream, but your tired legs seem to suggest otherwise. There are knights in old black armor standing in front of a giant golden door. The imposing nature of the sight makes you realize this could be the end of the journey."

Left Knight is a man. Left knight is in end of all. The description is "Upon further inspection, the knight isn't actually a knight – it's  just armor and is perfectly still."
Right Knight is a man. Right knight is in end of all. The description is "Upon further inspection, the knight isn't actually a knight – it's  just armor and is perfectly still."

The golden door is a door. It is locked. The shiny key unlocks it. The golden door is east of end of all and west of Fishtank. The description is "The door in front of you is imposing and heavy. Even if you try to push with all your might, you don’t think you’ll succeed in opening it."

Instead of asking left knight about "help", say "The knight scoffs at you rudely."
Instead of asking right knight about "help", say "The knight shakes his head politely."

Instead of asking left knight about "right knight", say "He does not take his position seriously."
Instead of asking right knight about "left knight", say "He is very serious about his station."

Instead of asking right knight about "duck", say "No duck came through here."
Instead of asking left knight about "this place", say "You're not to talk in this sacred place. Her Majesty the Queen resides in the next room."
Instead of asking right knight about "this place", say "You fit the description of the someone who Her Majesty the Queen of the World of Wishes wants to meet. If you are the one, please step unlock the gate and step forward."

Instead of asking left knight about "unlocking gate", say "For a gate, you need a key."
Instead of asking right knight about "unlocking gate", say "For a gate, you need a special key, found only in special places. Somewhere high up, perhaps... Somewhere... dangerous."

Instead of asking left knight about "the queen", say "Her Majesty the queen is the pride and joy of our world. She created it herself hundreds of years ago, and the kingdom continues to prosper."
Instead of asking right knight about "the queen", say "Her Majesty the queen is the link between the wish world and the real world. She is responsible for who comes here and who goes."

Demanding open is an action applying to one visible thing. Understand "demand from [someone] to open door" as demanding open.
Instead of demanding open:
	if noun is left knight:
		say "The knight refuses to move and ignores you.";
	if noun is right knight:
		say "The knight refuses to move and ignores you. But this knight is nice, so you feel bad for raising your voice. You gently leave behind 50 gems.";
		decrease gem collection by 50;

Instead of pushing:
	if the noun is the golden door:
    		say "You push against the door with all might, but nothing happens.";

The Fishtank is a room. The description is "As you enter the last room, the thing that catches your eyes first is the giant goldfish with a red spot on its forehead, slowly floating in a waterless room as it directs its large eyes towards you. The fish – queen – stares at you for a long time, as if waiting for you to do something."

Goldfish is a woman. Goldfish is in the fishtank. The description is "The fish - wish queen. A giant goldfish with a red spot on its forehead. Its eyes are goggly. It's floating about in the air-filled room as if swimming in water. You've seen your fair share of world-defying creatures here, so you're not surprised. You're surprised their Majesty the queen is actually just a fish!"

Instead of asking goldfish about "her", say "Goldfish: [italic type] I'm a magical being, a goldfish.";

Instead of asking goldfish about "why you are here", say "Goldfish: [italic type] I'm a magical being, a goldfish. You were brought here by your own will. I fulfill wishes of poeple when I see fit.";

Instead of asking goldfish about "what happened", say "Goldfish: [italic type]I cannot say what happened to you. If you don't remember core memories on your own, it would only shatter your memory. You would wander the world of dreams aimlessly I'm afraid.";

Instead of asking goldfish about "this place", say "Goldfish: [italic type] The World of Wishes. I've created it a long time ago, for creatures of all worlds to coexist. Those who have strong wishes that would otherwise never be fulfilled land here upon my mercy.";

Instead of showing to goldfish:
	if noun is fishhook:
		say "Goldfish: [italic type]So. You remember.";
		say "[roman type] The Goldfish floats towards the ground carefully, its giant frilly fins floating about as if it’s underwater. It comes close to you until you’re the perfect distance to lay your hand upon its head. [line break]";
		now memoryFragment is 5;
		say "[bold type]A dark choppy sea slams into your boat, rocking you left and right ithrough the endless blue. You hold tight to your fishing rod, unwilling to let go of the creature that's hanging onto the other side of your hook. You reel the creature in, but it fights back, obviously much stronger than you are.";
		say "You've never been especially strong, scrawny and scared of just about anything. The storm that's trying to drag you into the mire came so suddenly, with no winds predicting a change. You have no home to return to, no one to care but yourself. And you wanted to see for yourself just how much you can do - wanted a chance to prove yourself. If you were to catch the beast that dwells in the depths...";
		say "But as you finally reel the fish in, with thunderous clouds chasing in on you, all that comes from it is a single, cute goldfish with a red spot on its forehead. You fall to your knees with the fish in your hands. You slowly lower it back into the water.";
		say "The thunder is getting louder. The water is filling up your boat. You wish to survive. You wish for another chance. You wish to - [line break][line break]";
		say "[italic type] You wish to live. [line break][line break]";
		say "[roman type]You find yourself back in front of the giant goldfish, who slowly parts from you. She looks you in the eye. This creature brought you here - to save your life."

Instead of asking goldfish about "wish", say "Goldfish: [italic type] You've proven you're strong and capable to come this far. I grant you one other wish - and that is to stay, or to leave. [line break]If you leave, you will not be able to continue living in this world, and everyone you've met here will forget of your existence. Such are the rules of this world. You will, however, return home, to your world, stronger and wiser, and will be able to rethink your journey. [line break]If you wish to stay, however, you will never again be able to return to the real world, but you will be able to stay here, with everyone you've met, all of your memories intact and safe. You might even choose to live life differently, here.[line break]When you are ready, come here, and simply say 'I wish to leave', or 'I wish to stay'. Nevertheless, your adventure will come to an end."

Instead of asking goldfish about "why she saved me", say "Goldfish: [italic type][if memoryFragment is 5]You lowered me back into the water with such care... I could have never left you in that storm even if that weren't the case.[otherwise]I cannot answer you that."

Wishing to leave is an action applying to nothing. Understand "I wish to leave" as wishing to leave.
Instead of wishing to leave:
	if player is in the fishtank:
		end the story finally saying "You wake up the next morning in your tiny old room, confused as to what has transpired. Your heart is pounding against your chest, and you slowly get out of your bed to turn on the lamp. Everything remains the same as the night you decided to go out to sea. You think back on the goldfish's words and head back to bed, knowing your worth. [line break]Thank you for playing! - E.K.";

Wishing to stay is an action applying to nothing. Understand "I wish to stay" as wishing to stay.
Instead of wishing to stay:
	if player is in the fishtank:
		end the story finally saying "The goldfish grants your wish of wanting to stay here forever. You now have a goldfish the size of an elephant to follow you around, friends and their families to support you, and more freedom in life than you had ever hoped to receive. [line break]Thank you for playing! - E.K.";

Weeping Blue is a woman. Weeping Blue is in dreams. The description is "A blue-colored woman whose hair is a the color and shine of crystals.[if teardrop is true] She looks content and smiles at you.[otherwise] She has a beautiful necklace around her neck. She is weeping silently."

Instead of asking weeping blue about "what happened", say "Weeping Blue: [italic type]
[if teardrop is true]You should know. You made me remembering everything.
[otherwise]I've been here for so long, I have forgotten how my face looks. And the stream is filled with fish, and I don't look like a fish, I know that much!"

There is fish in the dreams. It is scenery. The description is "Very buys-looking red fish. They swim through the stream rather quickly, and you can't make out anything else other than fish. You would jump into water to scare them off, were you not deathly afraid of the fish swimming in the stream in the first place. Something golden shimmers in the water."

Reaching for gold is an action applying to nothing. Understand "reach for gold" as reaching for gold.
Instead of reaching for gold: 
	if player is in dreams:
		say "[if goldMemory is false]You reach for the golden object shimmering in the stream, but your head suddenly starts to hurt horribly, stopping you in your action.[otherwise]You suddenly remember - you're scared of fish! You won't be reaching into that stream any time soon!";
		if goldMemory is false:
			say "[roman type]You want to remember... You feel a surge of energy! Defense increased by 2!";
			increase memoryFragment by 1;
			increase def by 2;
			now goldMemory is true;
	otherwise:
		say "Can't do that here.";
		
Instead of asking weeping blue about "looking like a fish", say "Weeping Blue: [italic type]Do not laugh at my misery! I am no fish!"
Instead of asking weeping blue about "duck", say "Weeping Blue: [italic type]A duck... A duck did run through here. To the east."
Instead of asking weeping blue about "where I am", say "Weeping Blue: [italic type]You seem new here. I was just like you when I first arrived. Listen - this place is nothing like what they've promised you. If you have the chance to leave - go - retreat. Don't make the same mistake I did."
Instead of asking weeping blue about "town square", say "Weeping Blue: [italic type]Town Square? I have no business with the town square. I know some people around here care much more. I only care about my face."

A horned rabbit is a man. Horned rabbit is in dreams. The description is "A white horned rabbit, curiously looking your way. No matter what you do, it seems intent on following.[if teardrop is true] Try approaching it![otherwise] It doesn't seem to want to be approached..."
	
Instead of showing:
	if noun is mirror:
		if showing to weeping blue:
			say "Weeping Blue takes the cracked mirror from your hands and looks at herself. She suddenly smiles a brilliant smile.";
			now teardrop is true;
			say "[italic type]Thank you very much, boy. I finally remember how I look like.";
			say "[roman type]In the back, the horned rabbit's eyes shine.";
		otherwise:
			say "Nothing special happens.";

Approaching is an action applying to one visible thing. Understand "approach [someone]" as approaching.
Instead of approaching:
	if noun is horned rabbit:
		if teardrop is true:
			say "The rabbit seems pleased with you that you've taken the time to help the woman out of her troubles. He wants you to follow him south, while shaking 50 gems out of its furr. You obtain the gems, and follow him wordlessly.";
			increase gem collection by 50;
			now caughtUp is true;
			move the player to the Town square;
		otherwise:
			say "The rabbit looks like it's about to take off!";

Catching is an action applying to one visible thing. Understand "catch [something]" as catching.
Instead of catching:
	if noun is horned rabbit:
		say "You run after the horned rabbit and it starts fleeing. You follow the rabbit out of the clearing, landing in a new area.";
		Move the player to the Town square;
		now caughtUp is true;
	else if noun is duck:
		say "You want to take the duck by force, so the duck uses its force back.";
		now damageDealt is 10 - def;
		decrease hp by damageDealt;
		say "You lost [damageDealt] HP!";
		if hp < 0:
			now hp is 0;
			if player carries the revive:
				say "The revive has revived you!";
				now hp is 30;
				remove revive from play;
		if hp is 0: 
			end the story saying "You've lost all your HP! You're unable to continue your journey.";
	otherwise:
		say "No use in catching.";
		
Instead of going to the town square:
	if caughtUp is false:
		say "You're not sure how to proceed...";
	otherwise:
		move the player to the town square;

The Town Square is a room. It is south of Dreams. The description is "A large clearing in the forest populated by dozens of wooden houses giving off a cozy feeling. There's solid ground underneath your feet, and a large ceiling above your head. You can't make out the material it's made out of. There's large streetlamps to illuminate the path and a large fountain of clear water in the middle. Children are dnacing in a circle in the bag, a cat is meowing from a roof. People walk around, chat, look at you as you stand at the entrance. An imposing clock tower can be seen from the distance, almost reaching the yellow round drawing of a moon. The smell of wood and bakeries is overwhelming."

Old lady is a woman. Old lady is in the town square. The description is "An old lady dressed in pleated clothes wearing large round glasses. She seems to be in high spirits."

Instead of asking old lady about "joke":
	say "Old lady: [italic type][one of]Knock knock! Who's there? Old lady. Old lady Who? Why, I didn't think you could yodel![or]Why was the queen's army too tired to fight? Well, it had too many sleepless knights![or]I can't believe I haven't gone to the gym today. It's been seven years in a row![or]Want to hear something terrible? Paper. See? I told you it was tear-able.[or]6:30 is the best time on the clock. Hands down.[or]Last time I tried stealing a calendar, I got 3 months.[or]Did you hear about the boy who tried to catch fog? He mist.[or]How do trees get online? They just log in.[or]At a party, a young wife admonished her husband. [line break]W: That’s the fourth time you’ve gone back for ice cream and cake. Doesn’t it embarrass you?[line break]H: Why should it? I keep telling them it’s for you.[or]Why couldn’t the pony sing in the choir? He was a little horse.[or]How can you tell when a clock is hungry? It goes back four seconds.[purely at random][line break]";
	
Telling joke is an action applying to one visible thing. Understand "tell joke to [someone]" as telling joke.
Instead of telling joke:
	if noun is old lady:	
		say "You tell the old lady a knock knock joke, and she bawls from laughter. [if player does not carry cookie]As reward, you're given a cookie from her basket.";
		if player does not carry cookie:
			move cookie to the player;
	else if noun is Polly:
		say "Polly repeats the joke. You realize it sounded funnier in your head.";
	else if noun is Murmur:
		if bucketGiven is true:
			say "Murmur offers a weak smile. It's not reassuring.";
		otherwise:
			say "He doesn't seem interested in your joke.";
	else if noun is Gentleman:
		say "He stares at you emotionlessly. You stare back. It's not the most comfortable situation.";
	else if noun is Lotty:
		say "Lotty laughs at your joke. Finally, someone who gets it!";
	else if noun is weeping blue:
		say "Weeping Blue starts to cry again. You made things worse?!";
	otherwise:
		say "No reaction. Maybe your joking skills need a little polish...";

Gentleman is a man. Gentleman is in the town square. The description is "A tall gentleman, fair-skinned and dark-haired. His eyes are fixed on anything and everything but on you. He looks to be freezing. He also wears a ridiculously large tophat that you can't seem to stop staring at."

Lotty is a woman. Lotty is in the town square. The description is "A young girl half your size but around your age, dressed in old garbs and neatly-done braids. [if lottyQuest is false]She's looking rather distressed.[otherwise]She's holding her prized white duck happily and waves at you."

Instead of asking Lotty about "her", say "Lotty: [italic type][if lottyQuest is false]Oh, hello, stranger. I'm Lotty, and I work on a duck farm. My ducks all lay golden eggs, so they are really valuable. But truth be told... I've lost one. She scurries off on her own sometimes, but I usually find her very quickly. But you see, stranger, she's been with me for so long now, and... I'm sorry. I don't want to bother you. But if you happen to come across my duck, I'd be very grateful if you brought it back. [line break][otherwise]Oh, hello, Stef! How's it going! My duck and I are enjoying our free time right now."

Instead of asking Lotty about "duck", say "Lotty: [italic type]My duck likes food above all else. Why, if you happen to have some, she'll immediately want to be picked up! Oh - all but meat and eggs..."

Instead of asking Lotty about "this place", say "Lotty: [italic type]It's beautiful, isn't it? I go to clock tower east from here sometimes to ring the bell. It's a soothing sound, and it sometimes makes you wish come true! On a good day, at least. Anyone can do it. Anyone with permission, that is."

Instead of asking Lotty about "password", say "Lotty: [italic type]Yes, you need a password to enter. But I can't tell you... sorry! My brother, however. He could! He is in charge of the clock tower. He works in the tavern to the far west from here. You go by the lake."

Instead of asking Lotty about "clock tower", say "Lotty: [italic type]The clock tower, as I understood it, has been standing here since forever. It was the first thing of the city that was built. A treasure-loving dragon lies within the tower, and guards the summit. It's said it reads people's intentions, but it's usually asleep, so I wouldn't know about that. It's said that if you ring the bell, a wish will come true."

Instead of asking Lotty about "permission", say "Lotty: [italic type]Oh... No, sorry. I can't give you the permission. You need a password to enter. But maybe my brother could... He works in the tavern to the far west from here. You go by the lake."

Instead of asking Lotty about "dragon":
	say "Lotty: [italic type]The dragon sleeps at the bottom of the clock tower and needs only a swing of its wings to climb the tower.";
	if omeletteGiven is false:
		say "[roman type]Lotty: [italic type]But in the off chance that it attacks you... Maybe this will help!";
		say "[roman type]Lotty produces an omelette out of her basket and shoves it into your hands clumsily.";
		move omelette to the player;
		now omeletteGiven is true;
	otherwise: 
		say "[roman type]Lotty: [italic type]Cooking is something I really enjoy. But I only had one with me today. Sorry!";
	
Nutcracker is a man. Nutcracker is in the town square. The description is "A statue. A man. You're not sure whether this nutcracker is animate or not; he stands at the entrance to the town square, guarding the place dutifully."

Instead of asking nutcracker about "this place", say "Nutcracker: [italic type]North is the dreams clearing. West you will find a tree-lined path that leads to the lake and tavern. East is the clock tower."

Instead of asking nutcracker about "directions", say "Nutcracker: [italic type]North is the dreams clearing. West you will find a tree-lined path that leads to the lake and tavern. East is the clock tower."

Fisherman is a man. Fisherman is in the town square. The description is "An old fisherman with a straw hat, despite there not being any sunlight. His hands are jittery as he holds a pole. You're drawn to him, since you're a fisherman yourself."

Instead of asking fisherman about "son", say "Fisherman: [italic type]My son? He's called Murmur. A knowledgeable little fella. Knows a bit of everything. But very quiet."

Instead of asking fisherman about "him", say "Fisherman: [italic type]I'm just an ol' fisherman, sonny. [if hookTied is 0]But I'm having huge problems tying this hook for some reason... [otherwise]Everything's fine today."

Instead of asking fisherman about "what happened":
	say "Fisherman: [italic type][if hookTied is 0]I'm tryin' to attach this hook to my pole, but I'm afraid these hands aren't as deft as they used to be. I'm in a hurry and can't contact my son. He's about the same age as you are. But yes - tie the hook... Was it like this, or...? [otherwise]Just preparing for a trip, young man.";
	say "[roman type][if hookTied is 0]The man struggles to attach the hook onto his pole. His ham hands can't quite make a tie as small as that.[otherwise]The man smiles gently at you.";
	
Tying hook is an action applying to one visible thing. Understand "help [someone] tie hook" as tying hook.
Instead of tying hook:
	if noun is fisherman:
		if hookTied is 0:
			say "You tie the fisherman's hook to the pole with a smile. The fisherman gives you 20 gems as compensation, which you politely decline. But the fisherman stuffs them into your hand nevertheless.";
			increase gem collection by 20;
			increase hookTied by 1;	
		otherwise:
			say "You've already helped him out.";
	otherwise:
		say "It won't do any good.";
	
Instead of asking fisherman about "strawhat", say "Fisherman: [italic type]I used to live in the real world, sonny, and this old fella was always with me. Ain't no day safe without sun protection."

Instead of asking fisherman about "coming out of nowhere", say "Fisherman: [italic type]Yes, originally, I wasn't from here. That's all I know, however."

Instead of asking fisherman about "real world", say "Fisherman: [italic type]Don't remember much. I just found myself here. Don't know how at this point. You should ask my son, if you come by him."

Polly is a woman. Polly is in the town square. The description is "A parrot sitting on top of a welcome sign. It seems to know quite a lot about this place."

Instead of asking Polly about "this place":
	say "The parrot shrieks.";
	say "[italic type] Welcome to the World of Wishes! There's much to see here. Much to do. Ask me about any individual here, I know a thing or two.";
	
Instead of asking Polly about "old lady", say "[italic type] Old lady lives here in the center of town. She bakes us cookies now and then and hands them out - but only if you earn them. She likes jokes above all else. Try it! Try it! Ask about joke."
Instead of asking Polly about "gentleman", say "[italic type] The gentleman is by no means gentle! Be wary of the man! His mind can't be changed, if you're planning to do that. He doesn't like the cold."
Instead of asking Polly about "nutcracker", say "[italic type] The nutcracker is, in fact, alive and well! Can tell directions."
Instead of asking Polly about "lotty", say "[italic type]Lotty is a nice person. Nice person. She feeds me. Likes birds. Her brother is in charge of the clock tower!"
Instead of asking Polly about "fisherman", say "[italic type] The fisherman is quite the curious man. Fishes every day, every night, no end. Came out of nowhere one day and stayed. But every now and then he has troubles with his hook - and looks around nervously again."
Instead of asking Polly about "her", say "[italic type] I'm Polly. I'm Polly. I love rock-paper-scissors! Say - Play rock for Polly! Play paper for Polly! Play scissors for Polly! Play!"
Instead of asking Polly about "duck", say "[italic type]Duck? Quack ran away to the north last I saw."
Instead of asking Polly about "large bear", say "[italic type]The bear is a regular at the tavern. Passes by here every morning."

Playing rock is an action applying to one visible thing. Understand "play rock for [someone]" as playing rock.
Check Playing rock:
	if noun is not a person, say "You can't play rock-paper-scissors with an inanimate object." instead. 
	
Playing paper is an action applying to one visible thing. Understand "play paper for [someone]" as playing paper.
Check Playing paper:
	if noun is not a person, say "You can't play rock-paper-scissors with an inanimate object." instead. 

Playing scissors is an action applying to one visible thing. Understand "play scissors for [someone]" as playing scissors.
Check Playing scissors:
	if noun is not a person, say "You can't play rock-paper-scissors with an inanimate object." instead. 
	
Instead of playing rock:
	if noun is polly:
		now pollyPick is the substituted form of "[one of]rock[or]paper[or]scissors[purely at random]";
		say pollyPick in upper case;
		say "![line break]";
		if pollyPick is "scissors":
			say "Polly: [italic type]I lost?!";
			if rpsGold < 5:
				say "Polly gives you a gem.";
				increase gem collection by 1;
				increase rpsGold by 1;
		else if pollyPick is "rock":
			say "Polly: [italic type]Draw!";
		otherwise:
			say "Polly: [italic type]You lose! You lose!";
	else if noun is murmur:
		now pollyPick is the substituted form of "[one of]rock[or]paper[or]scissors[purely at random]";
		say pollyPick in upper case;
		say ".[line break]";
		if pollyPick is "scissors":
			say "Murmur: [italic type]I lose.";
			if rpsWin is false:
				say "[roman type]Murmur gives you 5 gems as a prize.";
				increase gem collection by 5;
				now rpsWin is true;
		else if pollyPick is "rock":
			say "Murmur: [italic type]Nothing.";
		otherwise:
			say "Murmur: [italic type]A win.";
	otherwise:
		say "They don't seem to be interested.";

Instead of playing scissors:
	if noun is polly:
		now pollyPick is the substituted form of "[one of]rock[or]paper[or]scissors[purely at random]";
		say pollyPick in upper case;
		say "![line break]";
		if pollyPick is "paper":
			say "Polly: [italic type]I lost?!";
			if rpsGold < 5:
				say "Polly gives you a gem.";
				increase gem collection by 1;
				increase rpsGold by 1;
		else if pollyPick is "scissors":
			say "Polly: [italic type]Draw!";
		otherwise:
			say "Polly: [italic type]You lose! You lose!";
	else if noun is murmur:
		now pollyPick is the substituted form of "[one of]rock[or]paper[or]scissors[purely at random]";
		say pollyPick in upper case;
		say ".[line break]";
		if pollyPick is "paper":
			say "Murmur: [italic type]I lose.";
			if rpsWin is false:
				say "[roman type]Murmur gives you 5 gems as a prize.";
				increase gem collection by 5;
				now rpsWin is true;
		else if pollyPick is "scissors":
			say "Murmur: [italic type]Nothing.";
		otherwise:
			say "Murmur: [italic type]A win.";
	otherwise:
		say "They don't seem to be interested.";
		
Instead of playing paper:
	if noun is polly:
		now pollyPick is the substituted form of "[one of]rock[or]paper[or]scissors[purely at random]";
		say pollyPick in upper case;
		say "![line break]";
		if pollyPick is "rock":
			say "Polly: [italic type]I lost?!";
			if rpsGold < 5:
				say "Polly gives you a gem.";
				increase gem collection by 1;
				increase rpsGold by 1;
		else if pollyPick is "paper":
			say "Polly: [italic type]Draw!";
		otherwise:
			say "Polly: [italic type]You lose! You lose!";
	else if noun is murmur:
		now pollyPick is the substituted form of "[one of]rock[or]paper[or]scissors[purely at random]";
		say pollyPick in upper case;
		say ".[line break]";
		if pollyPick is "rock":
			say "Murmur: [italic type]I lose. Never got how paper beats rock.";
			if rpsWin is false:
				say "[roman type]Murmur gives you 5 gems as a prize.";
				increase gem collection by 5;
				now rpsWin is true;
		else if pollyPick is "paper":
			say "Murmur: [italic type]Nothing.";
		otherwise:
			say "Murmur: [italic type]A win.";
	otherwise:
		say "They don't seem to be interested.";

There is a welcome sign in the Town Square. It is scenery. The description is "[italic type]'Welcome to the World of Wishes'[roman type], the sign reads."
There is a purse in the Town Square. The description is "A fancy hot pink purse with a flower pin attached to it. Who could it belong to? What could it contain? Should you reach into it? The possibilities are endless."

Instead of taking the purse:
	if distracted is false:
		say "Before you could pick up the purse, the gentleman wearing that ridiculously large tophat you saw at the entrance stops you and bows to you.";
		say "Gentleman: [italic type]What are you doing, young sir? You are in no way entitled to this woman's purse. Run along, now.";
		say "[roman type]You decide to leave the purse where it is.";
	otherwise: 
		say "You take the purse.";
		move purse to the player;

The Clock Tower is a room. The Clock Tower is east of the town square. The description is "An ancient clock tower, made with brown stone and covered in ivies that climbed its walls for ages. Its tower reaches well into the man-made ceiling, the tip of it nearly touching the yellow drawing of the inexistant moon of this world. The hands of time seem to flow seamlessly into the wrong side. As you enter the building, you're met with an owl guard whose head turns into your direction as your first footsteps echo through the marble-covered floor. To the north, you see a staircase that leads up the slim tower, seemingly leading into a circle as you climb the building. To the east, there is a dark entrance, something shining gleaming from behind it."

Owl is a man. Owl is in the Clock Tower. The description is "A human-sized owl with a small helmet on. Behind it is another clock, telling the time. Its large beady eyes are fixated on you sternly. A note is hung around its neck like a necklace. It says '[italic type]The password is _________'."

Passwording is an action applying to nothing. Understand "temporal hoot" as passwording.
Instead of passwording:
	if player is in the clock tower:
		now owlPass is true;
		say "The owl's eyes widen and it hoots.";
	otherwise:
		say "You say to yourself.";
		
The Treasury is a room. The treasury is east of the clock tower. The description is "A large open room filled with the brim with gold coins and gems. A monster sleeps on top of it all, snoring contently. There's a note here."
There is a sleeping monster in the treasury. It is scenery. The description is "A huge dragon. It snores contently, its massive wings shielding the treasure."
There is a note in the treasury. It is scenery. The description is "[italic type]'The dragon blesses those who deposit a large sum of gems. Profits go to dragons. Will be guarded safely for all enternity.'[roman type] Or so the sign says.".

Instead of going to the treasury:
	if owlPass is false:
		say "The owl forbids you from entering the chamber. It grabs you and flies out with you!";
		move player to the town square;
	otherwise: 
		say "The owl's feathers ruffle, but it remains still.";
		move player to the treasury;
		
Instead of going to the bell tower:
	if owlPass is false:
		say "The owl forbids you from entering the chamber. It grabs you and flies out with you!";
		move player to the town square;
	otherwise: 
		say "The owl lets you through.";
		move player to the bell tower;

Depositing gems is an action applying to nothing. Understand "deposit gems" as depositing gems.
Instead of depositing gems:
	if player is in the treasury:
		if gem collection > 99:
			say "You deposited 100 gems for dragon profit.";
			decrease gem collection by 100;
			now dragonHappy is true;
		otherwise:
			say "You don't think that'll be enough.";
	otherwise:
		say "You don't know where to deposit the gems. Is there a bank here?";

The Bell Tower is a room. It is north of the clock tower. The description is "The climb up the stairs is arduous and dizzying. Something doesn't feel quite right as you ascend the endless tower. But then you exit, and a gust of harsh wind blows into your face. You find yourself at the top of the tower, right below the glowing painted moon. In front of you, there is a giant bell, filled with ancient reliefs and jewels, just ready to be rung. A fierce dragon stands in front of it protectively, asserting your intentions."
There is a dragon in the bell tower. It is scenery. The description is "A large dragon that's standing guard at the bell. Its horns and wings are imposing, and its eyes glare daggers at you."

Ringing the bell is an action applying to nothing. Understand "ring bell" as ringing the bell.
Instead of ringing the bell:
	if dragonHappy is false:
		say "The dragon suddely attacked! You have to defeat it before you can ring the bell! You can either attack, defend from dragon, or use consumables!";
		now inCombat is true;
	otherwise:
		say "The dragon bows its head.";
		say "You rang the bell. It's soothing sound echoes through the area... [if player does not carry the shiny key] Oh? But what's this? Something seems to have fallen out of it as you rung it.";
		say "You obtained the shiny key!";
		move the shiny key to the player;

Defending is an action applying to one visible thing. Understand "defend from [something]" as defending.
Instead of defending:
	if noun is dragon:
		if inCombat is true:
			say "You defend from the dragon's next attack. You gain temporary 5 defense!";
			now dragonAction is the substituted form of "[one of]claw attack[or]fire breath[or]take a breather[or]heal wounds[purely at random]";			
			say "[line break]DRAGON'S TURN[line break]";
			if dragonAction is  "claw attack":
				now damageDealt is 5 - def;
				decrease hp by damageDealt;
				say "The dragon swings its claws at you! You lost [damageDealt] HP!";
				if hp < 0:
					now hp is 0;
					if player carries the revive:
						say "The revive has revived you!";
						now hp is 30;
						remove revive from play;
				if hp is 0: 
					end the story saying "You've lost all your HP! You're unable to continue your journey.";
			if dragonAction is  "fire breath":
				now damageDealt is 10 - def;
				decrease hp by damageDealt;
				say "The dragon blows fire! You lost [damageDealt] HP!";
				if hp < 0:
					now hp is 0;
					if player carries the revive:
						say "The revive has revived you!";
						now hp is 30;
						remove revive from play;
				if hp is 0: 
					end the story saying "You've lost all your HP! You're unable to continue your journey.";
			if dragonAction is  "take a breather":
				say "The dragon has to recharge and does nothing this turn.";
			if dragonAction is  "heal wounds":
				say "The dragon heals its wounds. It regained 5 HP!";
				increase dragonHp by 5;

Instead of attacking:
	if noun is dragon:
		if inCombat is true:
			now damageDealt is 5 + attk;
			say "You swing at the dragon with all your might! The dragon takes [damageDealt] damage![line break]";
			now dragonAction is the substituted form of "[one of]claw attack[or]fire breath[or]take a breather[or]heal wounds[purely at random]";
			decrease dragonHp by damageDealt;
			if dragonHp < 0:
				say "The dragon is defeated! It bows to you and clears the way to the bell.";
				now inCombat is false;
				now dragonHappy is true;
			if dragonHp is 0:
				say "The dragon is defeated! It bows to you and clears the way to the bell.";
				now inCombat is false;
				now dragonHappy is true;
			if dragonHappy is false:
				say "[line break]DRAGON'S TURN[line break]";
				if dragonAction is  "claw attack":
					now damageDealt is 10 - def;
					decrease hp by damageDealt;
					say "The dragon swings its claws at you! You lost [damageDealt] HP!";
					if hp < 0:
						now hp is 0;
						if player carries the revive:
							say "The revive has revived you!";
							now hp is 30;
							remove revive from play;
					if hp is 0: 
						end the story saying "You've lost all your HP! You're unable to continue your journey.";
				if dragonAction is  "fire breath":
					now damageDealt is 15 - def;
					decrease hp by damageDealt;
					say "The dragon blows fire! You lost [damageDealt] HP!";
					if hp < 0:
						now hp is 0;
						if player carries the revive:
							say "The revive has revived you!";
							now hp is 30;
							remove revive from play;
					if hp is 0: 
						end the story saying "You've lost all your HP! You're unable to continue your journey.";
				if dragonAction is  "take a breather":
					say "The dragon has to recharge and does nothing this turn.";
				if dragonAction is  "heal wounds":
					say "The dragon heals its wounds. It regained 5 HP!";
					increase dragonHp by 5;
	otherwise:
		say "You don't attack [the noun].";


Instead of going to the clock tower:
	if inCombat is true:
		say "You can't run from the dragon!";
	otherwise:
		move player to the clock tower;
		
The Tree-lined Path is a room. The tree-lined is west of the town square. The description is "A silent path. A few owls sit on the birch trees leading to the town square. The ceiling you've seen in the town square is nowhere to be seen, a thick white blanket covering the sky instead."

The Calm Pond is a room. The calm pond is west of the tree-lined path. The description is "A small pond, perfectly still. The sky is covered in white, unmoving clouds. There is a wooden platform next to the north of here. You see a young man sitting on said platform in the distance."

Reaching into purse is an action applying to nothing. Understand "reach into purse" as reaching into purse.
Check reaching into purse:
	if player carries purse:
		if thief is false:
			say "You reach into the purse. There's 50 gems in it. You take them with you.";
			increase gem collection by 50;
			now thief is true;
		otherwise:
			say "It's empty.";
	otherwise:
		say "You don't carry a purse.";

There is a bucket in the calm pond. The description is "A bucket. It's filled with bait. You've never liked fish, and you've never liked bait, either."
The Yard is a room. The yard is west of the calm pond. The description is "A small yard leading to a cozy wooden tavern just west of here."
Large Bear is a woman. Large Bear is in the yard. The description is "A large, large bear with a flower tucked behind its ear. It's growling."
Instead of asking large bear about "her", say "The bear makes a few deep sounds that you can't quite make out. Perhaps because you don't understand bearish."
Instead of asking large bear about "what happened", say "The bear looks sad as it growls. It pats its waist with its huge paws, claws and all."
Instead of asking large bear about "lost item", say "The bear gives off a triumhant sound."
Instead of asking large bear about "purse", say "The bear gives off a triumhant sound."

The Tavern is a room. The Tavern is west of the yard. The description is "A lively place. A live band is performing is in the back, and dozens of people are gathered at tiny coffee tables, enjoying hot beverages."

Instead of going to the yard:
	if player carries the black tea:
		say "You're carrying an order!";
	else if player carries the chamomile tea:
		say "You're carrying an order!";
	else if player carries the slippery elm tea:
		say "You're carrying an order!";
	otherwise:
		move player to the yard;

There is a black tea in the tavern. The description is "Black tea. Black in color. Smells nice."
There is chamomile tea in the tavern. The description is "Tea with the smell of a grassy field. Reminds you of home."
There is a slippery elm tea in the tavern. The description is "This tea looks slippery! You've never seen anything like it!"

Lars is a man. Lars is in the tavern. The description is "A large burly man twice your size. The owner of the tavern. His eyes are mere dots and his brows are huge; he looks to you with a stern expression."

Instead of asking Lars about "him", say "Lars: [italic type]There's nothing to me, kid. I sell tea and own this place. If you'd like to buy some, just ask me to make you one. It'll cost 10 gems. The world ain't for free."

Instead of asking Lars about "this place", say "Lars: [italic type]This is a tavern. We sell only tea here. Just ask me to make you one if you'd like. You don't look like you care about taste."

Instead of asking Lars about "clock tower", say "Lars: [italic type]I'm supposed to be the clock tower keeper. But nothing ever happens back at the clock tower, so I'm not interested in spending time there. The dragon does all the keeping for me."

Instead of asking Lars about "dragon", say "Lars: [italic type]The dragon? A nice guy. Shy and treasure-loving. Lotty might give you something if you tell her about him."

Instead of asking Lars about "making tea":
	if gem collection is less than 10:
		say "Lars: [italic type]You don't have enough to pay for it.";
	otherwise:
		say "Lars: [italic type]Here you go.[roman type][line break]";
		say "Obtained hot tea.";
		decrease gem collection by 10;
		move hot tea to player;

Instead of asking Lars about "Lotty", say "Lars: [italic type]Lotty is my everything. You better treat her well."
Instead of asking Lars about "cellar", say "Lars: [italic type]I'd bring a lamp and draw a map, if I were you."
Instead of asking Lars about "password":
	if orders is 3:
		say "Lars: [italic type]The password is temporal hoot. Also - a bit of a compensation.";
		say "[roman type]Obtained 30 gems!";
		increase gem collection by 30;
	otherwise:
		say "[italic type]You'd like to ring the bell tower, ey? It's quite dangerous to go up the clock tower alone. But let me tell you something - I'm in a good mood today. If you manage to deliver the correct orders, I will reward you with the password. The orders I'm talking about are the three teas here on the counter. Take a good look at my customers and give them to the right one."

Instead of asking Lars about "black tea", say "Lars: [italic type]It's best for focus."
Instead of asking Lars about "chamomile tea", say "Lars: [italic type]It's for calming down."
Instead of asking Lars about "slippery elm tea", say "Lars: [italic type]It's to soothe the throat."

Snowman is a man. Snowman is in the tavern. The description is "A snowman. Somehow resistant to the heat of the fireplace."
Dan is a man. Dan is in the tavern. The description is "A scrawny, freckled young man. Has been talking since the moment you've entered and hasn't stopped as of yet."
Ginny is a woman. Ginny is in the tavern. The description is "A quiet girl with a pile of books in front of her. She keeps looking around, however."
Bugcatcher is a man. Bugcatcher is in the tavern. The description is "A man with large round glasses that makes him look like one of the bugs he has in the jar in front of him. He's staring into the glass intently."
Schoolteacher is a man. Schoolteacher is in the tavern. The description is "A schoolteacher, complete with a grading book and a couple of chalks sticking out of his pocket. Can be seen by his droopy eyes and the tests he is grading with a shaky hand. He seems like he needs a good night's rest."

Instead of asking Dan about "bear", say "Oh, you mean Mrs. Paws? She's a regular here. Every time I'm here, in fact. Apparently she's lot her purse, the poor thing?"

The Wooden Platform is a room. The wooden platform is north of the calm pond. The description is "A simple wooden platform for fishermen to sit at and put their belongings on.";

Murmur is a man. Murmur is in the wooden platform. The description is "A young man looking listlessly into the pond. Nothing can stirr him from his thoughts. [if bucketGiven is false]He's looking around himself nervously. Then he sighs, his voice weak. [otherwise]He greets you with a simple wave.";

Instead of asking murmur about "him":
	if bucketGiven is true:
		say "Murmur: [italic type]There's not much to me. [if hookTied is 0]I haven't heard of you, too. [line break][otherwise]My father mentioned you. You're Stef, right?";
	otherwise:
		say "The man gave no response.";

Instead of asking murmur about "others":
	if bucketGiven is true:
		say "Murmur: [italic type]Asking others about them or what happened usually works.";
	otherwise:
		say "The man gave no response.";

Instead of asking murmur about "cellar":
	if bucketGiven is true:
		say "Murmur: [italic type]I think there's two items in there, but don't take my word for it.";
	otherwise:
		say "The man looks through you, then looks back at his pole.";

Instead of asking murmur about "duck":
	if bucketGiven is true:
		say "Murmur: [italic type]A duck? Have you tried looking around the forest? If it ran away, it probably wanted to be alone... and hidden.";
	otherwise:
		say "The man gave no response.";

Instead of asking murmur about "his father":
	if bucketGiven is true:
		say "Murmur: [italic type]Yes, my father is a fisherman. He's been so since forever.[if hookTied is 0][otherwise] He means a lot to me.";
	otherwise:
		say "The man looks to you, but doesn't elaborate.";

Instead of asking murmur about "fisherman":
	if bucketGiven is true:
		say "Murmur: [italic type]I am one.";
	otherwise:
		say "The man gave no response.";
		
Instead of asking murmur about "what he is doing":
	if bucketGiven is true:
		say "Murmur: [italic type]Fishing.";
	otherwise:
		say "The man hums.";
		
Instead of asking murmur about "dragon":
	if bucketGiven is true:
		say "Murmur: [italic type]Dragons love treasure.";
	otherwise:
		say "The man shrugged.";

Instead of asking murmur about "how his father came here":
	if bucketGiven is true:
		say "Murmur: [italic type]He went... fishing one day. Then disappeared. It was just me and my father, back then. When he didn't come back, I...";
		say "[roman type]He winces.";
		say "Murmur: [italic type]I found his straw hat the same day, near the lake where he would fish every day. But there was no sign of him. For a year. He always wished for a change... I gave up evetually. Just continued fishing by the lake.";
		if murmurMemory is false:
			say "[roman type]Your head starts to hurt. You want to remember... You feel a surge of power! Increased attack by 2.";
			increase memoryFragment by 1;
			increase attk by 2;
			now murmurMemory is true;
	otherwise:
		say "The man gave no response.";
		
Instead of asking murmur about "how his father came to this world":
	if bucketGiven is true:
		say "[italic type]He went... fishing one day. Then disappeared. It was just me and my father, back then. When he didn't come back, I...";
		say "[roman type]He winces.";
		say "[italic type]I found his straw hat the same day, near the lake where he would fish every day. But there was no sign of him. For a year. He always wished for a change... I gave up evetually. Just continued fishing by the lake.";
		if murmurMemory is false:
			say "[roman type]Your head starts to hurt. You want to remember... You feel a surge of power! Increased attack by 2.";
			increase memoryFragment by 1;
			increase attk by 2;
			now murmurMemory is true;
	otherwise:
		say "The man gave no response.";

Instead of asking murmur about "real world", say "The man's eyes are wide as he turns to you. He doesn't elaborate.";
		
Instead of asking murmur about "how he came to this world":
	if bucketGiven is true:
		if memoryFragment is 5:
			say "Murmur: [italic type]You remember your own wish, don't you...? Fine. My father wanted a change, and wished himself away. Mine was to find him again. I've found much that I hold dear here, so I don't regret it. Wishes have a way of coming true in the most unconventional way, don't they?";
			say "[roman type]Murmur smiles.";
		else if memoryFragment is 3:
			say "Murmur: [italic type]You're [bold type] hooked [italic type] on remembering how you got here, aren't you?";
		otherwise:
			say "The man - very suddenly, might you add - bursts into loud laughter. He looks to you.";
			say "Murmur: [italic type]I can't tell you everything, can I?";
	otherwise:
		say "The man gave no response.";
	
Instead of asking murmur about "how he got here":
	if bucketGiven is true:
		if memoryFragment is 5:
			say "Murmur: [italic type]You remember your own wish, don't you...? Fine. My father wanted a change, and wished himself away. Mine was to find him again. I've found much that I hold dear here, so I don't regret it. Wishes have a way of coming true in the most unconventional way, don't they?";
			say "[roman type]Murmur smiles.";
		else if memoryFragment is 3:
			say "Murmur: [italic type]You're [bold type] hooked [italic type] on remembering how you got here, aren't you?";
		otherwise:
			say "The man - very suddenly, might you add - bursts into loud laughter. He looks to you.";
			say "Murmur: [italic type]I can't tell you everything, can I?";
	otherwise:
		say "The man gave no response.";
	
Instead of asking murmur about "fish":
	if bucketGiven is true:
		say "[italic type]I won't catch the queen - don't worry.";
	otherwise:
		say "The man gave no response.";

Instead of asking murmur about "gold in stream":
	if bucketGiven is true:
		say "[italic type]Probably just scales. Sorry. Did you reach for it?";
	otherwise:
		say "The man gave no response.";

Instead of giving:
	if noun is bucket:
		if giving to murmur:
			say "The young man extends his hand to take the item. He nods curtly, then fastens one of the worms to the hook. You'll never like the sight of it.";
			now bucketGiven is true;
			remove bucket from play;
		otherwise:
			say "They don't want the bucket.";
	if noun is hot tea:
		if giving to gentleman:
			say "The gentleman wordlessly takes the cup of tea and goes to sit at the fountain to drink.";
			now distracted is true;
			remove hot tea from play;
		otherwise:
			say "They don't want the hot tea.";
	if noun is golden egg:
		if giving to lars:
			say "Lars: [italic type]So you've helped my sister, ey. In that case, you can go to the cellar north of here. There might be something in it for you.";
			now cellarBool is true;
	if noun is purse:
		if giving to large bear:
			say "The bear seems ecstatic! It lurches forward, grabs the purse from your hands and swings it over its shoulder. She bats her eyelashes at you. [if thief is false]She politely reaches into her purse to - somehow - pull out a diamond sword.";
			now bearQuest is true;
			remove purse from play;
			if thief is false:
				say "Equipping the diamond sword, your attack rose!";
				increase attk by 10;
			otherwise:
				say "But the bear notices the lost money, and puts it back into her purse for safekeeping.";
		else if giving to lotty:
			say "Lotty: [italic type]That's not mine, sorry. But I've seen a giant fuzzy lady carrying it. Every morning, she passes by here towards my brother's tavern.[roman type]";
		otherwise:
			say "They don't want the purse.";
	if noun is duck:
		if giving to lotty:
			say "Lotty: [italic type]Thank you so much! I've missed you so much...";
			say "[roman type]Lotty hugs the duck close to her chest.";
			say "Lotty: [italic type]Give this to my brother. I'm sure he will warm up to you.";
			say "[roman type]You got a golden egg.";
			remove duck from play;
			now lottyQuest is true;
			move golden egg to player;
		else if giving to murmur:
			say "Murmur pets the duck.";
			say "Murmur: [italic type] It's Lotty's.";
		otherwise:
			say "The duck refuses to be handled in such a way.";
	if noun is black tea:
		if giving to snowman:
			say "Snowman: [italic type]Oh. I didn't order tea. I'd melt!";
		else if giving to dan:
			say "Dan: [italic type]Not my order. But have you tried green tea? Green tea is very good for a whole lot of things. Hey - you're leaving already? Where are you - ";
		else if giving to ginny:
			say "Ginny: [italic type]Yes. That's my order, thank you.";
			remove black tea from play;
			increase orders by 1;
		else if giving to bugcatcher:
			say "The bugcatcher doesn't seem interested in the tea. Only looks to his bug jar.";
		else if giving to schoolteacher:
			say "Schoolteacher: [italic type]That would be... most wonderful, yes. But I'm too stressed for a caffeine intake right now.";
		otherwise:
			say "No response.";
	if noun is chamomile:
		if giving to snowman:
			say "Snowman: [italic type]It smells great. But I would melt.";
		else if giving to dan:
			say "Dan: [italic type]Not mine. But I heard it's really good for sleep. If you'e got trouble sleeping - [roman type]";
			say "You walk away from the conversation.";
		else if giving to ginny:
			say "Ginny: [italic type]No, thank you. I still have so much to learn and... I must prove myself.";
			if ginnyMemory is false:
				say "[roman type]Ginny's words echo through you. Something about them feels so familiar... You want to remember. You feel a surge of power! Defense rose by 3!";
				increase memoryFragment by 1;
				increase def by 3;
				now ginnyMemory is true;
		else if giving to bugcatcher:
			say "The bugcatcher seems sleepy.";
		else if giving to schoolteacher:
			say "Schoolteacher: [italic type]Ah! Most wonderous!";
			say "[roman type]The schoolteacher downs the tea.";
			remove chamomile from play;
			increase orders by 1;
		otherwise:
			say "No response.";
	if noun is slippery elm tea:
		if giving to snowman:
			say "Snowman: [italic type]Oh... what is this...? I'd melt if I tried it, though...";
		else if giving to dan:
			say "Dan: [italic type]Ah, yes! My order! Thanks! I can continue talking in peace now.";
			remove slippery elm tea from play;
			increase orders by 1;
		else if giving to ginny:
			say "Ginny: [italic type]No, thank you.";
		else if giving to bugcatcher:
			say "The bugcatcher seems disinterested.";
		else if giving to schoolteacher:
			say "Schoolteacher: [italic type]Ah! Most wonderous!";
		otherwise:
			say "No response.";

Instead of going to cellar RM0:
	if cellarBool is true:
		move player to cellar rm0;
	otherwise:
		say "You don't have permission to enter.";

Cellar RM0 is a room. Cellar rm0 is north from the tavern. The description is "A completely dark room with not an ounce of light if not for the lightbulb at the entrance. Your cellar starting point. There's a strong smell of moisture in the air, and you hear trickling of water from above. [if player carries the flashlight] There's a path to the north and to the east of here. [otherwise]You can't see much."

Cellar RM1 is a room. Cellar rm1 is east from cellar rm0. The description is "A completely dark room, same as the rest. There's a strong smell of moisture in the air, and you hear trickling of water from above. [if player carries the flashlight] There's a path to the north, west and to the east of here. [otherwise]You can't see much."

Cellar RM2 is a room. Cellar rm2 is east from cellar rm1. The description is "A completely dark room, same as the rest. There's a strong smell of moisture in the air, and you hear trickling of water from above. [if player carries the flashlight] There's a path to the west of here. [otherwise]You can't see much."

Cellar RM3 is a room. Cellar rm3 is north from cellar rm0. The description is "A completely dark room, same as the rest. There's a strong smell of moisture in the air, and you hear trickling of water from above. [if player carries the flashlight] There's a path to the east and to the south. [otherwise]You can't see much."

Cellar RM4 is a room. Cellar rm4 is north from cellar rm1 and east of rm3. The description is "A completely dark room, same as the rest. There's a strong smell of moisture in the air, and you hear trickling of water from above. [if player carries the flashlight] There's a path to the east, west, north and south. There's something north of here! [otherwise]You can't see much."

Cellar RM5 is a room. Cellar rm5 is north from cellar rm4. The description is "A small room with a lightbulb attached to the ceiling, making the room somewhat visible. This room leads to no new rooms; you can exit to the south."

Cellar RM5 contains a cardboard box. The cardboard box contains a revive. The revive is edible. The description of the revive is "An item that restores all your HP upon being defeated". The description of the cardboard box is “There's something pungent in the box.”

Cellar RM6 is a room. Cellar rm6 is east from cellar rm4. The description is "A completely dark room, same as the rest. There's a strong smell of moisture in the air, and you hear trickling of water from above. [if player carries the flashlight] There's a path to the west and north from here. There's something to the north of here! [otherwise]You can't see much."

Cellar RM7 is a room. Cellar rm7 is north from cellar rm6. The description is "A room lit by a single light bulb hanging from the ceiling. There's a strong smell of moisture in the air, and you hear trickling of water from above. This room smells of tea and condiments."

Cellar RM7 contains a metal box. The metal box contains a teleportation charm. The description of the teleportation charm is "An item for instant teleportation to the forest clearing." The description of the metal box is “There's is something shiny in the small box placed upon a table right under the lightbulb. It looks like a necklace of some sorts with a strange rune drawn onto it.”

Remembering is an action applying to nothing. Understand "remember" as remembering.
Instead of remembering: 
	if memoryFragment is 1:
		say "You're still getting dizzy as you try to remember. There was a storm. You're sure of it.";
	else if memoryFragment is 2:
		say "You're still getting dizzy as you try to remember. There was a storm. And something golden in it. You're sure of it.";
	else if memoryFragment is 3:
		say "You're still getting dizzy as you try to remember, but it's more vivid now. A stormy sea, a golden gleam, and a fervent desire to prove yourself.";
	else if memoryFragment is 5:
		say "You're a young man trying to survive in a tough world, with no family to rely on. Scared of fish, yet the only way you were taught to make money. You were out at sea that stormy night to prove to yourself you can do so much better by catching a legendary beast living in the ocean, and prove to others you are talented despte your disposition, yet bit off more than you could chew. The sea would have swallowed you if it weren't for the small - now huge - goldfish that made your wish come true.";
	otherwise:
		say "When you try to remember what happened, you suddenly get very dizzy. Nothing comes to mind, however.";
	
Teleporting is an action applying to nothing. Understand "teleport" as teleporting.
Instead of teleporting:
	if player carries the teleportation charm:
		say "You use the charm to teleport yourself.";
		move player to the clearing;
	otherwise: 
		say "You haven't mastered the arts of teleportation yet. Haven't even started, in fact.";

Checking gems is an action applying to nothing. Understand "check gems" as checking gems.
Instead of checking gems: 
	say "You currently have [gem collection] gems.";
	if gem collection < 0:
		say "You guess it's been put on a tab now.";

Checking hp is an action applying to nothing. Understand "check hp" as checking hp.
Instead of checking hp: 
	say "You currently have [hp] HP."
	
Checking attack is an action applying to nothing. Understand "check attack" as checking attack.
Instead of checking attack: 
	say "Your attack stat is [attk]."

Checking defense is an action applying to nothing. Understand "check defense" as checking defense.
Instead of checking defense: 
	say "Your defense stat is [def]."

Petting is an action applying to one visible thing. Understand "pet [someone]" as petting.
Instead of petting:
	if noun is horned rabbit:
		say "You pet [the noun]. Its fur is very soft and fluffy.";
	else if noun is Polly:
		say "You pet [the noun]. Polly pats back, like a true parrot.";
	else if noun is owl:
		say "You pet [the noun]. The owl's feathers ruffle as it tries not to convey feelings. But it seems to like it.";
	otherwise:
		say "You decide not to pet [the noun].";
