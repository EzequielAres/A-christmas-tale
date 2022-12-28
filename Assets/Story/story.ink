// Choice variables
VAR rudeToYourMother = false
VAR helpedTheGirl = false
VAR helpedTheHomeless = false
VAR buyiedMatchess = false
VAR sawYourGrandma = false
VAR helpedGrandma = false
VAR playedWithKids = false

// Change background function
EXTERNAL ChangeBackground(backgroundName)

// Characters functions
EXTERNAL ShowCharacter(characterName, position)

EXTERNAL HideCharacter(characterName)

-> Intro

== Intro ==
{ChangeBackground("Black")}
Once upon a time...
On Christmas eve...

{ChangeBackground("JohnsRoom")}
In a town called WinterPlains, there was a boy in his room, his name was John. 
Dressed in his warm pajamas and bundled up with his winter blanket, he spent his time alone, playing or watching the same movies that were always broadcasted at this time of the year. Movies that made no sense in his opinion, where problems were solved because of the "magic" of Christmas, he didn't believe in that, he knew that life wasn't like that. 

These dates meant nothing to him, if we put together his issues to socialize with the poor relationship he has with his family he had nothing left to do but to lock himself in his own room, inhibiting himself from reality while killing time.

This Christmas was especially problematic, his father had been called to transfer to another city for his job. This did not please his mother, it was his hometown, where she had lived all his life. She also needed to take care of her mother, who lived 5 minutes away and needed some care. The idea of moving didn't bother John, he had nothing here, no one would miss him (except maybe his grandmother).

- I think I should take a shower... - John said, after so many days in his room, going out only to eat or to help his parents with household chores, he had lost count of the days, and he didn't even know how long he hadn't showered.

He grabbed some clothes and went straight to the bathroom without greeting anyone
    *** Brush your teeth
        -> BrushTeeth
    *** Take a shower
        -> TakeShower

== BrushTeeth ==
    {ChangeBackground("Bathroom")}
     John took the toothbrush, and unfortunately he looked at his reflection. 
     His hair was disheveled, he had dark circles under his eyes, and he didn't even have his pajamas on. Seeing his reflection brought a quick thought, he was wasting time in his room. He had had that thought before, so many times... he dismissed it as quickly as the other times. He was alone, his family didn't care about his social problems, but... what could he do?

    He managed to distract his mind and set out to take a hot shower. This time his reflection did not displease him, he had dressed in his favorite clothes and with his hair well combed he gained some confidence to face the day.
    -> AfterTakeShower

== TakeShower ==
    {ChangeBackground("Bathroom")}
    John quickly went to take a hot shower, he wanted to feel clean as soon as possible. He would worry about his teeth later.
    -> AfterTakeShower


== AfterTakeShower ==
    {ChangeBackground("Kitchen")}
    He went downstairs to get something to eat, he didn't even know what time it was. Through the kitchen window, he could see the sun setting. He also saw his mother, who smiled a little smile at the sight of him, although there was some concern in her eyes.
    
    {ShowCharacter("John", "Left")}
    {ShowCharacter("Mother", "Right")}
    
    - Hello, sweetheart! Looks like you're finally out of the cave! I almost thought I'd have to get you out myself, so we could celebrate Christmas Eve together - John didn't like that comment very much, he wasn't locked up because he wanted to be.
    
    - Hi, looks like it's late.
    
    - Of course it is! I'm making dinner, you know I'll be a few hours, but thank goodness you're here. I need you to go get some things, I'm missing ingredients for the recipe and your father is out.
    
    *** Reply annoyed
            -> AnsweredRudeToYourMother
    
    *** Be kind, she is going through a hard time too.
        -> AnswredKindToYourMother


== AnswredKindToYourMother ==
    ~rudeToYourMother = false
    - Okay mom, tell me what you need
    - I should buy some gifts too, it's Christmas Eve anyway, and I haven't had time to buy anything. - John thought - Well, I have had time, I just haven't taken advantage of it.
    -> RoadToShop

