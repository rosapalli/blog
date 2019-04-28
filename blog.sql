-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2019 at 06:34 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloguser`
--

CREATE TABLE `bloguser` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `lastName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `userRole` enum('admin','blogger','reader') COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `bloguser`
--

INSERT INTO `bloguser` (`userID`, `firstName`, `lastName`, `email`, `password`, `userRole`) VALUES
(101, 'Keiko', 'Morimoto', 'morimoto.keiko@gmail.com', 'Keiko', 'blogger'),
(102, 'Devyani', 'Geentilal', 'dee.geentilal@gmail.com', 'Devyani', NULL),
(103, 'Eriko', 'Kobayashi', 'berikoful@gmail.com', 'Eriko', NULL),
(104, 'Kim', 'Ngoc', 'ngocnk96@gmail.com', 'Kim', NULL),
(105, 'Kylie', 'Petitt', 'kylieppetitt@gmail.com', 'Kylie', NULL),
(106, 'Rosa', 'Palli', 'rosapalli@gmail.com', 'Rosa', NULL),
(111, 'Eriko', 'Kobayashi', 'eriko@kobayashi.com', '1234', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `categoryType` varchar(20) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `categoryType`) VALUES
(401, 'Breakfasts'),
(412, 'Budget Eats'),
(406, 'Cookery classes'),
(403, 'Desserts'),
(404, 'Food hacks'),
(408, 'Food trends'),
(405, 'Local Food Guide'),
(413, 'London'),
(402, 'Meals'),
(409, 'Polish'),
(400, 'Recipes'),
(407, 'Restaurant reviews'),
(414, 'Scotland'),
(411, 'Spanish'),
(410, 'Vietnamese');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `categoryID` int(11) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`categoryID`, `postID`) VALUES
(400, 304),
(401, 304),
(400, 305),
(402, 305),
(400, 306),
(403, 306),
(400, 307),
(403, 307),
(404, 308),
(405, 309),
(409, 309),
(405, 310),
(410, 310),
(406, 311),
(407, 312),
(408, 313),
(400, 314),
(402, 314),
(411, 314),
(405, 315),
(411, 315),
(405, 316),
(412, 316),
(413, 316),
(407, 317),
(413, 317),
(414, 312);

-- --------------------------------------------------------

--
-- Table structure for table `commenttopost`
--

