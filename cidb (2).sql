-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 03:41 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cidb`
--
CREATE DATABASE IF NOT EXISTS `cidb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cidb`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `paragraph` text NOT NULL,
  `picture` text NOT NULL,
  `background` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `paragraph`, `picture`, `background`) VALUES
(16, 'about us', 'At CookBook,There are a lot of very good food writers, such as Julia Child, who could combine explaining a recipe along with certain turns that make the recipe hers. That was her voice. However blogs are more conversational than books and rules are a little more relaxed, so don’t be afraid to be more personal or do things different. If you stay in your comfort zone you’ll never change or proceed forward. Find a specific angle rather than describing just what’s on the plate. We all know soup is hot, rich, creamy, liquid, delicious, warming, comforting, and good with a dollop of crème fraîche. (And if yours isn’t, you might not want to be sharing it.) Think about what it is about that soup that will make it your story and why you like it so much, rather than the obvious.\r\n\r\nWriting is as much about editing as it is about merely writing a bunch of stuff down. People like Matt Armendariz (who has a traditional media background, where word count matters) and Heidi Swanson, keep it short, concise, and neat, and don’t beat around the bush. I don’t know how much editing they do, but I’ve spent hours writing whole paragraphs, then re-read them the next day and deleted them. (You might think there’s a lot of endless rambling here on the site, but believe me, you should see what gets tossed into my trash folder before I publish it.)\r\n\r\n“I try to leave out the parts that people skip.” –Elmore Leonard.\r\n', '20201213071211_7084266.jpg', '20201222161206_4471351.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `addpost`
--

CREATE TABLE `addpost` (
  `id` int(11) UNSIGNED NOT NULL,
  `recipename` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `ingredients` text NOT NULL,
  `descriptions` text NOT NULL,
  `recipepicture` text NOT NULL,
  `like_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addpost`
--

INSERT INTO `addpost` (`id`, `recipename`, `username`, `date`, `ingredients`, `descriptions`, `recipepicture`, `like_post`) VALUES
(1, 'Bread Toast', 'Archita', '2019-12-11', 'FOR THE SAVORY:-\r\n1 tbsp. extra-virgin olive oil.\r\n1 lb. ground beef.\r\n2 garlic cloves, minced.\r\n1 tbsp. taco seasoning.\r\nkosher salt.\r\n1 (15-oz.) can refried beans.\r\n1/4 c. water.\r\n1 large bag tortilla chips.\r\n2 c. shredded cheddar.\r\n2 c. Shredded Monterey jack.\r\n1 (15-oz.) can black beans, drained.\r\n1/2 c. pickled onions.\r\nFOR TOPPING:-\r\n1 large tomato, diced.\r\n1 avocado, diced.\r\n1/4 c. thinly sliced green onions.\r\n1/4 c. fresh cilantro leaves (optional).\r\nSour cream, for drizzling.\r\nHot sauce, for drizzling.', 'Preheat oven to 425º and line a large baking sheet with foil. In a large skillet over medium heat, heat oil. Add onion and cook until soft, 5 minutes, then add ground beef and cook until no longer pink, 6 minutes more. Drain fat.\r\nAdd garlic and taco seasoning and season with salt. Cook until meat is well browned and slightly crispy, 5 minutes more. Add refried beans and water to skillet and stir until combined.\r\nAdd half the tortilla chips and top with beef-bean mixture, half the cheese, half the black beans, and half the pickled jalapeños. Repeat one more layer.\r\nBake until cheese is melty, 15 minutes.\r\nScatter with tomato, avocado, green onions, and cilantro. Drizzle with sour cream and hot sauce and serve immediately.', '20201212151228_7690604.gif', 0),
(2, 'Cheesecake', 'Archita', '2018-08-03', 'FOR THE CRUST:-\r\n1/2 c. finely crushed gingersnaps.\r\n2 tbsp. granulated sugar.\r\n5 tbsp. butter, melted.\r\nFOR THE FILLING:-\r\n1 c. heavy cream.\r\n2 (8-oz.) blocks cream cheese, softened.\r\n1 (15-oz.) can pumpkin puree.\r\n1 c. powdered sugar.\r\n1 tsp. pure vanilla extract.\r\n1 tsp. cinnamon.\r\n1/2 tsp. ground nutmeg.\r\n1/4 tsp. kosher salt.\r\nFOR TOPPING:-\r\nWhipped cream.\r\nRoughly crushed gingersnaps.', 'In a medium bowl, combine crushed gingersnaps, sugar, and melted butter until mixture resembles wet sand. Pour into a 8” springform pan and pat into an even layer.\r\nIn a medium bowl, beat heavy cream to stiff peaks.\r\nIn a large bowl beat cream cheese until light and fluffy. Add pumpkin puree and beat until no lumps remain. Add powdered sugar and beat again until no lumps remain. Add vanilla, cinnamon, nutmeg, and salt and beat until incorporated. Add whipped cream and fold in until just combined.Pour batter over crust and smooth top with an offset spatula.\r\nRefrigerate until set, at least 4 hours and up to overnight.\r\nServe with whipped cream and crushed gingersnaps.', '20201212151258_7091633.jpg', 0),
(5, 'Chocolate Cake', 'LAKEAURORAL ', '2020-01-11', '1 c. packed light brown sugar.\r\n1/2 c. Dutch-processed cocoa powder.\r\n1 tbsp. molasses.\r\n1/2 tsp. espresso powder.\r\n5 tbsp. butter.\r\n1 tbsp. vegetable oil.\r\n2 eggs, separated.\r\n1/3 c. all-purpose flour.\r\n1/2 tsp. kosher salt.\r\n2 tbsp. raspberry jam.\r\n1/4 tsp. water.', 'Preheat oven to 325 and line an 8\"-x-8\" baking pan with parchment paper. In a large bowl, combine sugar, cocoa powder, molasses, and espresso powder.\r\nIn a small saucepan over medium heat, combine butter and oil. Heat until butter is completely melted and bubbling. Pour hot butter mixture over sugar mixture and stir to combine. Stir in egg yolks one at a time until completely incorporated.\r\nIn a medium bowl, combine egg whites with flour and salt. Whisk until completely smooth. Stir egg white mixture into chocolate mixture until smooth, then transfer to prepared baking pan and smooth top.\r\nIn a medium bowl, combine egg whites with flour and salt. Whisk until completely smooth. Stir egg white mixture into chocolate mixture until smooth, then transfer to prepared baking pan and smooth top.', '20201212151240_4442682.jpg', 0),
(7, 'Instant Pot Pork', 'LENAABRAHAM', '2017-12-06', '1 lb. pork tenderloin, sliced in half crosswise Kosher salt.\r\nFreshly ground black pepper.\r\n1 tbsp. extra-virgin olive oil.\r\n2 tsp. chili powder.\r\n1/2 tsp. ground cumin.\r\n1/4 tsp. garlic powder.', 'Season pork with salt and pepper. Turn Instant Pot to Sauté setting and heat oil. When oil is shimmering, add pork. Sear until golden all over, about 6 minutes. Remove pork to a plate. Season all over with chili powder, cumin, and garlic powder.\r\nPlace trivet in Instant Pot, add 1 cup of water, and arrange pork on trivet. Lock lid and set to Pressure Cook on high for 5 minutes.\r\nAllow pressure to naturally release for 1 minute, then quick-release remaining pressure.\r\nLet meat rest for 5 minutes before slicing against the grain.', '20201212151239_6927603.jpeg', 12),
(8, 'Pasta alla Norma', 'LENAABRAHAM', '2017-08-03', '1 lb. pasta.\r\n3 tbsp. butter, divided.\r\n1 lb. shrimp, peeled and deveined, tails removed.\r\nkosher salt.\r\nFreshly ground black pepper.\r\n2 cloves garlic, minced.\r\n2 tbsp. all-purpose flour.\r\n1 c. heavy cream.\r\n1/2 c. whole milk.\r\n1 egg yolk.\r\n1 c. freshly grated Parmesan, plus more for garnish.\r\n1 tbsp. Chopped parsley, for garnish.', 'Cook pasta according to the instructions on box, reserving a cup of pasta water to thicken the sauce, if needed.\r\nIn a large skillet over medium heat, heat 1 tablespoon butter until melted. Add shrimp, season with salt and pepper and cook until pink and completely opaque, 2 to 3 minutes per side. Remove shrimp from skillet and set aside.\r\nInto the pan, add remaining 2 tablespoons butter and garlic. Cook until the garlic becomes fragrant, about 1 minute. Whisk in flour and cook until no longer raw, 2 minutes. Stir in heavy cream and milk, then whisk in egg yolk. Bring to a low simmer and whisk in parmesan. When cheese is melted and sauce has thickened slightly, add cooked pasta and shrimp, tossing to combine. Season with salt and pepper.\r\nGarnish with more parmesan and parsley.', '20201212151204_1244198.jpg', 2),
(9, 'Cheese Momo', 'Archita', '2018-10-18', 'For The Dough:-\r\n120 gms refined flour.\r\n1/4 tsp baking powder.\r\n1/2 tsp salt water (for kneading).\r\nFor The Chicken Filling:-\r\n1 cup chicken (minced).\r\n1/2 cup onions, finely chopped.\r\n1/4 tsp black pepper powder.\r\n1 tbsp oil.\r\n1/2 tsp garlic paste.\r\n1/2 tsp soya sauce.\r\nSalt.\r\n1/4 tsp vinegar.\r\nFor The Vegetarian Filling:-\r\n1 cup cabbage and carrots, grated.\r\n2 tbsp onions , finely chopped.\r\n1/2 tsp garlic, finely chopped.\r\n1 tbsp oil.\r\n1/4 tsp vinegar.\r\n1/2 tsp soya sauce.\r\nTo taste salt.\r\nTo taste pepper.\r\n1 tbsp cornflour.\r\nFor Chilli Sauce:-\r\n25 gram garlic, peeled.\r\n6 gms whole red chillies.\r\n3 tbsp vinegar.\r\n1 tbsp oil.\r\nTo taste salt.\r\nTo taste sugar.', 'Prepare Chilli Sauce:Cut the red chillies and soak them in water for about two hours. Cut up into small pieces and soak in the vinegar for one to two hours. Put all the ingredients in a mixie and grind to a smooth paste.\r\nPrepare Momos:In a bowl mix all the ingredients of the chicken or vegetable filling, according to your choice. Keep aside.\r\nKnead the refined flour, baking powder and salt together into firm dough. Cover and keep aside for 30 minutes.\r\nRoll the dough into very thin 4-5 inch rounds.\r\nTake each round piece and place some filling in the center.\r\nBring the edges together and twist to seal it.\r\nSteam in a steamer for about 10 minutes and serve hot with chilly sauce.', '20201222181235_9262311.jpg', 8),
(10, 'Italian Soup', 'LENAABRAHAM', '2020-03-24', '2 tbsp. extra-virgin olive oil.\r\n1 small yellow onion, chopped.\r\n2 medium carrots, peeled and chopped.\r\n2 stalks celery, chopped.\r\n2 cloves garlic, minced.\r\n2 tsp. fresh thyme leaves.\r\n2 bay leaves (optional).\r\n2 lb. boneless skinless chicken breasts (about 4).\r\nKosher salt.\r\nFreshly ground black pepper.\r\n4 c. low-sodium chicken broth.\r\n4 c. cold water.\r\n8 oz. egg.\r\nPinch crushed red pepper flakes (optional).\r\nJuice of 1/4 lemon (optional).\r\n2 tbsp. freshly chopped parsley, for garnish.', 'Turn Instant Pot to Sauté setting. Heat oil, then add onion, carrots, and celery. Cook, stirring occasionally, until vegetables are slightly tender, 6 to 8 minutes. Add garlic and thyme and cook until fragrant, 1 minute. Add bay leaves if using, then add chicken breasts and season generously with salt and pepper. Add broth and water and close lid. Set Instant Pot to Soup setting and set timer for 7 minutes.\r\nWhen cooking is complete and air has been naturally released from Instant Pot, carefully remove lid and use tongs to remove chicken breasts onto a plate or cutting board. Using two forks, shred chicken, then return chicken to pot. Remove bay leaves and add egg. Return Instant Pot to Sauté setting and cook, uncovered, until noodles are cooked through, 4 to 6 minutes.\r\nTurn off Instant Pot and stir in pepper flakes and lemon juice if using. Ladle into bowls and top with parsley and more black pepper before serving.', '20201212151246_2169525.jpg', 9),
(11, 'Gluten-Stuffing', 'LENAABRAHAM', '2016-11-23', 'FOR THE CRUST:-\r\n2 loaves gluten free bread (each about 12oz).\r\n8 tbsp. butter, divided, plus more for buttering baking dish.\r\n2 onions, chopped.\r\n4 stalks celery, thinly sliced.\r\n2 cloves garlic, minced.\r\n1/2 tbsp. freshly chopped sage.\r\n1/2 tbsp. fresh thyme leaves.\r\n1/2 tbsp. freshly chopped rosemary.\r\nKosher salt.\r\nFreshly ground black pepper.\r\n1/4 c. freshly chopped parsley, plus more for garnish.\r\n2 c. gluten free chicken or vegetable broth.', 'Tear or slice bread into cubes and leave out overnight to dry out. (Alternately, place bread on baking sheets and bake at 200º for 20 minutes).\r\nPreheat oven to 350º and butter a 9\"-1x-3\" baking dish. In a large skillet over medium heat, melt 3 tablespoons butter. Add onion and celery and cook until soft and fragrant, 8 minutes. Stir in garlic, sage, thyme, and rosemary and cook until fragrant, 1 minute more. Season with salt and pepper.\r\nStir in remaining 5 tablespoons butter and parsley.\r\nPlace bread in a large bowl and add skillet mixture and chicken broth.\r\nTransfer mixture to prepared baking dish and cover with foil. Bake until cooked through, 45 minutes, then remove foil and cook until bread is golden, 15 minutes more.\r\nTo assemble: Garnish with parsley and serve.', '20201212151211_6162706.jpg', 7),
(12, 'Drumsticks', 'Ahona', '2017-06-16', '2 lb. chicken pieces.\r\nKosher salt.\r\nFreshly ground black pepper.\r\n1/3 c. all-purpose flour.\r\n2 large eggs, beaten.\r\n1 (8.5-oz.) bag Flamin\' Hot Cheetos, crushed.\r\n1/4 c. hot sauce.\r\n2 tbsp. honey.\r\n4 tbsp. butter.\r\n1/4 c. buttermilk.\r\n2 tbsp. mayonnaise.\r\n3 tbsp. sour cream.\r\n2 tsp. freshly chopped dill.\r\n1/4 tsp. onion powder.\r\nLarge pinch cayenne pepper.\r\n1/4 c. finely crumbled blue cheese.\r\nCelery sticks, for serving.', 'Preheat oven to 425°. Season chicken wings with salt and pepper, then dredge in flour. Next, dip wings in egg, and then in Cheetos crumbs.\r\nArrange chicken in an even layer on a large baking sheet and bake for 18 to 20 minutes, or until chicken is cooked through.\r\nMeanwhile, in a small bowl combine hot sauce, honey, and butter. Microwave, whisking every 15 seconds until butter is melted and mixture is combined.\r\nPour hot sauce mixture over wings and arrange on platter.\r\nIn a medium bowl, whisk together buttermilk, mayonnaise, sour cream, dill, onion powder, garlic powder, cayenne. Stir in blue cheese.\r\nServe wings hot, with dressing and celery sticks for dipping.', '20201214101236_7145673.jpg', 8),
(13, 'Cooker Pot Roast', 'LENAABRAHAM', '2018-12-15', 'FOR CARAMELIZED ONIONS:-\r\n2 tbsp. extra-virgin olive oil.\r\n1 large onion, halved and thinly sliced.\r\nKosher salt.\r\nFOR POPPY-BUTTER TOPPING:-\r\n4 tbsp. melted butter.\r\n1 tbsp. poppy seeds.\r\n2 cloves garlic, minced.\r\n1/2 tsp. Worcestershire sauce.\r\nFOR SLIDERS:-\r\n12 mini Hawaiian rolls.\r\n1/4 c. mayonnaise.\r\n1/4 c. honey mustard.\r\n2 lb. deli sliced ham.\r\n1 lb. sliced Swiss cheese.', 'Make caramelized onions: In a large skillet over medium, heat oil. Add onions and season with salt. Reduce heat to medium-low and cook, stirring occasionally until onions are caramelized and jammy, about 25 minutes. Let cool slightly.\r\nPreheat oven to 350°. Make poppy butter topping: In a medium bowl, combine butter, poppy seeds, garlic, and Worcestershire.\r\nMake sliders: Split slider buns in half horizontally and place bottom halves on baking sheet. Spread mayo in an even layer on bottom layer of slider buns, then top with half the ham. Top with Swiss, then remaining ham. Spread ham with honey mustard and onions and close sandwiches. Brush poppyseed dressing on tops of buns until all buns are coated.\r\nBake until cheese is melty and buns are golden, 10 to 12 minutes.', '20201214081213_2666566.jpg', 0),
(14, 'Tofu Stir Fried', 'LENAABRAHAM', '2019-10-10', 'FOR TOFU:-\r\n1 (14-oz.) block extra-firm tofu, fresh or frozen and defrosted.\r\n1 tbsp. low-sodium soy sauce.\r\n1 tbsp. sesame oil.\r\n1/2 tsp. freshly ground black pepper.\r\n2 tbsp. cornstarch.\r\nFOR STIR FRY:-\r\n3 tbsp. extra-virgin olive oil, divided Kosher salt.\r\n3 cloves garlic, minced.\r\n1 tbsp. freshly minced ginger.\r\n8 oz. string beans, trimmed.\r\n2 small carrots, sliced.\r\n1 small head broccoli, cut into florets.\r\n1 red bell pepper, seeded and sliced.\r\n2 green onions, thinly sliced.\r\nFOR SAUCE:-\r\n2 tbsp. low-sodium soy sauce.\r\n2 tsp. sesame oil.\r\n1/4 c. water.\r\n2 tbsp. packed brown sugar.\r\n2 tsp. cornstarch.', 'In a medium pot of salted boiling water, simmer tofu for 2 minutes. If using frozen tofu, simmer until completely defrosted. Remove from heat and let drain in a colander lined with paper towels. When cool enough to handle, gently squeeze and pat dry. If using frozen tofu, use firmer pressure to squeeze out water.\r\nCut tofu into bite-sized pieces, then toss together with soy sauce, sesame oil, and black pepper in a medium bowl. Once liquids are absorbed, toss tofu with cornstarch.\r\nIn a large skillet over medium-high heat, heat 2 tablespoons oil. Add tofu and let cook until golden on all sides, turning occasionally, 7 to 8 minutes. Season with salt and pepper, and remove from skillet and set aside.\r\nTo assemble: Heat remaining 1 tablespoon oil and add in garlic and ginger and cook until fragrant, 1 minute. Stir in string beans, carrots, broccoli, red pepper, and green onions. Cook until tender, about 8 to 10 minutes. Season with salt and pepper.\r\nIn a small bowl, stir together soy sauce, sesame oil, water, brown sugar, and cornstarch. Return tofu to skillet and add sauce mixture to pan. Stir and cook until slightly thickened, 2 minutes.', '20201214081233_6695627.jpg', 1),
(15, 'Delicious Tacos', 'Ahona', '2020-02-11', 'FOR THE DOUGH:-\r\nCooking spray.\r\n1/4 c. lukewarm water.\r\n1 tbsp. granulated sugar.\r\n(1/4-oz.) packet active dry yeast (2¼ tsp).\r\n3 c. all-purpose flour.\r\n2 tsp. kosher salt.\r\n1/4 c. extra-virgin olive oil.\r\nFOR THE FILLING:-\r\nExtra-virgin olive oil, as needed.\r\n1/4 c. cornmeal, divided.\r\n1 c. marinara, divided.\r\n16 oz. fresh mozzarella, thinly sliced, divided.\r\nFresh basil leaves.\r\nPinch red pepper flakes.', 'Make crust:Grease a large bowl with cooking spray. In a small bowl add water and sugar and stir to dissolve, then sprinkle over yeast and let sit until frothy, about 8 minutes.\r\nIn another large bowl, add flour, salt, and oil. Pour in yeast mixture, then mix with a wooden spoon until everything is combined and a shaggy dough begins to form. Knead against sides of bowl until dough starts to come together, then turn onto your work surface and knead, adding a pinch of flour if needed, until it feels elastic and only slightly tacky, 5 minutes. Form into a tight ball, place into prepared bowl, and cover with a clean dish towel.Let rise in a warm spot in your kitchen until doubled in size, about 1 hour and 30 minutes.\r\nMake filling:Gently punch down dough, then divide in 2, and roll into balls. At this point, you can freeze one, or make two pizzas. Let dough balls rest as you preheat oven to 500° and grease a large baking sheet with olive oil. Sprinkle all over with 2 tablespoons cornmeal.\r\nOn your work surface, gently flatten one ball of dough and roll with a rolling pin (or stretch with your hands) until about 12” in diameter (as thin as you can). Carefully transfer to prepared baking sheet and brush dough all over with oil. Then, add your 1/2 cup sauce to middle of dough and spread outwards with a spoon or ladle, leaving about 1” for the crust. Top with half the slices of mozzarella. Bake until crust is golden and cheese is melty, about 15 minutes.\r\nTo assemble:Top with fresh basil leaves, a drizzle of olive oil, and red pepper flakes.\r\nRepeat with remaining dough and toppings for second taco.', '20201224131232_3039973.jpg', 0),
(77, 'Chicken', 'Ahona', '2020-12-25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '20201224131239_1947833.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) UNSIGNED NOT NULL,
  `authorname` varchar(255) NOT NULL,
  `authordescription` text NOT NULL,
  `authorpicture` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `authorname`, `authordescription`, `authorpicture`, `username`, `email`, `password`, `status`) VALUES
(60, 'Ahona Dey', 'Hi, I am Ahona.', '20201224131248_275172.jpg', 'Ahona', 'architadey57@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `foodfusion`
--

CREATE TABLE `foodfusion` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `paragraph` varchar(255) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodfusion`
--