== AnsweredRudeToYourMother ==
    ~rudeToYourMother = true
    - Can't you go by yourself? Besides, you could call dad and tell him
    
    - Yes, but you need to go out. Being locked up for so long is not good, besides, this way you can buy our presents. Because you haven't bought them, have you?
    
    - She's right... I didn't even know it was Christmas Eve... I have something saved up, I should buy something - John thought - Okay, tell me what you need.
    
    She took out a note she had already prepared and gave it to John with the money. - Thanks sweetie, at least at dinner we can spend some time together...
    -> RoadToShop


== RoadToShop ==
    John went to the entrance of his house, through the window he saw that it was raining, he would have to go with an umbrella

    He hated umbrellas, in WinterPlains it was very windy and that made it difficult for him to go with umbrellas. Luckily for him, the rain was not accompanied by an excessive wind, so he took his black umbrella and opened the door.
    
    {ChangeBackground("Neighborhood")}
    The winter cold suddenly attacked him, getting into his clothes to freeze his skin, he should have wrapped up more. He resisted the cold and decided to continue on his way to the store, he did not like the idea of going back to search through his closet, full of messy or dirty clothes looking for something better than his sweatshirt.
    
    The neighborhood was decorated with Christmas lights arranged in each house, some with more picturesque forms such as Santa Claus entering through their chimneys, sleighs with reindeer... others were simpler, simply illuminating the facades. The children created snowmen or some took sleds to slide through the snow. They didn't seem to care about the rain, they laughed non-stop as their clothes were covered in snow and rain.
    
    There were people removing the snow from their driveways, others removing it from their cars... The traffic was not heavy in the neighborhood, due to the weather it was better not to drive. Some people ran to buy last minute gifts.
    
    On his way to the store he saw a young girl, dressed in a business suit with a long coat, as she sheltered from the rain under the roof of a bus shelter. She seemed quite worried.

    Suddenly her eyes fell on my umbrella, it seemed that she wanted to come closer and say something, but after a moment she looked away.

    *** Ask if she needs anything
        -> AskedTheGirl

    *** Ignore it
        -> IgnoreTheGirl


== IgnoreTheGirl
        John passed by without looking at the girl. He didn't know her at all, why should he approach her and ask?
        
        However, he looked back, John caught her looking at her umbrella again as he walked away but decided to continue towards the store.
        
        -> TowardsTheStore

== AskedTheGirl ==
    A feeling of curiosity emerges from John, the girl seemed concerned, and it didn't hurt to ask. 

    John approached the girl, who looked back at him as he approached.
    
    - Hello, is something wrong? - asked John.
    
    - Well... I have an important meeting for my work, but the rain has caught me by surprise and I don't have an umbrella. I can't show up all wet and messy - It seemed like this was significant to her.
    
    - Why don't you wait until the rain stops? It doesn't look like it has much left - John replied.
    
    - That's what I'm doing, but I don't have that much time and I can't afford to be late either.
    
    - Well maybe I could...
    
    *** Lend him your umbrella
        -> LendYourUmbrella
    
    *** Tell her to wait
        -> TellTheGirlToWait
    
== LendYourUmbrella
    ~helpedTheGirl = true
    John looked at his umbrella, a simple black umbrella just big enough for one person. It was a few years old now, he didn't mind giving it away, at least he had a hood to hide from the rain. It also seemed important for the girl to arrive on time and dry for the meeting.
    
    - Here, you can keep it. You look like you need it more than I do.
    
    - Do you really? Thank you! I don't know how to thank you... If you tell me your address, I promise to return it! - Said the girl, who kept thanking John while she was running away towards the meeting.
    
    John felt some happiness for having helped the girl, a feeling that slowly went away as he got wet from the rain, since he didn't have his umbrella now. He had helped the girl, but did it really matter? He would never see her again, and now he would have to buy a new umbrella.

    ->  TowardsTheStore