CREATE TABLE `commenttopost` (
  `commentID` int(11) NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `userID` varchar(50) COLLATE latin1_general_ci DEFAULT 'Anonymous',
  `commentContent` mediumtext COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `commenttopost`
--

INSERT INTO `commenttopost` (`commentID`, `postID`, `userID`, `commentContent`, `date`) VALUES
(600, 306, '111', 'test', '2019-04-28'),
(601, 306, '111', 'test', '2019-04-28'),
(602, 306, '111', 'test', '2019-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `mediaID` int(11) NOT NULL,
  `mediaFileName` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `postDescription` mediumtext COLLATE latin1_general_ci,
  `postContent` text COLLATE latin1_general_ci,
  `postDate` date DEFAULT NULL,
  `mediaID` int(11) DEFAULT NULL,
  `postStatus` enum('pulished','not published') COLLATE latin1_general_ci DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postID`, `postTitle`, `postDescription`, `postContent`, `postDate`, `mediaID`, `postStatus`, `userID`) VALUES
(304, 'Grilled bacon, egg, and cheddar cheese breakfast sandwiches', 'Last year as part of Matt\'s birthday gift, I made frighteningly delicious pasta carbonara, although for the actual day, I was out of town. This year Matt had to work, but I was here and had the day off. What ensued cannot be covered in one post. Here is breakfast. The rest (blue cheese burgers with meat we ground ourselves & three-layer cake) is to be kimchinued...', 'Last year as part of Matt\'s birthday gift, I made frighteningly delicious pasta carbonara, although for the actual day, I was out of town. This year Matt had to work, but I was here and had the day off. What ensued cannot be covered in one post. Here is breakfast. The rest (blue cheese burgers with meat we ground ourselves & three-layer cake) is to be kimchinued...\r\n        \r\nAre you guys familiar with Sara Foster? This is from her cookbook Sara Foster\'s Casual Cooking, one of my first cookbooks. Don\'t wait as long as I did to make this sandwich. It\'s so simple and shockingly good. \r\n        \r\nRECIPE (serves 4):\r\n\r\n8 thick slices nitrate-free bacon\r\n1 tbsp. olive oil\r\n1 tbsp. unsalted butter, plus extra for buttering the bread\r\n4 large eggs\r\nSea salt and freslhly grund black pepper\r\n8 slices whole-grain bread\r\n4 slices Cheddar cheese\r\n\r\nThe cookbook offers a lengthy description of exactly how to prepare this, but it\'s so easy, I want to just paraphrase for her. Hope that\'s OK, Sara. Here goes:\r\nCook bacon.\r\nFry two eggs--just one minute per side. Believe me when I tell you that you want the yolk to be a little runny.\r\nSpread one side of each slice of bread with butter and put those sides down on the hot pan. Stack up your cheese, bacon, and eggs. Top with other slice of bread. Grill until bread is golden brown and cheese is melty. Enjoy!', '2010-05-27', NULL, NULL, 101),
(305, 'BBQ TURKEY DRUMSTICKS', 'Hi guys! Yesterday we shared our recipe for Sweet and Tangy BBQ Sauce. I really love making my own condiments, it’s always pretty easy and for some reason I end up feeling more accomplished than when I cook a whole meal. Anyway, while I love all kinds of barbecue sauce (I’m totally a sauce person…the more sauce the better for me) I love a nice, sweet and thick barbecue sauce for poultry. I like the flavor it gives and the char you get from the sugar hitting the heat.', 'BBQ Turkey Drumsticks\r\nMakes 4\r\n\r\nIngredients:\r\nbrine:\r\n½ gallon (1.9L) water, divided\r\n½ cup (62.5g) kosher salt\r\n½ cup (62.5g) brown sugar\r\n¼ cup (31g) crystallized ginger\r\n1 tablespoon juniper berries\r\n4 turkey drumsticks, cleaned and pat dry\r\n3 tablespoons butter, melted\r\n1 tablespoon minced thyme\r\nzest of 1 lemon\r\n1 recipe sweet and tangy barbecue sauce\r\n\r\nDirections:\r\n1. Preheat grill to medium-low.\r\n2. Bring 2 cups (480ml) of water to a boil and stir in salt, sugar and crystallized ginger until dissolved. Add juniper berries and stir.\r\n3. Pour the hot mixture into a large container followed by the remaining water, heavily iced. Stir.\r\n4. Gently submerge drumsticks into the liquid and brine for 3 to 4 hours.\r\n5. While the turkey brines, combine the butter, thyme and lemon zest in a small bowl and stir together. Set aside.\r\n6. Remove drumsticks from brine and pat dry. Season with salt and pepper. Place onto grill and close lid. Grill for 45 to 1 hour, basting with the butter mixture every 10 minutes and turning occasionally.\r\n7. In the last 20 minutes begin basting drumsticks with sweet and tangy barbecue sauce, basting every 10 minutes.\r\n8. Once fully cooked, brush drumsticks with more sauce. Serve.', '2013-07-24', NULL, NULL, 101),
(306, 'Coconut Angel Food Cake with Greek Yogurt Frosting', 'Coconut Angel Food Cake with Greek Yogurt Frosting', 'Ingredients\r\n6 egg whites\r\n1 tsp cream of tartar\r\n1/4 tsp salt\r\n3/4 cup (150 g) granulated sugar\r\n1/2 tsp vanilla extract\r\n1/2 tsp almond extract\r\n1/2 cup (60 g) all purpose flour\r\n1/2 cup desiccated / shredded coconut\r\nfor the Greek Yogurt Frosting:\r\n1 cup Greek Yogurt\r\n1/2 cup powdered sugar\r\n1 tsp vanilla extract\r\ntoppings: fresh fruit, (I used apricots and strawberries), pecans, flaked coconut\r\nInstructions\r\nPreheat the oven to 350 F (180 C)\r\nWhisk the egg whites together with the cream of tartar and salt. Continue to whisk whilst gradually adding in 1/2 cup of the sugar. Beat until the egg whites hold stiff peaks, then whisk in the vanilla and almond extracts. Sift the flour and remaining sugar into the bowl. Also add the coconut to the bowl. Fold it all together with a rubber spatula until just mixed.\r\nPour the batter into an angel food cake/bundt cake / tube pan (if you use a bundt pan, I\'d say you should grease it or make sure it\'s non-stick). and bake for 20-30 minutes. Leave to cool upside-down, on a wire rack. Once cool, loosen the edges with a palette knife and turn out onto a serving plate.\r\nFor the frosting, stir together 1/2 cup of the yogurt with all the powdered sugar and vanilla extract. Frost the cake with this, then use the additional yogurt to spoon + swirl on top. Decorate with your choice of toppings.', '2013-09-20', NULL, NULL, 102),
(307, 'raspberry cream cheese coffee cake', 'This raspberry cream cheese coffee cake is a delicious way to sneak a little fruit into everyone’s favorite brunch. SO easy to make!', 'INGREDIENTS\r\n2 1/4 cups flour\r\n3/4 cup sugar\r\n3/4 cup butter\r\n1/2 teaspoon baking powder\r\n1/2 teaspoon baking soda\r\n1/4 teaspoon salt\r\n3/4 cup sour cream (I used regular)\r\n1 egg\r\n8 ounces softened cream cheese (I used light)\r\n1/4 cup sugar\r\n1 egg\r\n1/2 cup homemade or store-bought raspberry jam\r\nINSTRUCTIONS\r\nPreheat the oven to 350 degrees. Mix flour, sugar, and butter with a pastry cutter or in a food processor to make a crumbly mixture. Reserve 1 cup of the crumbs for topping.\r\nCombine remaining crumbs with baking powder, baking soda, salt, sour cream, and 1 egg. Mix until mostly smooth. Spread in the bottom of a lightly greased 9×13 baking pan.\r\nBeat softened cream cheese, 1/4 cup sugar and 1 egg until smooth. Pour over the batter in the pan and spread in an even layer. Spoon the jam over the cream cheese layer and swirl with a knife to make a marbled effect. Sprinkle reserved crumbs on top.\r\nBake for 45-55 minutes until a knife inserted comes out clean.\r\nNOTES\r\nIf your raspberry jam is too thick to spread, thin it out with a few tablespoons of water until it’s easily spreadable.\r\n\r\nI loved this cake fresh out of the oven but even more after it’s cooled down for a little bit.', '2012-02-22', NULL, NULL, 102),
(308, 'HEALTHY FOOD HACKS', 'Making healthy food choices is much easier if you take some time to plan ahead. To know what groceries you need for your meals, and what snacks are the quickest and tastiest for snack-attacks. Below are 11 hacks and tips that I use to help me make the most nourishing choices, but just use whichever tricks you think would help you the most.', '1. You Eat What You See\r\nIf you want to eat more fruit, keeping them on the counter in clear view might help. Instead of tossing an orange or apple in you bag, take some time to peel or cut it, put it in a container, and leave in on your desk to enjoy when you\'re hungry. Having them ready to go and in plain view also makes it more likely that your partner or children will eat it. Swap out your usual snacks, like chips or crackers, for a more nutrient dense one, like nuts or seeds. \r\n\r\n        It works the other way around too. If you open your pantry, and treats are the first thing you see, you\'re more likely to grab those than to keep hunting for a healthier snack. Move more wholesome choices, like dried fruit or trail mix in front of the more indulgent treats.         \r\n2. Fresher for Longer \r\n        \r\no go with tip #1, we\'re more likely to snack on vegetables, like carrots and celery, if they\'re already chopped up and waiting for us in the fridge. But have you ever noticed that sometimes your prepped veggies lose their crunch, dry up, or develop a slimy film? \r\n\r\n \r\n\r\nThere is a quick and easy way to avoid that! Just store them in a glass container with water. It helps to keep them crispy and fresh, and they keep for a longer time. Just don\'t forget to change out the water every few days. \r\n\r\n \r\n\r\nConcerned that pre-cut vegetables might lose some nutrients? There are 3 factors that contribute to nutrient loss: heat, light, and oxygen. \r\n\r\n \r\n\r\nBecause the veggies will be stored in the fridge, the first two points are not a concern. The exposure to oxygen can affect the amount of Vitamin C and sometimes Vitamin E, but what you don\'t lose are all the other incredible nutrients, like B Vitamins, minerals, and fibre. The benefits of eating ready-to-go vegetables, even with less Vitamin C, far outweighs not eating the vegetable at all, or choosing less wholesome convenient food instead.         ', '2018-12-18', NULL, NULL, 104),
(309, 'Polish Food - Complete Guide That Will Rock Your Tastebuds', 'To be honest, Polish food is one of the most delicious cuisines in Europe and the whole world!\r\n\r\nThanks to this post, you won’t miss any specialty of the traditional polish kitchen and you will fall in love with it!', 'Polish food facts\r\nPolish food is perfect for those who crave comfort foods. Traditional Polish cuisine isn’t’ very fit, but it tastes delicious!\r\n\r\nBut do you know, how to describe Polish cuisine?\r\n\r\nWhat you will totally love about Polish food are:\r\n\r\nbig portions\r\nextra adds like sour cream, butter, and roux (to almost every meal)\r\na lot of meat dishes with vegetables, mushrooms, and groats\r\nsurprising connections of seemingly mismatched ingredients (like herring and cream)\r\ningredients are usually fried or stewed, so dishes are full of deep, delicious taste!\r\n        So be prepared for amazing dishes like delicious schnitzel, hearty cabbage stews and meaty sausages, famous polish doughnuts, crumpets, and pancakes.\r\n\r\nKeep some free space in your stomach for kilograms of potatoes, cabbage, and pork which are staples of traditional Polish food (although they don’t sound exceptional!).\r\n\r\nBut do you know why Polish food tastes the way it does?\r\n\r\nLet’s go back in time and discover the Polish food’s roots!\r\n\r\nHistory of Polish food (in a nutshell)\r\nA little bit of Polish history will help you to understand the phenomenon of Polish food.\r\n\r\nIn the middle ages, Polish cuisine based on wheat, meat, fruits, herbs, honey, and spices – everything was local and grew out of Polish soil. Those times Polish food was quite spicy and calorific. What’s interesting, polish people were drinking a lot of local beer then (not wine as in most European countries). Flatware was not in use so everyone relished the food only with their hands.\r\n        \r\n        The location of the country and its relations with other states had an impact on the final shape of Polish cuisine. A very strong tradition of hunting was also not without significance. Polish cuisine has a great respect for forest fruits and mushrooms, that is why Polish people are still organizing lovely family trips to the woods in their free time.\r\nMeat, fish, and vegetables were preserved with salt or by the sundrying process. Polesoften used the fermentation and pickling process as well.\r\nDuring the partitions, many accretions of other countries influenced Polish cuisine. Finally, Polish food is the effect of best cooking traditions of neighboring nations (like Czech, German and Austro-Hungarian).', '2018-09-05', NULL, NULL, 104),
(310, 'A Basic Introduction to Vietnamese Food', 'Despite the varied landscape of Vietnam, all of the cuisine contains this brilliant balance of aromatics, heat, sweetness, sourness, and fish-sauciness. As with other Asian cuisines, it\'s all about the yin and yang; the sweet and the salty, the cooling and the warming, the fresh and the fermented.', '\r\nGeography\r\n         To really understand the flavors of Vietnam, it\'s helpful to look at a map first.\r\n\r\nShaped like an elongated S, the skinny country is about the size of Italy, with China to the north, Laos and Cambodia to the west, and the South China Sea to the east. The 3,000-kilometer coastline snakes down, marked by Hanoi in the north, the rugged central highlands, the sprawling Hoi Chi Minh City (aka Saigon) in the south, and the fertile Mekong delta (\"the rice bowl of the country\") at the bottom hook.\r\n\r\nThe food of the north is heavily influenced by China with its stir-fries and noodle-based soups. As you move south, there\'s more flavor-blending with nearby Thailand and Cambodia. The tropical climate down south also sustains more rice paddies, coconut groves, jackfruit trees, and herb gardens. The food in southern Vietnam is typically sweeter: sweeter broths for pho, more palm sugar used in savory dishes, and those popular taffy-like coconut candies made with coconut cream.\r\n\r\nFrench Influence\r\nIt\'s hard to talk about Vietnamese food without mentioning French colonization, which began with missionaries arriving in the 18th century and not ending until 1954. Clearly it had a lasting effect on the country, the people, the architecture, the land, and the flavors. Most obvious might be the banh mi, with its crusty French baguette as the foundation. But the Vietnamese have taken this sandwich and made it entirely their own with grilled pork, fish patties, sardines, cilantro, chili-spiked pickled carrots and other fillings.\r\n\r\nPho (pronounced fuh, like \"fun\" without the \"n\") is another example of French colonialism leaving its mark—the soup is a blend of Vietnamese rice noodles and French-minded meat broths. One theory contends that pho is a phonetic imitation of the French word \"feu\" (fire), as in pot-au-feu. Some say French colonialists slaughtered a bunch of cattle in Vietnam to satisfy their appetite for steak, and the ever-resourceful Vietnamese cooks used the scraps, bones, and any other rejected bits to create pho.\r\n\r\nA quick note on broths: While we\'re talking about pho, our Intrepid Travel guide Hanh (a wonderful guy! hi Hanh!) spent an hour-long car ride from Hoi An to the Denang airport explaining the importance of broth in the act of courtship.\r\n\r\nA mother judges her son\'s significant other on broth-making skills. Lackluster broths could mean no approval from the mother, according to Hanh. He cited some personal examples. A true broth-master knows exactly what stage the broth is in just by sniffing it. This is all to say, the Vietnamese are serious about broth.', '2013-01-24', NULL, NULL, 104),
(311, 'Cantonese Cookery Masterclass with Yang Sing | Manchester', 'For those of you unfamiliar with it, Yang Sing is a bit of a Manchester institution. Opened in 1977 and family run for three generations. It has recently undergone a refurbishment to welcome in their 40th year in business. The masterclass was to be led by one of Yang Sing’s traditional Cantonese chefs. With the alluring tagline of trying as much food as we wished out tummies were rumbling! Arriving at Yang Sing, we met our host Yin Ting Yeung along with the other class members. There were 7 of us in total and we donned our aprons on ready for the class to begin.', 'Making Dim Sum\r\nWe started our Cantonese culinary adventure trying our hand at making various Dim Sum with executive chef HarryYeung. What we learned that it takes many years of practice to become a skilled Dim Sum chef. An accolade that neither me nor my friend can lay claim to after our class! We had a go at making the prawn and pork Sui Mai dumplings, the beef and ginger dumplings, money bags and also duck spring rolls. I’ll certainly be giving rolling my own spring rolls again. They were surprisingly easy and would make a great dish to serve at a dinner party. Whilst we were waiting for the lunch rush to calm down in the kitchen we were led on a tour of China Town.\r\n         Making Crispy Duck\r\nAfter our China Town tour, we went to one of the upstairs kitchens that is solely used for making all of the delicious slow cooked belly pork and crispy duck. Here we got to prepare our own crispy duck. Possibly not a stage for the squeamish, and definitely not one for the vegetarians. Don’t worry though we were asked prior to the class if we had any dietary requirements. We were taken through the process of marinating the inside of the duck, “sewing” it shut, dunking into hot water and glazing it, ready to be dried out and cooked later on. I really enjoyed this part as I’ve never known the processes that go into making a really tasty crispy duck dish.\r\n         Mastering the Wok\r\nI’m sure most people will have used a wok at some point, but by heck the woks we used were like nothing else! Super heavy and able, thanks to the super hot burning stoves, to hold a scalding hot temperature. After a demonstration by the head wok chef, we were each given the chance to cook either beef in black bean sauce (my absolute favourite) or Yeung Chow fried rice. I obviously opted for the beef in black bean sauce, with my friend cooking the friend rice. I’m pleased to say that it wasn’t a disaster. I made a really delicious beef in black bean sauce from scratch in a real life restaurant kitchen. I was completely amazed by how quickly everything is cooked. In total less than 5 minutes for some really delicious food! After we all tried out hand at cooking it was time to sit down and taste the fruits of our labours.\r\n         Our Feast\r\nWe sat down at our table and marvelled at the feast in from of us. There were the dishes that we made – the beef and black bean sauce and the Yeung chow fried rice. Along with some crispy belly pork, crispy roast duck and sweet and sour chicken. Then came out the lovely Dim Sum, which I’m pretty sure were ones which Harry had made because they looked far too perfect for our efforts!', '2017-03-01', NULL, NULL, 105),
(312, 'A Post Hike Dinner at The Winking Owl Aviemore | Travels', 'What do you need after a long day on the hill? A hearty pub dinner that’s what! When we stayed in Aviemore our prayers and pangs of hunger were answered by The Winking Owl.', 'Owned by the Cairngorm Brewery, The Winking Owl is a lovely pub with a wonderful homely feeling and epic menu. We’d just done a tough walk, so we needed to refuel and the menu was perfect for this. As they are owned by the brewery the beer selection is good, but the gin lover in me also loved their gin selection. I mainly stuck to Kinrara Gin, which is made just outside of Aviemore. So we kept our drinks local all night!\r\n         Starters\r\nTo start I went with the Haggis Pakora with Chilli Jam. Now, spoiler alert, I’ve eaten here before and had this dish before. But it was back in 2014 and I couldn’t resist ordering again as it is just so good. Earthy haggis, with sweet and spicy chilli jam, the perfect pairing. I really recommend. Dr W picked the Cullen Skink with Smoked Haddock and a Scotch Egg! Yes you heard right, a scotch egg in the soup. Trust me, it was awesome. Dr W was a happy happy man.\r\n         Mains\r\nFor our mains we both picked the Venison Haunch Steak, with Black Pepper Potato Press, Red Cabbage and Shallot. Wow, this was rich and decadent! I really could’ve done with some green beans on the side (wasn’t an option) but I enjoyed it all the same. The black pudding and potato was a new one on me, but one I am happy to embrace! It was a delicious dish and the steak was perfectly cooked for me (on the rare side). Now, as we both picked the same I thought I’d share what one of our friends picked, the Beef with Cairngorm Black Gold Beer and Mushroom Pie with Chips and Roast Veg. Just wow! What a portion! The perfect recovery after a long day. I was lucky to try some and that beef was proper melt in the mouth, the same goes for the pastry. It really was an epic dish.\r\n         Overall\r\nWe had a lovely meal at The Winking Owl. The service was fantastic and the server was knowledgeable about the menu – super helpful for the indecisive ones. I know we ordered meat heavy but veggies you are catered for and vegans just ask. It’s all cooked fresh and produce is as local as possible. It really is worth a visit and we will be back next time we’re in Aviemore – mainly because we couldn’t get enough of the Bothy Bar downstairs!\r\n\r\nWould you take a trip to The Winking Owl? What would you order? Let me know in the comments', '2019-03-21', NULL, NULL, 105),
(313, '15 food trends for 2019', 'From surging health trends to hidden veg and Burmese cuisine, this is going to be another rollercoaster year in how we cook, shop, drink and eat at home and in restaurants.', '1. Sri Lankan cuisine\r\nRestaurants such as London’s Hoppers, mini chain The Coconut Tree and the success of the M&S Taste Asia range have put Sri Lankan food on the brink of a breakthrough. Think hoppers (bowl-shaped rice flour pancakes), kottu roti (fried veg, eggs, shredded roti and curry, as sold by street stall Kottu Lanka) and pol sambol coconut relish.\r\n\r\n‘Before, Sri Lankan was lumped in with Indian cuisine but now, we’re not having an “Indian” anymore. It’s recognised in its own right,’ says Emma Weinbren, food trends editor at retail magazine The Grocer.\r\n\r\n2. Burmese cuisine\r\n         Restaurant analysts are tipping Burmese food – check out London’s Lahpet and the @RangoonSisters supper club – or try our recipe for tohu jaw, Burmese fritters. Coming this year from the same author, MiMi Aye, Mandalay, a Burmese recipe book. \r\n\r\n3. Meat-free\r\nBritain’s attitude to meat is changing dramatically. When Marston’s pubs are serving a ‘bleeding’ burger, and restaurants as varied as Gauthier Soho and the Hackney chippy Sutton & Sons are in various stages of turning vegan, clearly something seismic is happening.\r\n\r\nAccording to data seen by M&S (poised to launch a new range of vegan ready meals and on-the-go options), 3.5 million people now identify as vegan, 20% of under-35s have tried veganism, and 25% of our evening meals are now meat-free. ‘It’s no longer niche,’ agrees Weinbren. ‘And this isn’t just committed vegans but people saying, ‘I want to cut down my meat intake.’ This growth in plant-based eating, says Good Food wine guru, Victoria Moore, is also causing major retailers to increase the number of vegan wines they stock. ‘It’s all down to the fining agent,’ explains Moore. ‘Some are derived from fish or dairy products.’\r\n\r\n4. Kefir\r\n         Sales of Lakeland’s kefir kit are ‘flying’ along with M&S’s kombucha. ‘As customers come to understand the positive in influence of bacteria on gut health, the global fermented drinks market is in huge growth,’ reports M&S food trends insight manager Helen Arpino.\r\n\r\nWant to get next-level? Try the coffee bean kombucha at London’s Little Duck Picklery. \r\n\r\n5. Ugly fruit & veg\r\nOcado buyer India Moore says, ‘We’re seeing exciting products made using misshapen fruit and veg that would otherwise go to waste, such as crisps and hummus. Eco-friendly searches on ocado.com leapt 93% last year, and we can see this “rescued food” trend gaining momentum in 2019.’ Get inspired with our ideas for homemade vegetable crisps. \r\n\r\nGood Food also loves the bars pushing ‘green’ drinks, including cocktail expert Ryan Chetiyawardana’s ‘explorations in sustainability’ at London’s Cub and Dandelyan and barman Jack Wakelin’s use of ‘tasty garbage’ at Sheffield’s Public – for instance, cordials made from used citrus. \r\n\r\n6. Hidden vegetables \r\n         Gato & Co puddings (that use vegetables to reduce refined sugar content) and Dr Oetker’s new Yes, It’s Pizza vegetable-dough bases are indicative of how many people are keen to cut down on carbs and increase their intake of vegetables – but without forgoing life’s indulgences. You can expect to see more hidden vegetable products in 2019. \r\n\r\nIf you\'re looking to sneak more vegetables into your child\'s diet, see our best hidden veg recipes for kids. \r\n\r\n7. Rum \r\nRum is coming up fast. Millenials are particularly partial to barrel-aged, small-batch craft rums, fine rums from traditional Caribbean makers and now, British rums from, for instance, Essex’s English Spirit. ‘Whether you like it strong or sweet, prefer the harshness of white spirit, or dark rum sipped neat with ice, or a golden rum and coke, it’s one of the most accessible spirits,’ says Nicholas Robinson, food and drink editor at bar magazine, Morning Advertiser. \r\n\r\n8. Food halls \r\n         Fittingly, given that it kick-started the craze for communal dining halls serviced by multiple kitchens, Altrincham Market House (@MarketHouseAlty)? – which also runs the Mackie Mayor in Manchester – will open a third food hall in Macclesfield this year. In London, Market Halls are set to open Britain’s biggest on Oxford Street, in the former BHS building, while others are being developed in Stockport, Sheffield, on the Wirral and beyond. ', '2019-01-01', NULL, NULL, 105),
(314, 'Spanish tortilla', 'So versatile, Mary Berry\'s easy Spanish omelette makes a delicious brunch, lunch, picnic or light supper.', 'Ingredients\r\n3 tbsp olive oil\r\n1 onion, thinly sliced\r\n½ red pepper, seeds removed, finely chopped\r\n225g/8oz peeled potatoes, cut into 1cm/½in slices\r\n4 large free-range eggs\r\n1 tbsp finely chopped parsley\r\nsalt and freshly ground black pepper\r\nMethod\r\nHeat 2 tablespoons of the oil in a small heavy-based frying pan that\'s about 20cm/8in in diameter. Add the onion and fry for 5 minutes.\r\n\r\nAdd the pepper and potatoes and season with salt and pepper. Cover with a lid and gently cook over a low heat for about 15–20 minutes, or until the vegetables are soft and the potatoes are cooked through. Transfer to a bowl and wipe the pan clean.\r\n\r\nBeat the eggs in a bowl and season with salt and pepper. Pour the eggs into the bowl with the cooked mixture.\r\n\r\nAdd the remaining oil to the pan. Carefully pour in the egg mixture and sprinkle with parsley. Cook on a medium heat until the sides and top have just set and the base is lightly golden-brown. When the middle is set, carefully slide onto a plate.\r\n\r\nPut the pan on top of the omlette and flip over to cook the other side for 3–4 minutes, or until golden-brown all over and just cooked through. Slide onto a plate to serve.', '2019-03-16', NULL, NULL, 106),
(315, 'Barrafina', NULL, 'Barrafina | Soho, Covent Garden & King’s Cross Restaurants\r\n\r\nLet us – for a brief moment – give thanks to Spain, who have gifted the world Pablo Picasso, Don Quixote, The Alliance of Civilisations and – probably most importantly – Barrafina.\r\n\r\nAt least, in a roundabout way, that is. See, Barrafina – London’s best Spanish restaurant – actually comes from two English brothers, Sam and Eddie Hart, inspired by the famous Cal Pep tapas restaurant in Barcelona.\r\n\r\nConsidering Barrafina’s significance in the London restaurant scene, it seems possible that someone, one day, many years from now, may ask you what it was like to dine there…\r\n\r\nAnd so we’ve prepared a sample response for you:\r\n\r\n“Imagine walking into a scleral-white, cosy eatery packed with stainless steel, marble and mirrors, and sitting down at an open kitchen bar where arguably London’s most prestigious Spanish tapas chefs are plating up a colourful mixture of both contemporary and traditional Mallorcan and Catalan tapas dishes.\r\n\r\n“Then, imagine leisurely perusing the menu, while watching those chefs gracefully slice wafer-thin, rose-pink cured meats from whole legs hanging on proud display above the bed of iced, fresh seafood behind the bar.\r\n\r\n“And finally, imagine being able to talk to the chefs while they recommend the perfect red and white wine and sherry pairings for the (Michelin-starred) dishes they’re plating you up, while the rest of the bar gaggle and bop their way through the thick atmosphere, to the music of modern Spain.”\r\n\r\nOr, alternatively, you could go and see for yourself.\r\n\r\nEither way.\r\n\r\nThere are now four branches of Barrafina in London, each of which serve that stupendous tapas menu bolstered by a few characteristic specials. Here’s what you can expect in each one:\r\n         BARRAFINA DEAN STREET | Soho\r\n         When the landlords of the original Barrafina on Frith Street decided to redevelop the building instead of continuing to host, you know, the most popular restaurant in London, the flagship set sail for Dean Street instead, where it’s made a new home in the ground floor of Quo Vadis (also run by the Harts). Sporting the characteristic marble dining counter, bustling open kitchen and somewhat Bavarian-looking beer pumps, it’s settled in nicely. Leave room for the Santiago tart; a traditional Galician almond cake.\r\n\r\nDetails: 26-27 Dean Street, W1D 3LL | Open M-S 12-3pm and 5-11pm, Sun 1-3.30pm, 5.30-10pm\r\n         \r\n         BARRAFINA ADELAIDE STREET | Covent Garden\r\n         Happily a little more spacious than its sibling, Barrafina Adelaide Street is flooded with light – and has a dedicated space for drinks while you’re waiting for your spot at the counter. There are subtle differences in the menu between each branch, so head here for a wider selection of seafood, or if you have a particular penchant for cuttlefish croquetas; crispy pig’s ears; and milk-fed lamb’s brain.\r\n\r\nDetails: 10 Adelaide Street, WC2N 4HZ | Open M-S 12-3pm and 5-11pm, Sun 1-3.30pm, 5.30-10pm', '2019-04-12', NULL, NULL, 106),
(316, 'The Best Cheap Eats In London', 'Cutting back doesn’t mean that you have to deprive yourself of eating out and seeing your friends. London’s an expensive city, but there are plenty of inexpensive restaurants with excellent food. Here are our favourite places to get a good sit-down meal for £10 or less.', 'Bancone ££££ Italian in Covent GardenBancone is right off of Trafalgar Square. It’s home to a whole lot of marble. And it has things like rabbit pappardelle and saffron butter on the menu. We know what you’re thinking, ‘yeah, cool, I’ll visit as soon as that aunt with shares in Topshop kicks it’. But luckily, this handmade pasta spot is actually very affordable. You can go for any of their pasta mains (shoutout to the silk handkerchiefs with egg confit and hazelnut butter), split a bottle of wine, and leave only twenty quid lighter.\r\n          Ph?t Phúc Noodle Bar\r\nNo doubt inspired by some of SW3’s wealthier inhabitants, Phat Phuc Noodles is the most reasonable (and one of the most tasty) places to eat in Chelsea. This little courtyard stall serves up noodle dishes from across Asia - laksa, bun, and pho - all for under a tenner. It’s unlikely to be the best version of each you’ll ever try, but it’s the best in the area if you’re looking for a low price. There’s covered seating, or, if the sun’s out, uncovered seating, and it makes for very pleasant bite to eat.\r\n          \r\n Mr Bao\r\n££ Taiwanese in Peckham                 \r\nLondon is an expensive city. A pint and a soda water cost us eight quid recently. £8. We would’ve rather just drank our own tears. What a lot of people forget though, is that some of London’s best food (and we really do mean best) is a bargain. Mr. Bao is just that - an absolute bargain. This Peckham spot is a place worth travelling to, not least for their shiitake mushroom bao. On top of that the fried chicken is excellent, the atmosphere lovely, and you’ll be back at the end of the month to splurge.\r\n          \r\n      Yard Sale Pizza £ Pizza in Hackney   \r\n          Pizza really is the ultimate cheap eat. It always does the job. Yard Sale’s pizza more than do the job though. We think they’re one of the best in London. Split one of their huge 18-inch margheritas between three and you’re paying under a fiver each. That’s three whopper slices. Alternatively put a couple more quid in each and go for their TSB (tenderstem broccoli, manchego, pine nuts). It’s our go-to.', '2018-12-15', NULL, NULL, 103),
(317, 'Pidgin, London E8 – restaurant review', 'This fixed-menu idea is nothing new, but the Pidgin team have made it fresh and vibrant as a citron pressé', 'In the restaurant business, there are bad amateurs and good amateurs. The bad ones will have made a few bob doing something else and think, “I’ll have me some of that.” They buy brick tiles and industrial lighting by the metre, smoke themselves some pig and stand back, waiting for the queues and rubbing their thighs. The good guys are those who, as the name suggests, just love the industry with a not-to-be-denied passion and, despite not being pros, can’t imagine doing anything else.\r\n\r\nIt’s into this latter category that I’d put the people behind Pidgin: James Ramsden and Sam Herlihy (neither trained in the restaurant business, but with a successful supperclub under their belts), alongside Elizabeth Allen in the kitchen. Allen’s most recent gig was at Neil Rankin’s ballsy Smokehouse in Islington; she’s staged at L’Enclume and has a love for Asian flavours – miso, sake lees, shiso, dashi. The result is bewitching.\r\n          Our four courses kick off with petals of raw mullet, the pristine fish set among radish, fennel tops and an intriguing squid-ink crisp, all underpinned by smoked fennel mayonnaise. Inevitably with a set, no-choice menu, there’s one dish that makes me think “nope”, but the squash spaghetti turns out to be our dinner’s dazzling turn. It’s not, as I’d imagined, spaghetti squash, but the less squelchy butternut, spiralised and dressed with brown butter and a nut-laced dukkah spice mix. At a time when many chefs think they need to dial flavours up to 11, the subtlety here is sexy: seductive interplay between textures, various degrees of nuttiness, including what looks alarmingly maggoty but turns out to be clever – puffed wild rice. If I’d seen this on a conventional menu, I’d never have ordered it. There’s a definite benefit to having your hands tied.', '2015-10-23', NULL, NULL, 103),
(319, 'TESTING TESTING', 'NDIWNICW', 'DCWNCWI', '2008-09-08', NULL, NULL, 101),
(320, 'this is the title', 'this should be post description', 'And this should be the content', '2019-04-27', NULL, NULL, 101),
(321, 'test', 'test test', 'test test test', '2019-04-28', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `replytocomment`
--

CREATE TABLE `replytocomment` (
  `replyID` int(11) NOT NULL,
  `commentID` int(11) DEFAULT NULL,
  `replierName` varchar(50) COLLATE latin1_general_ci DEFAULT 'Anonymous',
  `replyContent` mediumtext COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloguser`
--
ALTER TABLE `bloguser`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`),
  ADD UNIQUE KEY `categoryType` (`categoryType`),
  ADD UNIQUE KEY `constraint_categoryType` (`categoryType`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD KEY `postID` (`postID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `commenttopost`
--
ALTER TABLE `commenttopost`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mediaID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `mediaID` (`mediaID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `replytocomment`
--
ALTER TABLE `replytocomment`
  ADD PRIMARY KEY (`replyID`),
  ADD KEY `commentID` (`commentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloguser`
--
ALTER TABLE `bloguser`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `commenttopost`
--
ALTER TABLE `commenttopost`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `mediaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `replytocomment`
--
ALTER TABLE `replytocomment`
  MODIFY `replyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `post` (`postID`) ON DELETE SET NULL,
  ADD CONSTRAINT `category_post_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE SET NULL;

--
-- Constraints for table `commenttopost`
--
ALTER TABLE `commenttopost`
  ADD CONSTRAINT `commenttopost_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `post` (`postID`) ON DELETE SET NULL;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`mediaID`) REFERENCES `media` (`mediaID`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `bloguser` (`userID`) ON DELETE SET NULL;

--
-- Constraints for table `replytocomment`
--
ALTER TABLE `replytocomment`
  ADD CONSTRAINT `replytocomment_ibfk_1` FOREIGN KEY (`commentID`) REFERENCES `commenttopost` (`commentID`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