INSERT INTO `foodfusion` (`id`, `title`, `paragraph`, `picture`) VALUES
(20, 'test1', 'test1', '20201208061222_2336325.jpg'),
(21, 'test3', 'test3', ''),
(22, 'test4', 'test4', ''),
(23, 'test', 'hi', '20201207181247_2987343.jpg'),
(24, 'test1', 'gi', '20201207181218_6588676.jpg'),
(56, 'test19', 'test20', '20201208081229_4501964.jpg'),
(57, 'test19', 'hi', '20201208081215_4074508.jpg'),
(58, 'test1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208081230_7928604.jpg'),
(59, 'test19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208081213_7576789.jpg'),
(60, 'test3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208081251_8490908.jpg'),
(61, 'test4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208081216_6326566.jpg'),
(62, 'test19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208081232_4115508.jpg'),
(63, 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208081215_8075251.jpg'),
(64, 'test19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091223_6732586.jpg'),
(65, 'test19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201210081254_5517039.jpg'),
(66, 'test3Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lore', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201210081221_1201784.jpg'),
(67, 'test3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201210081251_6227992.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) UNSIGNED NOT NULL,
  `headline` varchar(255) NOT NULL,
  `paragraph` varchar(255) NOT NULL,
  `buttoncaption` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `background` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `headline`, `paragraph`, `buttoncaption`, `logo`, `background`) VALUES
(14, 'recipe book', 'Good food healthy life.\r\n', 'SIGN UP', '20201224151218_1414018.jpg', '20201224151218_7829588.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `background` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `address`, `phone`, `email`, `background`) VALUES
(15, '3100 Noyasarak Road.\r\nBangladesh, Sylhet\r\n5600.\r\n', '+8801725053557.', 'architadey57@gmail.com.', '20201222161200_9678607.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `fullname`, `email`, `message`) VALUES
(9, 'test2', 'architadey57@gmail.com', 'view 32'),
(10, 'test2', 'architadey57@gmail.com', 'n'),
(11, 'test2', 'architadey57@gmail.com', 'view'),
(13, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(14, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(15, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(16, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(17, 'test21', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(18, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(19, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(20, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(21, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(22, 'Archita Dey', 'architadey57@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su'),
(24, 'Archita Dey', 'architadey57@gmail.com', 'qwer'),
(25, 'Archita Dey', 'architadey57@gmail.com', 'hi'),
(26, 'Archita Dey', 'architadey57@gmail.com', 'hi'),
(27, 'Archita Dey', 'test@test.com', 'hlw'),
(28, 'Archita Dey', 'architadey57@gmail.com', 'hlw'),
(29, 'Archita Dey', 'architadey57@gmail.com', 'hlw!\r\nhhu'),
(30, 'Archita Dey', 'architadey57@gmail.com', 'piko'),
(31, 'test21', 'test@test.com', 'ok'),
(32, 'Archita Dey', 'architadey57@gmail.com', 'go'),
(33, 'Archita Dey', 'architadey57@gmail.com', 'joo'),
(34, 'Archita Dey', 'architadey57@gmail.com', 'ok go'),
(35, 'Archita Dey', 'architadey57@gmail.com', 'ooo'),
(36, 'Archita Dey', 'test@test.com', 'tt'),
(37, 'Archita Dey', 'architadey57@gmail.com', 'hlwww!'),
(38, 'Archita Dey', 'architadey57@gmail.com', 'hi'),
(40, 'Archita Dey', 'architadey57@gmail.com', 'hi'),
(41, 'Archita Dey', 'architadey57@gmail.com', 'okay...'),
(42, 'Archita Dey', 'architadey57@gmail.com', 'ho'),
(43, 'Lina', 'architadey57@gmail.com', 'hi...I am lina.');

-- --------------------------------------------------------

--
-- Table structure for table `ourteam`
--

CREATE TABLE `ourteam` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `positiontitle` varchar(255) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ourteam`
--

INSERT INTO `ourteam` (`id`, `name`, `positiontitle`, `picture`) VALUES
(20, 'Paul Deo ', 'ux designer', '20201214101257_9524522.jpg'),
(21, 'Mariana', ' Web Designer', '20201214101216_3958244.jpg'),
(22, 'Emely ', 'UI Designer', '20201215081200_4813306.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `popularstories`
--

CREATE TABLE `popularstories` (
  `id` int(11) UNSIGNED NOT NULL,
  `paragraph` varchar(255) NOT NULL,
  `background` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `popularstories`
--

INSERT INTO `popularstories` (`id`, `paragraph`, `background`) VALUES
(1, 'test 19', ''),
(2, 'test 21', ''),
(5, 'test 3', ''),
(7, 'hi', '20201207061201_568972.jpg'),
(8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091223_7570161.gif'),
(9, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091232_95324.jpg'),
(10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091248_8304777.jpg'),
(11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091204_4271595.jpg'),
(12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091213_7198603.jpg'),
(13, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091223_6263566.jpg'),
(14, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091245_901574.jpg'),
(15, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091257_3348601.jpg'),
(16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091214_3634988.jpg'),
(17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '20201208091229_9993253.jpg'),
(18, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '20201209071237_9841126.jpg'),
(19, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '20201209071253_4592231.jpg'),
(20, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '20201209071213_4500212.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `password`, `status`) VALUES
(1, 'Archita', 'a', 'a', '827ccb0eea8a706c4c34a16891f84e7b', 'superadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addpost`
--
ALTER TABLE `addpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodfusion`
--
ALTER TABLE `foodfusion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourteam`
--
ALTER TABLE `ourteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popularstories`
--
ALTER TABLE `popularstories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `addpost`
--
ALTER TABLE `addpost`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `foodfusion`
--
ALTER TABLE `foodfusion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ourteam`
--
ALTER TABLE `ourteam`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `popularstories`
--
ALTER TABLE `popularstories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cidb\",\"table\":\"author\"},{\"db\":\"cidb\",\"table\":\"addpost\"},{\"db\":\"cidb\",\"table\":\"user\"},{\"db\":\"cidb\",\"table\":\"message\"},{\"db\":\"cidb\",\"table\":\"foodfusion\"},{\"db\":\"cidb\",\"table\":\"ourteam\"},{\"db\":\"cidb\",\"table\":\"information\"},{\"db\":\"cidb\",\"table\":\"about\"},{\"db\":\"cidb\",\"table\":\"header\"},{\"db\":\"cidb\",\"table\":\"editpost\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'cidb', 'addpost', '{\"sorted_col\":\"`addpost`.`recipename` ASC\"}', '2020-12-11 19:32:20'),
('root', 'cidb', 'author', '{\"sorted_col\":\"`author`.`authorname`  ASC\"}', '2020-12-15 05:54:21'),
('root', 'cidb', 'header', '{\"sorted_col\":\"`headline`  ASC\"}', '2020-12-11 17:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-24 14:41:01', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