== TellTheGirlToWait
    - No, I'm sure it will stop raining soon, and she will be able to go to the meeting. Besides, I'm sure someone else can help her, I don't want to get wet either - John thought.
    
    - Don't worry, the way it's raining I'm sure it will stop raining soon.
    
    - Well... thanks for asking anyway - Replied the girl, who seemed sadder now.
    
    John said goodbye as he walked away from the girl, dry under his umbrella.
    
    However, he looked back, John caught her looking at her umbrella again as he walked away but decided to continue towards the store.
    ->TowardsTheStore


== TowardsTheStore ==
    John walked for a few minutes until he reached the store, it seemed that it would not stop raining.
    {helpedTheGirl: John were glad you gave her umbrella to the girl, she could not have made it to the meeting without her help.}
    {not helpedTheGirl and AskedTheGirl: A small feeling of guilt came over John, it seemed that the girl would not be able to make it to the meeting because of the rain. But someone else must have helped her, right?}
    
    {ChangeBackground("OutsideShop")}
    John arrived at the store, as always at this time of year, there was a line to get in. As a counterpart to all the people lining up to buy gifts or food for the holidays, near the entrance were homeless people. They stood there these days, hoping that someone would feel compassionate enough to give them some money.

    He didn't look at the homeless and stood in line. John moved slowly, there seemed to be more people than he thought.
    
    The minutes passed, advancing little by little. After waiting a while John almost reached the entrance, next to him sat a homeless person. He was not very warm, he must have been freezing. He was a gray-haired man, quite thin, a reflection of not eating for days, he looked tired.
    
    Suddenly the man looked at him, his eyes expressing nothing but weariness.
    
    - Do you have any money you can give me? Please... - begged the homeless man.
    
    The line of people moved forward, leaving John's path clear to enter the store.
    
    - I'm sorry, I don't have any money to give you.
    
    The man kept looking him in the eye, he knew it was a lie. He looked down and wrapped his arms around himself, trying to protect himself from the cold. To the homeless man, John was just one more, one of many who ignored him or lied just to avoid giving him some money.
    
    John entered the store, his mind focused on the homeless man. Feeling guilty for having lied to him. He did have money, but he had just enough for his mother's shopping and to buy Christmas presents. 
    
    -> InTheStore
    
== InTheStore ==
    {ChangeBackground("Shop")}
    John walked around the store, a supermarket divided into sections. There was food, video games, toys, books.... 
    He decided to go directly to buy the ingredients for his mother. As he walked through the store, crossing things off the list, he kept thinking about the homeless man.
    
    *** I could buy something for him
        -> BuySomethingForTheHomeless
    
    *** Discard the thought
        Distracting his mind, John decide to think about what he should buy for her parents.
        -> BuyGifts

== BuySomethingForTheHomeless ==
    ~helpedTheHomeless = true
    At the end the feeling of guilt for having lied to the homeless man invaded him, John thought about what he could do to help him. It seems that buying him some food was the best option, since he had just enough money, John couldn't buy the gifts he had thought of, but he would look around the store for something more affordable to give to his parents.
    
    -> BuyGifts
    
