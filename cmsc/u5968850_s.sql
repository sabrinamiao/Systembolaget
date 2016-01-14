-- phpMyAdmin SQL Dump
-- version 2.11.8.1
-- http://www.phpmyadmin.net
--
-- Host: u5968850.fsdata.se.mysql.fsdata.se
-- Generation Time: Dec 01, 2015 at 02:16 PM
-- Server version: 5.5.30
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u5968850_s`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `publicationDate` date NOT NULL,
  `categoryId` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` mediumtext NOT NULL,
  `imageExtension` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `publicationDate`, `categoryId`, `title`, `summary`, `content`, `imageExtension`) VALUES
(1, '2015-11-30', 4, 'Så säger folket.', 'Så säger folket om svensk alkoholpolitik och Systembolaget.', 'Allmänhetens stöd för Systembolagets ensamrätt till försäljning av starköl, vin och sprit har aldrig varit högre - tre av fyra vill behålla den. Och kunderna har aldrig varit nöjdare med Systembolaget. <br><br>\r\n\r\nOpinionsindex, OPI, är en löpande undersökning där TNS Sifo på uppdrag av Systembolaget mäter allmänhetens stöd för Systembolagets ensamrätt.<br><br>\r\n\r\n2014 visade på det starkaste stödet sedan mätningarna startade i början av 2000-talet. 74 procent gav Systembolaget och ensamrätten sitt stöd.\r\n', '.png'),
(2, '2015-11-30', 3, 'Så dricker tonåringar', 'Dagens tonåringar dricker mindre än någonsin. Men varifrån kommer alkoholen, vilka fixar den och vad dricker de helst?', 'Det är rekordlåga nivåer på tonåringarnas alkoholintag. De dricker inte lika ofta, dricker mindre och blir inte lika ofta berusade. Fler än någonsin dricker inte alls. Det visar Skolelevers drogvanor, en årlig undersökning som frågar niondeklassare och gymnasieelever i årskurs två om hur de dricker.<br><br>\r\n\r\nMindre än 50 procent av niondeklassarna drack alkohol någon gång 2014. För gymnasieeleverna var siffran under 80 procent. Tonårsdrickandet har gått ned både jämfört med tidigare generationer och under de senaste åren.\r\n', '.jpg'),
(3, '2015-11-30', 2, 'Dryck till ost', 'Ostar har olika smaker och konsistenser. Vissa är salta, mögliga och har mjuk gräddig smak. Andra är hårda eller är mer mjöliga i strukturen. Här tipsar vi om passande drycker till olika ostar. <br>', 'Öl till ost<br><br>\r\n•Till färskost passar syrliga öl som gueuze eller veteöl.<br>\r\n•Till hårdostar går ale med måttlig beska bra till, exempelvis IPA, APA eller en mörk ale i belgisk stil, exempelvis trappist- eller klosteröl.<br>\r\n•Till vitmögelost passar ett veteöl, ljus och syrlig ale i belgisk stil eller ljus lager.<br>\r\n•Till kittostar passar en ale i belgisk stil med lite sötma.<br>\r\n•Till syrliga getostar passar en syrlig gueuze eller en ljus veteöl.<br>\r\n•Till grönmögelostar kan du gärna prova en fruktöl med sötma eller ett barley wine med sötma.<br><br>\r\n\r\nVin till ost<br><br>\r\n•Till färskost fungerar ett vitt från smaktypen friskt & fruktigt, eller ett mousserande.<br>\r\n•Till hårdostar passar vita viner utan sötma från smaktypen fylligt & smakrikt, eller röda av amaronetyp från kryddigt & mustigt eller ett rött fruktigt & smakrikt.<br>\r\n•Till mild vitmögelost kan du välja ett rött mjukt & bärigt eller ett vitt från friskt & fruktigt. Mer smakrika vitmögelostar passar ett vitt från smaktyperna druvigt & blommigt eller fylligt & smakrikt. <br>\r\n•Till kittostar går en fyllig och blommig gewurztraminer bäst, leta i smaktypen druvigt & blommigt.<br>\r\n•Till syrliga getostar passar en frisk sauvignon blanc som hand i handsken, du hittar dessa viner vanligtvis i smaktypen friskt & fruktigt.<br>\r\n•Till smakrika och salta grönmögelostar behövs det sötma, vita eller ett rött portvin.<br><br>\r\n\r\nCider till ost<br><br>\r\n\r\nFransk cider, som brukar har mogna smaker och lite "stallkaraktär", går bra till kittostar och hårdostar. Den brittiska stilen med mer ren äppelsmak fungerar bäst med milda vitmögelostar.\r\n<br><br>\r\nAlkoholfritt till ost<br><br>\r\n\r\nVåra alkoholfria drycker går utmärkt till olika ostar, till exempel cider och äppelmust till kittostar, hårdostar eller vitmögelostar. Veteöl går bra till getostar och färskostar och till en smakrik grönmögelost fungerar en söt äppelmust.<br><br>\r\n', '.jpg'),
(4, '2015-11-30', 1, 'Ölets historia.', 'Öl är den äldsta av alla alkoholdrycker, eftersom den förmodligen är jämnårig med spannmålsodlingen. <br>', 'Först spannmål sedan öl<br><br>\r\n\r\nFör 10 000-15 000 år sen började delar av jordens befolkning bli bofast och odla spannmål. En av de tidigaste grödorna som odlades var korn. Kornbröd blir hårda och platta, eftersom korn är fattigt på gluten. Därför är det rimligt att anta att kornbrödet blöttes upp i vatten. När brödet smulades ner i vattnet, kunde det komma att jäsa lite grann. Den jästa korngröten, eller kornsoppan, var säkerligen ett viktigt livsmedel, närande och rik på vitaminer.<br><br>\r\n\r\nFörmodligen utvecklades ölkonsten parallellt på flera håll i världen - oberoende av varandra. Troligtvis framställdes öl i det forntida Kina och någon sorts majsöl har nog bryggts av de indianska högkulturerna.<br><br>\r\n\r\nHistoriska tecken i lerkruka<br><br>\r\n\r\nMen de äldsta säkra spåren av öl kommer från skärvorna av en 6 000 år gammal sumerisk lerkruka som hittats i nuvarande Iran. I sprickor av kannan fanns spår av ölsten - kalciumoxalat. Man har också hittat babyloniska stentavlor från år 3 000 f Kr med inristade bestämmelser om öltillverkning, priser och försäljningstillstånd.<br><br>\r\n\r\nKonsten att brygga öl spred sig så småningom västerut till Sydeuropa. Där föredrog man emellertid vin, medan ölet snabbt blev populärt i de germanska och keltiska kulturerna i Central- och Västeuropa, vilket sammanfaller med de naturliga odlingsgränserna för olika kulturväxter.<br><br>\r\n\r\nÖlets smak utvecklas<br><br>\r\n\r\nExakt när humle började användas vid ölframställning vet vi inte men de tidigaste omnämningarna av regelrätta humlegårdar hittar man kring brytningen mellan 700 och 800-talet e Kr. Man hade kryddat öl tidigare, men humlens beska och antiseptiska egenskaper gjorde säkert ölet både godare och bättre. Humlen användes också som medicin eftersom den ansågs ha en lugnande inverkan.<br><br>\r\n\r\nJäst var vid den här tiden ett okänt begrepp. Från början fick all vört jäsa spontant, utan tillsats av jäst. Efter hand jäste vissa öl bättre och blev godare än andra. Då hällde man lite av det ölet i nästa brygd, som blev lika bra. Utan att veta om det hade man börjat renodla jästen och det första varm/överjästa ölet kunde bryggas.<br><br>\r\n\r\nEn annan bryggare kanske rörde i den jäsande vörten med en stor träslev. Jäst fastnade på sleven som då kunde tillskrivas diverse magiska egenskaper genom att snabbt få fart på nästa brygd.<br><br>\r\n\r\nErfarenheterna samlades på varandra och i det medeltida Europa blev ölbryggning en viktig näring i de framväxande städerna.<br><br>\r\n\r\nMedeltida öl<br><br>\r\n\r\nVad kan man säga om detta tidiga öl? Säkert var det mycket grumligt, en del rödaktiga andra svarta. Malten torkades nog över öppen eld, och gav ölet en väldigt rökig smak. Alkoholhalten var låg, bara 2-3 %. I gengäld drack man desto mer - 3-5 liter om dagen - eftersom maten i regel var mycket salt.<br><br>\r\n\r\nÖlet var ibland kryddat med humle eller någon annan krydda, ibland okryddat. I norra Europa bryggdes mjöd av honung och blandningar av öl och mjöd var säkert inte ovanliga. Eftersom vattnet i de medeltida städerna ofta var förorenat, blev det relativt "nyttiga" ölet desto viktigare.<br><br>\r\n\r\nI Bayern vid senare delen av medeltiden upptäckte man att ölet höll bättre och smakade renare om man lagrade öltunnorna kallt, i grottor. En annan typ av jäsning skedde i svalare miljö, det som idag kallas för kall/underjäsning.<br><br>\r\n\r\nFrån hantverk till industri<br><br>\r\n\r\nDet var dock inte förrän på 1800-talet som kall/underjäsningen – genom lagerölet – fick sitt stora genombrott. I takt med den industriella revolutionen i början på 1800-talet, blev ölbryggningen alltmer industriell, speciellt i Bayern, Böhmen och Österrike. Ångmaskiner, kylteknik och moderna mätinstrument tog plats i bryggerierna.<br><br>\r\n\r\nDet mörka münchenerölet spred sig över Europa och i Sverige började bryggarna tidigt anamma vad de kallade den "bayerska" stilen – ett ord som fortfarande lever kvar. Egentligen var det bara på de brittiska öarna som den överjästa ölen, ale och porter, fortfarande dominerade, men även där skedde moderniseringar. Speciellt porterbryggningen i London blev storskalig.<br><br>\r\n\r\nLjus öl på frammarsch<br><br>\r\n\r\n1841 lyckades österrikaren Anton Dreher göra ett bärnstensfärgat öl, det så kallade wienerölet. Året därpå bryggdes i den böhmiska staden Plzen, eller Pilsen, det första ljusa lagerölet – pilsner. I stora delar av Europa blev pilsnern under andra hälften av 1800-talet den viktigaste öltypen. Till Sverige kom pilsnern 1871.<br><br>\r\n\r\nDet hade en ren, frisk karaktär och vacker färg. Och eftersom glas började bli ett vanligt dryckeskärl är det en trolig förklaring till att ljusa, klara öl favoriserades. Vem ville då dricka brungrumlig sörja?<br><br>\r\n\r\nLouis Pasteur upptäckte vid mitten av 1800-talet att jästen i själva verket är mikroorganismer som äter socker och producerar alkohol, koldioxid och smakämnen. Tack vare Pasteurs rön kunde chefskemisten på Carlsbergs laboratorium, Emil Christian Hansen, år 1883 isolera och renodla lagerjästen. Detta var oerhört betydelsefullt: att få kontroll på jäsningen. På så vis kunde ölet på allvar bli en industriprodukt.<br><br>\r\n\r\nÖl i dag<br><br>\r\n\r\nDen tekniska utvecklingen har fortsatt och kvaliteten har blivit allt jämnare och stabilare. Ljus lager med lagom beska har blivit norm och likriktningen är påfallande, speciellt utanför de stora bryggarnationerna Tyskland, Tjeckien, Belgien och Storbritannien. Själva varumärket är numera de största bryggeriernas viktigaste resurs.<br><br>\r\n\r\nMen samtidigt märks på senare år ett ökat intresse för ölkultur. Alltfler upptäcker ölvärldens artrikedom. Organisationer som främjar god ölkultur har dykt upp. Hembryggning har blivit en mindre folkrörelse och diverse ölmässor lockar många besökare. Öl och mat uppmärksammas alltmer, såväl i maten som till den.<br><br>\r\n\r\nMikrobryggerier<br><br>\r\n\r\nMikro- eller hantverksbryggerier är ett internationellt fenomen. Under 1900-talets senare hälft bildades en lång rad organisationer och företag som motreaktion till de stora bryggeriernas dominans. I dagens Europa och Nordamerika domineras ölindustrin fortfarande av några giganter, men det finns också en spännande mångfald. Bland de klassiska ölländerna är Tyskland ett undantag, där det aldrig funnits landsomfattande bryggerier som dominerat marknaden utan lokala traditioner alltid varit starka.\r\n', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Fakta & nyheter', 'Fakta om dryck | Nyheter i sortimentet \r\n '),
(2, 'Vad passar till?', 'Kombinera dryck och mat '),
(3, 'Om alkohol', 'Så dricker vi i Sverige .'),
(4, 'Vårt uppdrag', 'Därför finns Systembolaget.');

-- --------------------------------------------------------

--
-- Table structure for table `Sortiments`
--

CREATE TABLE IF NOT EXISTS `Sortiments` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `Artikelid` varchar(32) NOT NULL,
  `Varnummer` varchar(32) NOT NULL,
  `Namn` varchar(32) NOT NULL,
  `Namn2` varchar(32) NOT NULL,
  `Prisinklmoms` varchar(32) NOT NULL,
  `Pant` varchar(32) NOT NULL,
  `Volymiml` varchar(32) NOT NULL,
  `PrisPerLiter` varchar(32) NOT NULL,
  `Saljstart` varchar(32) NOT NULL,
  `Slutlev` varchar(32) NOT NULL,
  `Varugrupp` varchar(32) NOT NULL,
  `Forpackning` varchar(32) NOT NULL,
  `Forslutning` varchar(32) NOT NULL,
  `Ursprung` varchar(32) NOT NULL,
  `Ursprunglandnamn` varchar(32) NOT NULL,
  `Producent` varchar(32) NOT NULL,
  `Leverantor` varchar(32) NOT NULL,
  `Argang` varchar(32) NOT NULL,
  `Provadargang` varchar(32) NOT NULL,
  `favoriter` int(2) NOT NULL DEFAULT '0',
  `Alkoholhalt` varchar(32) NOT NULL,
  `Sortiment` varchar(32) NOT NULL,
  `Ekologisk` varchar(32) NOT NULL,
  `Koscher` varchar(32) NOT NULL,
  `RavarorBeskrivning` varchar(32) NOT NULL,
  `imageExtension` varchar(255) NOT NULL,
  KEY `nr` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9797502 ;

--
-- Dumping data for table `Sortiments`
--

INSERT INTO `Sortiments` (`id`, `Artikelid`, `Varnummer`, `Namn`, `Namn2`, `Prisinklmoms`, `Pant`, `Volymiml`, `PrisPerLiter`, `Saljstart`, `Slutlev`, `Varugrupp`, `Forpackning`, `Forslutning`, `Ursprung`, `Ursprunglandnamn`, `Producent`, `Leverantor`, `Argang`, `Provadargang`, `favoriter`, `Alkoholhalt`, `Sortiment`, `Ekologisk`, `Koscher`, `RavarorBeskrivning`, `imageExtension`) VALUES
(101, '1', '1', 'Renat', '', '205.00', '', '700.00', '292.86', '1993-10-01', '', 'Okryddad sprit', 'Flaska', '', '', 'Internationellt m?rke', 'Pernod Ricard', 'Pernod Ricard Sweden AB', '', '', 0, '37.50%', 'FS', '0', '0', 'F?rr potatis numera endast s?d.', ''),
(7599701, '1000005', '75997', 'Motzenb?cker Marie', 'Riesling Weissburgunder Sp?tlese', '139.00', '', '750.00', '185.33', '2015-09-01', '', 'Vitt vin', 'Flaska', '', 'Pfalz', 'Tyskland', 'Menger-Krug', 'Terrific Wines AB', '2014', '', 0, '12.00%', 'BS', '0', '0', '', ''),
(7548901, '1000008', '75489', 'Valtellina Superiore', 'Sassella Riserva', '310.00', '', '750.00', '413.33', '2015-09-01', '', 'Rött vin', 'Flaska', '', 'Lombardiet', 'Italien', 'Arpepe', 'Vinoliv Import AB', '2011', '', 1, '13.50%', 'BS', '0', '0', '', ''),
(7420301, '1000053', '74203', 'Landin Pas Petite', 'Petite Sirah Zinfandel', '179.00', '', '750.00', '238.67', '2015-09-01', '', 'Rött vin', 'Flaska', '', 'Kalifornien', 'USA', 'Kunde Family Estate', 'Terrific Wines AB', '2013', '', 1, '14.50%', 'BS', '0', '0', '', ''),
(7774701, '1000080', '77747', 'Canella', 'Valdobbiadene Prosecco Superiore', '145.00', '', '750.00', '193.33', '2015-09-01', '', 'champagne', 'Flaska', '', 'Venetien', 'Italien', 'Canella SpA', 'Fine Brands Sweden AB', '2014', '', 0, '11.00%', 'BS', '0', '0', '', ''),
(7563901, '1000083', '75639', 'Vi?a Soledad', 'T?te de Cuv?e Reserva', '149.00', '', '750.00', '198.67', '2015-09-01', '', 'Vitt vin', 'Flaska', '', 'Rioja', 'Spanien', 'Bodegas Franco-Espa?olas', 'Terrific Wines AB', '2005', '', 0, '12.00%', 'BS', '0', '0', '', ''),
(7547101, '1000114', '75471', 'Alma Rosa', 'Pinot Noir', '245.00', '', '750.00', '326.67', '2015-09-01', '', 'Rött vin', 'Flaska', '', 'Kalifornien', 'USA', 'Alma Rosa Winery & Vineyards', 'Reconnaissance Wine AB', '2013', '', 1, '15.00%', 'BS', '0', '0', '', ''),
(7521801, '1000131', '75218', 'Purcari', 'Freedom Blend', '166.00', '', '750.00', '221.33', '2015-09-01', '', 'Rött vin', 'Flaska', '', '', 'Moldavien', 'Purcari', 'High Coast Wine AB', '2011', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(8936603, '1000155', '89366', 'Midas Golden Pilsner', '', '26.90', '', '330.00', '81.52', '2015-09-01', '', 'Öl, Ljus lager', 'Flaska', '', '', 'Sverige', 'Imperiebryggeriet AB', 'Imperiebryggeriet AB', '', '', 0, '4.90%', 'BS', '0', '0', '', ''),
(8962603, '1000158', '89626', 'Barbarossa', 'Imperial Red Ale', '35.90', '', '330.00', '108.79', '2015-09-01', '', 'Öl, Ale', 'Flaska', '', '', 'Sverige', 'Imperiebryggeriet AB', 'Imperiebryggeriet AB', '2015', '', 0, '7.50%', 'BS', '0', '0', '', ''),
(8983301, '1000175', '89833', 'Mc Grath''s', 'Irish Pale Ale', '37.20', '', '500.00', '74.40', '2015-09-01', '', 'Öl, Ale', 'Flaska', '', '', 'Irland', 'Clanconnel Brewing Company', 'New Brews Sweden AB', '', '', 0, '4.40%', 'BS', '0', '0', '', ''),
(7785701, '1000178', '77857', 'Canella', 'Bellini', '108.90', '', '750.00', '145.20', '2015-09-01', '', 'champagne', 'Flaska', '', '', 'Italien', 'Canella SpA', 'Fine Brands Sweden AB', '', '', 0, '5.00%', 'BS', '0', '0', '', ''),
(8927101, '1000201', '89271', 'McGrath''s', 'Irish Blonde Ale', '37.20', '', '500.00', '74.40', '2015-09-01', '', 'Öl, Ale', 'Flaska', '', '', 'Irland', 'Clanconnel Brewing Company', 'New Brews Sweden AB', '', '', 0, '4.50%', 'BS', '0', '0', '', ''),
(8945901, '1000228', '89459', 'McGrath''s', 'Irish Amber Ale', '37.10', '', '500.00', '74.20', '2015-09-01', '', 'Öl, Ale', 'Flaska', '', '', 'Irland', 'Clanconnel Brewing Company', 'New Brews Sweden AB', '', '', 0, '5.20%', 'BS', '0', '0', '', ''),
(7459301, '1000296', '74593', 'Johanneshof Reinisch', 'Riesling', '132.00', '', '750.00', '176.00', '2015-09-01', '', 'Vitt vin', 'Flaska', '', 'Nieder?sterreich', '?sterrike', 'Johann und Veronika Reinisch', 'KA Import', '2014', '', 0, '12.50%', 'BS', '1', '0', '', ''),
(7440201, '1000343', '74402', 'Johanneshof Reinisch', 'Pinot Noir', '141.00', '', '750.00', '188.00', '2015-09-01', '', 'Rött vin', 'Flaska', '', 'Nieder?sterreich', '?sterrike', 'Johann und Veronika Reinisch', 'KA Import', '2013', '', 0, '13.00%', 'BS', '1', '0', '', ''),
(7761601, '1000356', '77616', 'Canella', 'Cuv?e Dero? Spumante Brut', '96.00', '', '750.00', '128.00', '2015-09-01', '', 'champagne', 'Flaska', '', '', 'Italien', 'Canella SpA', 'Fine Brands Sweden AB', '', '', 0, '11.00%', 'BS', '0', '0', '', ''),
(8780501, '1000369', '87805', 'Jos', 'Tequila Blanco', '369.00', '', '700.00', '527.14', '2015-09-01', '', 'Tequila och Mezcal', 'Flaska', '', '', 'Mexiko', 'Tierra de Agaves', 'Fine Brands Sweden AB', '', '', 0, '40.00%', 'BS', '0', '0', '', ''),
(8587801, '1000372', '85878', 'Fighting Cock', 'Kentucky Straight Bourbon', '571.00', '', '1000.00', '571.00', '2015-09-01', '', 'Whisky, ?vrig', 'Flaska', '', 'Kentucky', 'USA', 'Heaven Hill Distilleries', 'Fine Brands Sweden AB', '', '', 0, '51.50%', 'BS', '0', '0', '', ''),
(8748601, '1005184', '87486', 'Kavalan', 'Solist Cask Strength', '1199.00', '', '700.00', '1712.86', '2015-10-01', '', 'Whisky, Malt', 'Flaska', '', 'Taiwan', '?vriga ursprung', 'Kavalan', 'Philipson S?derberg AB', '', '', 0, '58.60%', 'BS', '0', '0', '', ''),
(7475701, '1005189', '74757', 'Saintsbury', 'Sundawg Ridge Pinot Noir', '599.00', '', '750.00', '798.67', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Kalifornien', 'USA', 'Saintsbury', 'Divine AB', '2013', '', 0, '14.50%', 'BS', '0', '0', '', ''),
(7428801, '1005193', '74288', 'Vega Sicilia', 'Valbuena 5?', '1100.00', '', '750.00', '1466.67', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Ribera del Duero', 'Spanien', 'Bodegas Vega Sicilia', 'janake wine group AB', '2009', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(7596401, '1005197', '75964', 'Vega Sicilia', 'Unico', '2800.00', '', '750.00', '3733.33', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Ribera del Duero', 'Spanien', 'Bodegas Vega Sicilia', 'janake wine group AB', '2004', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(7496001, '1005524', '74960', 'Barbera del Monferrato', 'Livio Pavese', '109.00', '', '750.00', '145.33', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Piemonte', 'Italien', 'Livio Pavese', 'Chris-Wine AB', '2009', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(7605802, '1005538', '76058', 'Alegria', 'Manzanilla', '59.00', '', '375.00', '157.33', '2015-10-01', '', 'Sherry, Torr', 'Flaska', '', 'Manzanilla-Sanl?car de Barrameda', 'Spanien', 'Williams & Humbert', 'Ward Wines AB', '', '', 0, '15.00%', 'BS', '0', '0', '', ''),
(7587601, '1005553', '75876', 'American Wings', 'Zinfandel', '99.00', '', '750.00', '132.00', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Kalifornien', 'USA', 'Best Selection A/S', 'Amka Vinimport AB', '2013', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(7468001, '1005556', '74680', 'American Wings', 'Chardonnay', '99.00', '', '750.00', '132.00', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Kalifornien', 'USA', 'Best Selection A/S', 'Amka Vinimport AB', '2014', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(8748701, '1005561', '87487', 'Robert Burns', 'Blended Scotch Whisky', '229.00', '', '700.00', '327.14', '2015-10-01', '', 'Whisky, Blended', 'Flaska', '', 'Skottland', 'Storbritannien', 'Isle of Arran Distillers', 'Cask Sweden AB', '', '', 0, '40.00%', 'BS', '0', '0', '', ''),
(7369501, '1006124', '73695', 'Primus Zitsa', '', '180.00', '', '750.00', '240.00', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Epirus', 'Grekland', 'Domaine Glinavos', 'O.Wines and Spirits AB', '2013', '', 0, '12.00%', 'BS', '0', '0', '', ''),
(7389801, '1006133', '73898', 'Red Velvet', '', '169.00', '', '750.00', '225.33', '2015-10-01', '', 'Rött vin', 'Flaska', '', '', 'Grekland', 'Domaine Glinavos', 'O.Wines and Spirits AB', '2010', '', 0, '12.50%', 'BS', '0', '0', '', ''),
(7728301, '1006138', '77283', 'Debina', '', '139.00', '', '750.00', '185.33', '2015-10-01', '', 'Mousserande vin', 'Flaska', '', 'Epirus', 'Grekland', 'Domaine Glinavos', 'O.Wines and Spirits AB', '2013', '', 0, '12.00%', 'BS', '0', '0', '', ''),
(7306101, '1006148', '73061', 'Allesverloren 1704', '', '89.00', '', '750.00', '118.67', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Western Cape', 'Sydafrika', 'Allesverloren Wine Estate', 'janake wine group AB', '2014', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(7380601, '1006166', '73806', 'Villard', 'Sauvignon Blanc', '119.00', '', '750.00', '158.67', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Aconcagua', 'Chile', 'Villard Fine Wines', 'janake wine group AB', '2014', '', 0, '13.00%', 'BS', '0', '0', '', ''),
(7321901, '1006169', '73219', 'Albarossa', '', '251.00', '', '750.00', '334.67', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Piemonte', 'Italien', 'Tre Secoli', 'Obrini Beverage Company AB', '2012', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(8600101, '1006179', '86001', 'Demonio De Los Andes', '', '389.00', '', '700.00', '555.71', '2015-10-01', '', 'Brandy och Vinsprit, Vinsprit', 'Flaska', '', '', 'Peru', 'Vi?a Tacama', 'Renbjer & Magnusson AB', '', '', 0, '40.00%', 'BS', '0', '0', '', ''),
(7377301, '1006189', '73773', 'The Mira', 'Cabernet Sauvignon', '189.00', '', '750.00', '252.00', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Western Cape', 'Sydafrika', 'Uva Mira', 'Tryffelsvinet AB', '2013', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(8559101, '1006209', '85591', 'MACK by Mackmyra', '', '299.00', '', '700.00', '427.14', '2015-10-01', '', 'Whisky, Malt', 'Flaska', '', '', 'Sverige', 'Mackmyra Svensk Whisky AB', 'Mackmyra Svensk Whisky AB', '', '', 0, '40.00%', 'BS', '0', '0', '', ''),
(7529006, '1006212', '75290', 'Mac', '', '1200.00', '', '1500.00', '800.00', '2015-10-01', '', 'Rött vin', 'Magnum', '', 'Rioja', 'Spanien', 'Benjamin de Rothschild &Vega Sic', 'janake wine group AB', '2010', '', 0, '14.50%', 'BS', '0', '0', '', ''),
(8948703, '1006215', '89487', 'Tingvalla Amarillo', '', '24.10', '', '330.00', '73.03', '2015-10-01', '', 'Öl, Ale', 'Flaska', '', '', 'Sverige', 'Tingvalla Hantverks AB', 'Tingvalla Hantverks AB', '', '', 0, '5.20%', 'BS', '0', '0', 'Pale ale- och crystalmalt samt h', ''),
(8535201, '1006219', '85352', 'Sheep Dip', 'Islay Blended Malt', '479.00', '', '700.00', '684.29', '2015-10-01', '', 'Whisky, Malt', 'Flaska', '', 'Skottland', 'Storbritannien', 'Spencerfield Spirit Co', 'Renbjer & Magnusson AB', '', '', 0, '40.00%', 'BS', '0', '0', '', ''),
(8676302, '1006250', '86763', 'Monkey 47', 'Schwarzwald Sloe Gin', '399.00', '', '500.00', '798.00', '2015-10-01', '', 'Lik?r, Frukter och b', 'Flaska', '', '', 'Tyskland', 'Black Forest Distillers', 'Renbjer & Magnusson AB', '2014', '', 0, '29.00%', 'BS', '0', '0', '', ''),
(7926001, '1008918', '79260', 'Mizzon Giuseppe', 'Amarone della Valpolicella Class', '449.00', '', '750.00', '598.67', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Venetien', 'Italien', 'Mizzon Giuseppe', 'Vino Conoscenza AB', '2005', '', 0, '15.00%', 'BS', '0', '0', '', ''),
(7932202, '1008921', '79322', 'Mizzon', 'Passito Bianco', '279.00', '', '500.00', '558.00', '2015-10-01', '', 'Vitt vin, S?tt', 'Flaska', '', 'Venetien', 'Italien', 'Mizzon di Perusi Nicola', 'Vino Conoscenza AB', '2012', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(7388201, '1008924', '73882', 'Mizzon', 'Valpolicella Ripasso Classico Su', '222.00', '', '750.00', '296.00', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Venetien', 'Italien', 'Mizzon di Perusi Nicola', 'Vino Conoscenza AB', '2012', '', 0, '14.50%', 'BS', '0', '0', '', ''),
(8718202, '1008949', '87182', 'Saturnus 1893 Julakvavit', '', '199.00', '', '500.00', '398.00', '2015-10-01', '', 'Kryddad sprit', 'Flaska', '', '', 'Sverige', 'Saturnus', 'Saturnus', '', '', 0, '40.00%', 'BS', '0', '0', '', ''),
(7431501, '1008953', '74315', 'Macho Man', 'Monastrell', '137.00', '', '750.00', '182.67', '2015-10-01', '', 'Rött vin', 'Flaska', '', 'Jumilla', 'Spanien', 'Casa Rojo - Enolog?a Creativa S.', 'Vivona AB', '2013', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(7359901, '1008971', '73599', 'Weingut A.J Adam', 'Riesling Trocken', '169.00', '', '750.00', '225.33', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Mosel', 'Tyskland', 'Weingut A.J Adam', 'Winespotting AB', '2014', '', 0, '11.00%', 'BS', '0', '0', '', ''),
(7392501, '1008974', '73925', 'Weingut A.J Adam', 'Dhroner Hofberg Riseling Trocken', '339.00', '', '750.00', '452.00', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Mosel', 'Tyskland', 'Weingut A.J Adam', 'Winespotting AB', '2014', '', 0, '12.00%', 'BS', '0', '0', '', ''),
(7279109, '1008977', '72791', 'Montirius L?dan', '', '414.00', '', '2250.00', '184.00', '2015-10-01', '', 'Rött vin', '3 fl ? 750 ml', '', '', 'Frankrike', 'Montirius', 'TM Kvalitetsviner AB', '2014', '', 0, '13.00%', 'BS', '1', '0', '', ''),
(7329301, '1008982', '73293', 'Weingut A.J Adam', 'Dhroner Hofberg Riseling Kabinet', '208.00', '', '750.00', '277.33', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Mosel', 'Tyskland', 'Weingut A.J Adam', 'Winespotting AB', '2014', '', 0, '8.50%', 'BS', '0', '0', '', ''),
(7324101, '1008985', '73241', 'Weingut A.J Adam', 'Dhroner Hofberg Riesling SpÖlese', '264.00', '', '750.00', '352.00', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Mosel', 'Tyskland', 'Weingut A.J Adam', 'Winespotting AB', '2014', '', 0, '8.00%', 'BS', '0', '0', '', ''),
(7561001, '1008988', '75610', 'Poderi Sanrocco', 'Chardonnay', '125.00', '', '750.00', '166.67', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Piemonte', 'Italien', 'Poderi Sanrocco', 'Larkum HB', '2014', '', 0, '13.00%', 'BS', '0', '0', '', ''),
(8819309, '1008991', '88193', 'Troubadour Mixl?da', '', '748.80', '', '7920.00', '94.55', '2015-10-01', '', 'Öl, Flera typer', '24 fl ? 330 ml', '', '', 'Belgien', 'Brewery The Musketeers', 'Eskilstuna Ölkultur AB', '', '', 0, '7.90%', 'BS', '0', '0', '', ''),
(7378201, '1008994', '73782', 'Clemens Busch', 'Vom Grauen Schiefer Riesling Tro', '199.00', '', '750.00', '265.33', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Mosel', 'Tyskland', 'Clemens Busch', 'Winespotting AB', '2013', '', 0, '11.00%', 'BS', '1', '0', '', ''),
(7475209, '1009004', '74752', 'Donatella Cinelli Colombini', '', '1098.00', '', '4500.00', '244.00', '2015-10-01', '', 'Rött vin', '6 fl ? 750 ml', '', 'Toscana', 'Italien', 'Donatella Cinelli Colombini', 'Larkum HB', '', '', 0, '14.00%', 'BS', '0', '0', '', ''),
(7311401, '1009035', '73114', 'Schmitges', 'Grauschiefer Riesling Trocken', '154.00', '', '750.00', '205.33', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Mosel', 'Tyskland', 'Weingut Schmitges', 'Winespotting AB', '2014', '', 0, '12.50%', 'BS', '0', '0', '', ''),
(7096809, '1009045', '70968', 'Abrigo Giovanni Piemonte Mix 1', '', '720.00', '', '4500.00', '160.00', '2015-10-01', '', 'Rött vin', '6 fl ? 750 ml', '', 'Piemonte', 'Italien', 'Az. Agr. Abrigo Giovanni', 'Larkum HB', '', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(7368401, '1009063', '73684', 'Schmitges', 'Urgestein Erdener Treppchen Ries', '162.00', '', '750.00', '216.00', '2015-10-01', '', 'Vitt vin', 'Flaska', '', 'Mosel', 'Tyskland', 'Weingut Schmitges', 'Winespotting AB', '2014', '', 0, '11.00%', 'BS', '0', '0', '', ''),
(7961509, '1009083', '79615', 'Abrigo Giovanni Piemonte Mix 2', '', '720.00', '', '3000.00', '240.00', '2015-10-01', '', 'Vin av flera typer', '4 fl ? 750 ml', '', 'Piemonte', 'Italien', 'Az. Agr. Abrigo Giovanni', 'Larkum HB', '', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(8223801, '10091', '82238', 'Sancerre', 'l''Ancienne Vigne', '206.00', '', '750.00', '274.67', '1996-03-01', '', 'Vitt vin', 'Flaska', '', 'Loiredalen', 'Frankrike', 'Fournier P?re & Fils', 'Carovin AB', '2013', '', 0, '12.50%', 'BS', '0', '0', '', ''),
(8809003, '1009114', '88090', 'Piraat', 'Triple Hop', '37.90', '', '330.00', '114.85', '2015-10-01', '', 'Öl, Ale', 'Flaska', '', '', 'Belgien', 'Brouwerij Van Steenberge', 'AB Wicked Wine Sweden', '', '', 0, '10.50%', 'BS', '0', '0', '', ''),
(7105801, '1009117', '71058', 'Cinclus SC', '', '145.00', '', '750.00', '193.33', '2015-10-01', '', 'Vitt vin', 'Flaska', '', '', 'Spanien', 'D.G.Viticultors', 'Vivona AB', '2011', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(8225301, '10117', '82253', 'Gewurztraminer', 'Furstentum Vieilles Vignes Grand', '292.00', '', '750.00', '389.33', '1996-03-01', '', 'Vitt vin', 'Flaska', '', 'Alsace', 'Frankrike', 'Domaine Paul Blanck', 'Carovin AB', '2007', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(7446602, '1011715', '74466', 'Portal Del Alto', 'Late Harvest Moscatel Viognier', '132.00', '', '375.00', '352.00', '2015-11-02', '', 'Vitt vin, S?tt', 'Flaska', '', '', 'Chile', 'Vi?a Portal del Alto', 'QESW Swedish AB', '2013', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(7706209, '1011718', '77062', 'Dream Line', 'Mix F?rpackning', '810.00', '', '4500.00', '180.00', '2015-11-02', '', 'Mousserande vin, Övrigt', '6 fl ? 750 ml', '', '', 'Spanien', 'Espadafor', 'Taste42 Sweden AB', '', '', 0, '8.00%', 'BS', '0', '0', '', ''),
(7512901, '1011752', '75129', 'Portal Del Alto', 'Reserva del Autor Four Reds', '186.00', '', '750.00', '248.00', '2015-11-02', '', 'Rött vin', 'Flaska', '', 'Maule', 'Chile', 'Vi?a Portal del Alto', 'QESW Swedish AB', '2012', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(7559401, '1011783', '75594', 'Portal Del Alto', 'Gran Reserva Chardonnay', '216.00', '', '750.00', '288.00', '2015-11-02', '', 'Vitt vin', 'Flaska', '', 'Maipo', 'Chile', 'Vi?a Portal del Alto', 'QESW Swedish AB', '2013', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(7750409, '1011858', '77504', 'Ny?rsl?dan 2015', '', '2094.00', '', '4500.00', '465.33', '2015-11-02', '', 'Mousserande vin, Vitt torrt', '6 fl ? 750 ml', '', 'Champagne', 'Frankrike', 'Roger Pouillon & Fils', 'Spruce Up AB', '', '', 0, '12.00%', 'BS', '0', '0', '', ''),
(9481901, '1011890', '94819', 'Arianna Occhipinti', 'SP68 Rosso', '169.00', '', '750.00', '225.33', '2015-11-06', '', 'Rött vin', 'Flaska', '', 'Sicilien', 'Italien', 'Arianna Occhipinti', 'Wine Trade Sweden AB', '2014', '', 0, '12.50%', 'TSE', '0', '0', '70% frappato och 30% nero d''avol', '.jpg'),
(7505201, '1011897', '75052', 'M?thode Ancienne', 'Cabernet Sauvignon', '369.00', '', '750.00', '492.00', '2015-11-02', '', 'Rött vin', 'Flaska', '', '', 'Sydafrika', 'Springfield Estate', 'Johan Lidby Vinhandel AB', '2009', '', 0, '13.00%', 'BS', '0', '0', '', ''),
(9004501, '1012087', '90045', 'Casa del Inca', 'Pedro Xim?nez', '319.00', '', '750.00', '425.33', '2015-11-06', '', 'Montilla', 'Flaska', 'Naturkork', 'Montilla-Moriles', 'Spanien', 'Equipo Navazos', 'Vinovativa AB', '2013', '', 0, '15.00%', 'TSE', '0', '0', 'Pedro Xim?nez.', ''),
(7400701, '1012152', '74007', 'Barone Montalto', 'Rosso', '59.00', '', '750.00', '78.67', '2015-11-02', '', 'Rött vin', 'Flaska', '', 'Sicilien', 'Italien', 'Barone Montalto', 'Rewine AB', '2014', '', 0, '12.50%', 'BS', '0', '0', '', ''),
(7040601, '1012158', '70406', 'Barone Montalto', 'Bianco', '59.00', '', '750.00', '78.67', '2015-11-02', '', 'Vitt vin', 'Flaska', '', 'Sicilien', 'Italien', 'Barone Montalto', 'Rewine AB', '2014', '', 0, '12.00%', 'BS', '0', '0', '', ''),
(7280301, '1012232', '72803', 'Ch?teau de Campuget', 'La Sommeli?re Syrah', '149.00', '', '750.00', '198.67', '2015-11-02', '', 'Rött vin', 'Flaska', '', 'Rhonedalen', 'Frankrike', 'Ch?teau de Campuget', 'Vinunic AB', '2012', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(7256301, '1018055', '72563', 'Savigny-Les-Beaunes Premier Cru ', 'Reine P?dauque', '231.00', '', '750.00', '308.00', '2015-11-02', '', 'Rött vin', 'Flaska', '', 'Bourgogne', 'Frankrike', 'Reine P?dauque', 'Philipson S?derberg AB', '2013', '', 0, '13.00%', 'BS', '0', '0', '', ''),
(7574001, '1018061', '75740', 'Moulin Rouge', 'Syrah Grenache', '69.00', '', '750.00', '92.00', '2015-11-02', '', 'Rött vin', 'Flaska', '', '', 'Frankrike', 'Jean Biecher', 'The Wine Team', '2014', '', 0, '13.50%', 'BS', '1', '0', '', ''),
(8681901, '1018065', '86819', 'Girvan', '25 Years', '1199.00', '', '700.00', '1712.86', '2015-11-02', '', 'Whisky, Grain', 'Flaska', '', 'Skottland', 'Storbritannien', 'Douglas Laing', 'Philipson S?derberg AB', '', '', 0, '51.50%', 'BS', '0', '0', '', ''),
(7779201, '1018068', '77792', 'P LEX', 'Port Tawny Reserve', '199.00', '', '750.00', '265.33', '2015-11-02', '', 'Portvin, Rött', 'Flaska', '', 'Porto', 'Portugal', 'Bar?o de Vilar', 'The Wine Team', '', '', 0, '20.00%', 'BS', '0', '0', '', ''),
(8638601, '1018072', '86386', 'Glen Keith', 'Part Nan Angelen', '999.00', '', '700.00', '1427.14', '2015-11-02', '', 'Whisky, Malt', 'Flaska', '', 'Skottland', 'Storbritannien', 'Magni Spirits AB', 'Philipson S?derberg AB', '1996', '', 0, '46.20%', 'BS', '0', '0', '', ''),
(7927901, '1018075', '79279', 'Domaene Gobelsburg', 'Zweigelt Trocken', '99.00', '', '750.00', '132.00', '2015-11-02', '', 'Rött vin', 'Flaska', '', 'Nieder?sterreich', '?sterrike', 'Schloss Gobelsburg', 'Prime Wine Sweden AB', '2012', '', 0, '12.50%', 'BS', '0', '0', '', ''),
(7931201, '1018078', '79312', 'Barolo Le Vigne', 'Luciano Sandrone', '699.00', '', '750.00', '932.00', '2015-11-02', '', 'Rött vin', 'Flaska', '', 'Piemonte', 'Italien', 'Luciano Sandrone', 'Prime Wine Sweden AB', '2011', '', 0, '14.50%', 'BS', '0', '0', '', ''),
(8990603, '1018116', '89906', 'Trifecta', 'India Pale Ale', '46.50', '', '355.00', '130.99', '2015-11-02', '', 'Öl, Ale', 'Flaska', '', '', 'USA', 'Thomas Creek Brewery', 'Ahl?n & Small Trading AB', '', '', 0, '6.90%', 'BS', '0', '0', '', ''),
(8982003, '1018217', '89820', 'Antigravity', 'Lager', '37.40', '', '355.00', '105.35', '2015-11-02', '', 'Öl, Ljus lager', 'Flaska', '', '', 'Kanada', 'Flying Monkeys Craft Brewery', 'Ahl?n & Small Trading AB', '', '', 0, '4.00%', 'BS', '0', '0', '', ''),
(7387409, '1018230', '73874', 'Wines of Creation', '', '1056.00', '', '4500.00', '234.67', '2015-11-02', '', 'Rött vin', '6 fl ? 750 ml', '', 'Western Cape', 'Sydafrika', 'Creation Wines', 'Tryffelsvinet AB', '', '', 0, '14.50%', 'BS', '0', '0', '', ''),
(8904803, '1018233', '89048', 'Flying Monkeys', 'Amber Ale', '37.30', '', '355.00', '105.07', '2015-11-02', '', 'Öl, Ale', 'Flaska', '', '', 'Kanada', 'Flying Monkeys Craft Brewery', 'Ahl?n & Small Trading AB', '', '', 0, '5.00%', 'BS', '0', '0', '', ''),
(8976903, '1018236', '89769', 'Hoptical Illusion', 'Almost Pale Ale', '40.30', '', '355.00', '113.52', '2015-11-02', '', 'Öl, Ale', 'Flaska', '', '', 'Kanada', 'Flying Monkeys Craft Brewery', 'Ahl?n & Small Trading AB', '', '', 0, '5.00%', 'BS', '0', '0', '', ''),
(8412601, '1018253', '84126', 'Glenburgie', 'Part Nan Angelen XVI', '999.00', '', '700.00', '1427.14', '2015-11-02', '', 'Whisky, Malt', 'Flaska', '', 'Skottland', 'Storbritannien', 'Magni Spirits AB', 'Philipson S?derberg AB', '1995', '', 0, '46.20%', 'BS', '0', '0', '', ''),
(8978803, '1018259', '89788', 'Smashbomb', 'Atomic India Pale Ale', '40.10', '', '355.00', '112.96', '2015-11-02', '', 'Öl, Ale', 'Flaska', '', '', 'Kanada', 'Flying Monkeys Craft Brewery', 'Ahl?n & Small Trading AB', '', '', 0, '6.00%', 'BS', '0', '0', '', ''),
(8800203, '1018269', '88002', 'Cwtch', 'Welsh Red Ale', '39.00', '', '330.00', '118.18', '2015-11-02', '', 'Öl, Ale', 'Flaska', '', 'Wales', 'Storbritannien', 'Tiny Rebel', 'Ahl?n & Small Trading AB', '', '', 0, '4.60%', 'BS', '0', '0', '', ''),
(8878403, '1018279', '88784', 'Fubar', 'Pale Ale', '39.10', '', '330.00', '118.49', '2015-11-02', '', 'Öl, Ale', 'Flaska', '', 'Wales', 'Storbritannien', 'Tiny Rebel', 'Ahl?n & Small Trading AB', '', '', 0, '4.40%', 'BS', '0', '0', '', ''),
(7227801, '1018295', '72278', 'Navaherreras', 'Blanco de Bernabeleva', '149.00', '', '750.00', '198.67', '2015-11-02', '', 'Vitt vin', 'Flaska', '', 'Vinos de Madrid', 'Spanien', 'Bodegas Bernabeleva', 'Wine List Sweden AB', '2014', '', 0, '13.50%', 'BS', '0', '0', '', ''),
(8872403, '1018308', '88724', 'Urban', 'Intercontinental Inspired Pale A', '40.40', '', '330.00', '122.42', '2015-11-02', '', 'Öl, Ale', 'Flaska', '', 'Wales', 'Storbritannien', 'Tiny Rebel', 'Ahl?n & Small Trading AB', '', '', 0, '5.50%', 'BS', '0', '0', '', ''),
(7228001, '1018356', '72280', 'Navaherreras', 'Garnacha de Bernabeleva', '169.00', '', '750.00', '225.33', '2015-11-02', '', 'Rött vin', 'Flaska', '', 'Vinos de Madrid', 'Spanien', 'Bodegas Bernabeleva', 'Wine List Sweden AB', '2013', '', 0, '15.00%', 'BS', '0', '0', '', ''),
(7931301, '1018376', '79313', 'Sancerre', 'Paul Prieur Rouge', '208.00', '', '750.00', '277.33', '2015-11-02', '', 'Rött vin', 'Flaska', '', 'Loiredalen', 'Frankrike', 'Paul Prieur et Fils', 'Brasri AB', '2014', '', 0, '13.00%', 'BS', '0', '0', '', ''),
(7931401, '1018380', '79314', 'Sancerre', 'Paul Prieur Blanc', '208.00', '', '750.00', '277.33', '2015-11-02', '', 'Vitt vin', 'Flaska', '', 'Loiredalen', 'Frankrike', 'Paul Prieur et Fils', 'Brasri AB', '2014', '', 0, '13.00%', 'BS', '0', '0', '', ''),
(7759909, '1018383', '77599', 'Methode Ancestrale L?da', '', '1980.00', '', '9000.00', '220.00', '2015-11-02', '', 'Mousserande vin', '12 fl ? 750 ml', '', '', 'Frankrike', 'Flera producenter', 'Brasri AB', '', '', 0, '8.50%', 'BS', '1', '0', '', ''),
(7761801, '1018660', '77618', 'Egly-Ouriet', 'Blanc de Noirs Grand Cru', '1125.00', '', '750.00', '1500.00', '2015-11-02', '', 'Mousserande vin, Vitt torrt', 'Flaska', '', 'Champagne', 'Frankrike', 'Egly-Ouriet', 'The WineAgency Sweden AB', '', '', 0, '12.50%', 'BS', '0', '0', '', '');