== BuyGifts ==
    
    He browsed the store looking for gifts for her parents. John didn't know them very well, even though they lived together he didn't talk to them much and hardly saw them because of their jobs.
    {helpedTheHomeless: Since he didn't have much money from helping the homeless, he decided to pick something to spend time together. He remembered years before, when they played many board games together. They were happy memories. He went to the board game section and took a quick look. Any of them would do, he just wanted an excuse to be together. John saw a shelf where the best-selling board games were displayed, and without thinking, he picked one at random.}
    {not helpedTheHomeless: He took a quick tour of the store, thinking about what he could give his parents. He spent some time searching but could not find a good gift, in the end, tired of searching, he chose a couple of things from the bestseller shelves. He wasn't sure his parents would like the gifts.}
    
    -> BackHome
    
== BackHome ==
    {ChangeBackground("Neighborhood")}
    Once the gifts and things on the list were paid for {helpedTheHomeless: (and after feeding the homeless man)}, he headed back home. On the way, a girl spoke to him.

    - Excuse me, do you want a match?
    
    - Match? What would you want it for?
    
    - Please, no one has bought me matches all day... I need money
    
    John noticed the girl, she was small, blonde with curls that covered her neck, she was only wearing one shoe and her clothes didn't seem to warm her too much.
    
    *** Buy matches
        -> BuyMatches
    
    *** Dont buy matches
        -> DontBuyMatches
    
== BuyMatches ==
    ~buyiedMatchess = true
    John felt compassion for the girl, she was alone selling matches to have money for Christmas. She rummaged through her pockets, hoping to find something to give the girl.

    Luckily, he had some loose change in her back pocket, he didn't even remember that he had them.
    
    - Here, it's all I can give you - John said
    
    The girl's expression brightened - Thank you! At least now my father won't scold me, I'm sure I have time to sell matches to someone else. Merry Christmas!
    
    John wished her a Merry Christmas too, and the girl walked away happy. John also felt better having helped the girl.
    -> GrandmaCalls
    

== DontBuyMatches ==
    John remembered that he spent his money buying gifts for his parents. - I'm sorry, I have nothing to give you for the matches
    
    - Anything will do, I can't get home without selling anything. Please - Said the girl
    
    John apologized again and kept walking. The girl didn't move, she sat down and lit some matches. Surely to warm up, she seemed sad
    
    John felt a pang of guilt.
    -> GrandmaCalls
    

== GrandmaCalls ==
    On the way home, John's phone vibrated, he reached into his pocket and took out the phone. It was a message from his grandmother, he said "Merry Christmas darling! You could come see your grandmother on these dates... I haven't seen you in a long time"

    True, John hadn't even thought about her... Suddenly he felt terrible about himself for having locked himself away for so long, disconnected from everything else.
    
    *** Go to see her
        -> SeeYourGrandma
        
    *** Go home
        -> AfterGrandma

== SeeYourGrandma ==
    ~sawYourGrandma = true
    John looked at the time on his cell phone, it was late, but he would have time to go see his grandmother and take the things to his mother later. Luckily, his grandmother lived close to home. John send her a message.

    - "You're right grandma, I'll be there in a few minutes, I love you"
    
    He walked for a few minutes until he finally arrived at his grandmother's house. John knocked on the door and his grandmother took a few minutes to open. She walked slowly and had a hard time getting up, like anyone his age. When the door opened, her grandmother looked at him, and he could see how happy she was to have visited her.
    
    - Hello darling! Come in, come in, I've made cookies, they're too many for me.
    
    {ChangeBackground("GrandmotherHouse")}
    John entered her grandmother's house, it had been a while since he had visited her. But everything remained the same, he sat in the kitchen while she took out the cookies and asked him about school or her friends.
    
    John didn't like that subject, he had been missing classes lately. He hadn't managed to make friends either, he didn't consider himself interesting, and he thought he was bothering others, so he distanced himself from his classmates.

    But he couldn't tell his grandmother that, she would worry too much about him, so he told her a little lie and tried to divert the subject.
    
    - It almost seems that it is not Christmas in this house, you do not even have the Christmas tree on, grandma.
    
    - I know darling, lately I haven't had the strength to start decorating the house and your mother is busy enough to bother her with it. - She seemed a little sad about that, his grandmother had always loved decorating the house for Christmas
    
    *** I could help you decorate the Christmas tree, it's not too late
        -> HelpYourGrandma
    *** It's late, I should go home
        -> AfterGrandma
    
== HelpYourGrandma ==
    ~helpedGrandma = true
    - Really, honey? That would be great. But didn't you have to leave?
    
    - Don't worry, I'm sure we'll have time to decorate the Christmas tree. - Said John
    
    His grandmother quickly went to get the things to decorate the tree, she seemed more cheerful now. She came back a few minutes later with a big box full of decorations.
    
    {ChangeBackground("GrandmotherHouseDecorated")}
    They spent some time decorating the house, putting the Christmas balls on the tree, they also placed strings of lights around the tree that made the room sparkle. The whole house seemed much livelier now, and so did his grandmother. John was grateful that he had stayed to spend time with her. Sometimes he thought that he didn't spend enough time with his grandmother, someday she wouldn't be around, and he would regret not visiting her enough.  

    Once they finished, John said goodbye to his grandmother.
    
    - We will see each other soon grandma, next time I will come with my parents, so we can all be together.
    
    - I wish I could come myself to visit you, but I'm getting old now.
    
    - Don't worry grandma, Merry Christmas
    
    - Merry Christmas sweetie - His grandmother hugged him then put something in her pocket - Thank you for visiting me.
    
    John said goodbye and left his grandmother's house, he put his hand in his pocket and, as he expected, his grandmother had given him 10 dollars. She always gave him 10 dollars when he visited her, as a child it seemed like a fortune to John, and now he appreciated the gesture more than the money.
    
    -> AfterGrandma

== AfterGrandma ==
    {ChangeBackground("Neighborhood")}
    {sawYourGrandma: ->EncounterKids}
    {not sawYourGrandma: John didn't feel like going to see her, although he felt bad for not having thought of her in all this time. He sent her a message. - I'm sorry grandma, I have to deliver some things to mom. Merry Christmas, I promise I'll come see you the next day. I love you - John headed for home, it wouldn't be more than a few minutes. He spent the whole way thinking about his grandmother - I should have visited her... She's old and can hardly leave the house, I haven't seen her in too long - He thought. While the feeling of guilt grew, John arrived home.}
    -> ArriveHome

== EncounterKids ==
    John was on his way home, even though it was a little late, there were still people on the streets. It wouldn't be long before he got home. Suddenly as he was walking something hit him in the head, it didn't hurt, but it was very cold. They had thrown a snowball at him. John looked around and saw a couple of boys about his age looking at him laughing. Suddenly he felt terrible, were they laughing at him? Why had they thrown the snowball at him? Did they want to tease him?

    *** Thow a snowball at them
        -> SnowballThem
        
    *** Face them
        -> FaceThem

== SnowballThem ==
    ~playedWithKids = true
    John put the bags on the floor. The boys looked at him strangely. He bent down and took a piece of snow in his hands, shaping it with his hands, John prepared his snowball. The boys realized what he was doing and smiled, it looked like they wanted him to throw the snowball at them. 

    Before the boys could form more snowballs, John threw his snowball at them, hitting one of them in the head. The boys didn't stand still, they started throwing more snowballs at him while John was preparing, dodging and throwing snowballs at the boys.
    
    When he realized he was smiling, tired, but happy. After a few exchanges of snowballs, John gave up, after all it was two against one.
    
    He grabbed his stuff and the boys approached him. Apparently they were from his own school, he didn't know almost anyone, so they didn't look familiar to John. They talked for a while and seemed to like him, they even said that he should be with them when classes started again, he said goodbye to the boys and continued on his way home.
    -> ArriveHome 
    
== FaceThem ==
    John pulled up some courage and looked at the boys.

    - What are you doing?! Why did you throw a snowball at me?! - shouted John
    
    The boys looked at him in surprise, ducked their heads and apologized.
    
    - Sorry, we just wanted to play. We didn't think you were going to react like that, we should have asked first - Said one of the boys.
    
    John was embarrassed to have reacted that way, maybe he had overreacted a little. - I'm sorry I yelled at you, but you shouldn't be throwing snowballs at people - John picked up his bags and continued home, too embarrassed to stay and talk to the boys.
    -> ArriveHome
    
== ArriveHome ==
    {ChangeBackground("Kitchen")}
    John finally got home.

    {sawYourGrandma: - Thank goodness you're home, it took you so long, you know? It's almost time for dinner, tell me you brought what I asked for - Said his mother.}
    {sawYourGrandma: - Sorry mom, I brought your stuff. I was late because I went to see grandma.}
    {sawYourGrandma: - Really? That's great, I'm sure he was very happy to see you. Thanks for bringing everything}

    {not sawYourGrandma: - Here you go, mom, I got everything on the list.}
    {not sawYourGrandma: - Thanks honey, put it there. There is still some time left until dinner - Said his mother.}

    {ChangeBackground("LivingRoom")}
    John went to the living room, he wanted to rest a little before dinner and didn't want to go back to his room. His father was just arriving, he still didn't know where he had gone, maybe he bought some last minute gifts? Possibly John had inherited that from his father.
    
    A few minutes passed, and he heard a car noise, then someone opened the door. It was her father, unfortunately he didn't bring any gifts, perhaps he had left them in the car.

    - Hey champ! - His father greeted him cheerfully
    
    John greeted him with a wave. - Did you bring presents?
    
    - You know, no presents until tomorrow John 
    
    {helpedTheGirl: but I have a very good news - His father seemed happy. }
    {helpedTheGirl:- What is it about? - Said John, his father called John's mother, gathering them in the living room.}
    {helpedTheGirl: I got a call from work, it looks like they won't need to transfer me.}
    {helpedTheGirl: Are you for real, honey? That's great! But why? - said John's mother, liking the idea of staying.}
    {helpedTheGirl: It seems that a girl is going to replace the transfer, she had a meeting today with my bosses, and she was very interested. They called me to ask if I wanted the transfer, but I decided it was best for us to stay here - said John's father, happy about that.}
    {helpedTheGirl: John's mother hugged her husband, happy about the decision to stay. They opened the embrace, looking for John to join them, he hugged them and even though he didn't mind moving he was also happy for the news, he knew it was important for his mother.}
    
    - Well, dinner is done, so who's hungry? 
    
    {ChangeBackground("Black")}
    They spent the whole dinner talking, it was strange for John. He hardly saw his parents and hadn't talked to them like this in a long time. John was telling about his way to the store, his meeting with the girl with the matches, the snowball kids...
    
    By the time he realized they had finished dinner, John was tired, so he wished his parents a good night and went upstairs to his room.
    
    {not helpedTheGirl and not helpedTheHomeless and not buyiedMatchess and not sawYourGrandma and not playedWithKids:
        ->BadEnd
    }

    -> GoodEnd

== BadEnd ==
    {ChangeBackground("JohnsRoom")}
    John lay down on the bed. He thought about the day, about the people who had asked for his help. He didn't help anyone, he didn't even go to his grandmother's house...
    
    Was John a bad person? Was he hiding behind his social anxiety, not to help anyone? Was he sabotaging himself?
    
    With that attitude he would end badly, he knew it, but no matter how hard he tried he couldn't change. He had had so many opportunities today.... He could have taken the step, changed, but he had not done it. It hurt him to have been so selfish, he felt bad.
    
    It was time to change, from now on he would try harder. To make friends, to help people in need, to take care of her family... Yes, he was determined
    
    He would be a better person.

-> END

== GoodEnd ==
    {ChangeBackground("JohnsRoom")}
    John lay down on the bed. He thought about the day, about the people who had asked for his help. 
    {helpedTheGirl: He had helped that girl, the one with the umbrella. She said she was going to an important meeting, was she...? No, it would be too much of a coincidence, but he was happy to have helped her, even though now he didn't have an umbrella.}
    {helpedTheHomeless: He gave food to the homeless man, who appreciated it much more than if he had given him a couple of coins. John was happy for that, but he was also thankful that he had helped the homeless man because for him, he bought the board game that he would spend time with his parents.}
    {buyiedMatchess: John took out the box of matches, the girl seemed very happy to have sold even one box. }
    {sawYourGrandma: He was grateful to have seen his grandmother, it had been a long time since he had seen her and being with her reminded him how important it is to take care of his family.}
    {playedWithKids: John ran his hands over his head, remembering when the boys hit him with a snowball. At first, he was angry because he thought they were messing with him, but they just wanted to play. Now he had someone to be with in class, and that made him very happy.}
    
    It seems that having helped all those people made him happy too, he had never thought about it, he was always selfish and only thought of himself. He believed that everyone was the same, but no, if he could help all those people, surely there are more good people out there giving support to others when necessary. John decided that from now on he would be that kind of person, someone to trust, someone who would not hesitate to help others. He would think more of others, of his family.

    John was happy, the room no longer seemed like a cell
-> END

