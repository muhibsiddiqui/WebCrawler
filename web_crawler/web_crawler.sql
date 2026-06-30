-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_crawler`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crawled_data`
--

CREATE TABLE `crawled_data` (
  `id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `num_words` int(11) DEFAULT 0,
  `num_images` int(11) DEFAULT 0,
  `image_urls` text DEFAULT NULL,
  `is_initial` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crawled_data`
--

INSERT INTO `crawled_data` (`id`, `url`, `title`, `content`, `timestamp`, `user_id`, `num_words`, `num_images`, `image_urls`, `is_initial`) VALUES
(1, 'https://example.com', 'Test', 'Sample content', '2025-03-05 00:52:49', 1, 0, 0, NULL, 0),
(2, 'https://www.youtube.com/', 'YouTube', 'YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 00:56:55', 1, 0, 0, NULL, 0),
(3, 'https://www.youtube.com/', 'YouTube', 'YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 00:59:06', 1, 0, 0, NULL, 0),
(4, 'https://www.youtube.com/', 'YouTube', 'YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:02:35', 1, 0, 0, NULL, 0),
(5, 'https://www.youtube.com/', 'YouTube', 'YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:04:09', 1, 0, 0, NULL, 0),
(6, 'https://www.youtube.com/', 'YouTube', 'YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:04:42', 1, 0, 0, NULL, 0),
(7, 'https://www.youtube.com/', 'YouTube', 'YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:06:38', 1, 0, 0, NULL, 0),
(8, 'https://www.youtube.com/', 'YouTube', 'YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:10:36', 1, 0, 0, NULL, 0),
(9, 'https://www.youtube.com/', 'YouTube', 'YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:11:09', 1, 0, 0, NULL, 0),
(10, 'https://www.youtube.com/watch?v=2LubOtp4LGM', 'TREVOR SHOCKED NASIR &TABISH ROCKED - EPISODE 7 | GTA 5 - YouTube', 'TREVOR SHOCKED NASIR &TABISH ROCKED - EPISODE 7 | GTA 5 - YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:13:04', 1, 0, 0, NULL, 0),
(11, 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox/FMfcgzQZTVqKqSmcZNPrvRPNGGDZMMxH', 'Gmail', 'GmailSign into continue to GmailEmail or phoneForgot email?Not your computer? Use a private browsing window to sign in. Learn more about using Guest modeNextCreate accountAfrikaansazərbaycanbosanskicatalàČeštinaCymraegDanskDeutscheestiEnglish (United Kingdom)English (United States)Español (España)Español (Latinoamérica)euskaraFilipinoFrançais (Canada)Français (France)GaeilgegalegoHrvatskiIndonesiaisiZuluíslenskaItalianoKiswahililatviešulietuviųmagyarMelayuNederlandsnorsko‘zbekpolskiPortuguês (Brasil)Português (Portugal)românăshqipSlovenčinaslovenščinasrpski (latinica)SuomiSvenskaTiếng ViệtTürkçeΕλληνικάбеларускаябългарскикыргызчақазақ тілімакедонскимонголРусскийсрпски (ћирилица)Українськаქართულიհայերեն‫עברית‬‎‫اردو‬‎‫العربية‬‎‫فارسی‬‎አማርኛनेपालीमराठीहिन्दीঅসমীয়াবাংলাਪੰਜਾਬੀગુજરાતીଓଡ଼ିଆதமிழ்తెలుగుಕನ್ನಡമലയാളംසිංහලไทยລາວမြန်မာខ្មែរ한국어中文（香港）日本語简体中文繁體中文HelpPrivacyTerms', '2025-03-05 01:13:51', 1, 0, 0, NULL, 0),
(12, 'https://www.youtube.com/watch?v=aOf6--eJYX8', 'Inside a $50,000,000 Lakefront Mansion with 2 FUNICULARS in the Middle of Nature! - YouTube', 'Inside a $50,000,000 Lakefront Mansion with 2 FUNICULARS in the Middle of Nature! - YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:14:13', 1, 0, 0, NULL, 0),
(13, 'https://www.youtube.com/watch?v=hc1EcrogYbM', 'WHO IS THIS JOKER | GTA 5 GAMEPLAY - YouTube', 'WHO IS THIS JOKER | GTA 5 GAMEPLAY - YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-03-05 01:15:20', 2, 0, 0, NULL, 0),
(14, 'https://www.youtube.com/watch?v=ntKkVrQqBYY&t=13s', 'MERN Stack Project: Realtime Chat App Tutorial - React.js & Socket.io - YouTube', 'MERN Stack Project: Realtime Chat App Tutorial - React.js & Socket.io - YouTubeتعارفپریسکاپی رائٹہم سے رابطہ کریںتخلیق کارانتشہیرڈیولپرزشرائطرازداریپالیسی اور تحفظYouTube کے کام کرنے کا طریقہنئی خصوصیات آزمائيں© 2025 Google LLC', '2025-05-01 15:07:21', 3, 30, 0, '', 1),
(15, 'https://www.quora.com/', 'Quora - A place to share knowledge and better understand the world', 'Quora - A place to share knowledge and better understand the world\n\n\n\n\nSomething went wrong. Wait a moment and try again.Try again\n\n\nPlease enable Javascript and refresh the page to continue', '2025-05-01 15:08:26', 3, 31, 0, '', 1),
(16, 'https://www.coursera.org/', 'Coursera | Degrees, Certificates, & Free Online Courses', 'Coursera | Degrees, Certificates, & Free Online Courses\n\n\n\n\n\nFor IndividualsFor BusinessesFor UniversitiesFor GovernmentsExploreOnline DegreesCareersLog InJoin for FreePrepare for certification exams in IT, cybersecurity, and more with affordable prep courses.Learn without limitsStart, switch, or advance your career with more than 10,000 courses, Professional Certificates, and degrees from world-class universities and companies.Join For Free Try Coursera for Business We collaborate with 350+ leading universities and companiesChoose your roleGain the knowledge and skills you need to advance.Explore all rolesBeginner​PopularSoftware Engineering & ITBusinessSales & MarketingData Science & AnalyticsHealthcareExplore all rolesGet started with GenAIIdentify, develop, and execute impactful GenAI business strategies.View all GenAINewBeginnerPopularToolsView all GenAIÂ¹Each university determines admission and the number of pre-approved prior learning credits that may count toward the degree requirements according to institutional policies, which may consider any existing credits you may have.Explore CourseraDatawetenschap425 coursesBedrijfskunde1095 coursesinformatica668 coursesGezondheidSociale Wetenschappen401 coursesPersoonlijke ontwikkeling137 coursesLetteren en Geesteswetenschappen338 coursesNatuurwetenschappen en techniek413 coursesTaal leren150 coursesInformatietechnologie145 coursesWiskunde en Logica70 coursesLearner outcomes on Coursera77% of learners report career benefits, such as new skills, increased pay, and new job opportunities. 2023 Coursera Learner Outcomes ReportJoin for FreeFrom the Coursera community175+ million people have already joined CourseraKenia R.United StatesâBeing a mother â especially a working mother means Iâm constantly trying to juggle my schedule, my kidsâ schedules, and work. I am very grateful for the flexible and remote learning programs that Coursera has to offer.âRyan L.United StatesâFrom taking courses on Coursera, I gained a deep understanding of the UX Design process from start to finish. With the knowledge I gained, I feel prepared for entry-level jobs and internships. I\'ve been able to apply the skills and knowledge I gained to multiple projects and work experiences.âVishal V.IndiaâI really enjoyed my courses. The quizzes, videos, and quick labs provided helpful hands-on experience. Learning on Coursera has given me the confidence and ability to excel in my career. I love this feeling.âDrive your business forward by empowering your talent Train teams with industry-leading experts and universities, enhanced by AI tools and recognized credentials.Discover Coursera for BusinessUpskill a small team?Check out Coursera for TeamsTake the next step toward your personal and professional goals with Coursera.Join now to receive personalized recommendations from the full Coursera catalog.Join for FreeÂ¹ Median salary and job opening data are sourced from Lightcastâ¢ Job Postings Report.\n  Content Creator, Machine Learning Engineer and Salesforce Development Representative (1/1/2024 - 12/31/2024)\n  All other job roles (5/1/2024 - 5/1/2025)Coursera FooterTechnical SkillsChatGPTCodingComputer ScienceCybersecurityDevOpsEthical HackingGenerative AIJava ProgrammingPythonWeb DevelopmentAnalytical SkillsArtificial IntelligenceBig DataBusiness AnalysisData AnalyticsData ScienceFinancial ModelingMachine LearningMicrosoft ExcelMicrosoft Power BISQLBusiness SkillsAccountingDigital MarketingE-commerceFinanceGoogleGraphic DesignIBMMarketingProject ManagementSocial Media MarketingCareer ResourcesEssential IT CertificationsHigh-Income Skills to LearnHow to Get a PMP CertificationHow to Learn Artificial IntelligencePopular Cybersecurity CertificationsPopular Data Analytics CertificationsWhat Does a Data Analyst Do?Career Development ResourcesCareer Aptitude TestShare your Coursera Learning StoryCourseraAboutWhat We OfferLeadershipCareersCatalogCoursera PlusProfessional CertificatesMasterTrackÂ® CertificatesDegreesFor EnterpriseFor GovernmentFor CampusBecome a PartnerSocial ImpactFree CoursesECTS Credit RecommendationsCommunityLearnersPartnersBeta TestersBlogThe Coursera PodcastTech BlogTeaching CenterMorePressInvestorsTermsPrivacyHelpAccessibilityContactArticlesDirectoryAffiliatesModern Slavery StatementManage Cookie PreferencesLearn AnywhereÂ© 2025 Coursera Inc. All rights reserved.\n\n', '2025-05-01 15:09:09', 3, 480, 35, 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE2LjIuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPgo8c3ZnIHZpZXdCb3g9IjAgMCAxMTU1IDE2NCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLW1pdGVybGltaXQ9IjIiPjxwYXRoIGQ9Ik0xNTkuNzUgODEuNTRjMC00NC40OSAzNi42My04MC40NyA4Mi40My04MC40NyA0Ni4xMiAwIDgyLjc2IDM2IDgyLjc2IDgwLjQ3IDAgNDQuMTYtMzYuNjQgODAuOC04Mi43NiA4MC44LTQ1LjggMC04Mi40My0zNi42OC04Mi40My04MC44em0xMjUuNjEgMGMwLTIyLjI0LTE5LjMtNDEuODctNDMuMTgtNDEuODctMjMuNTUgMC00Mi44NSAxOS42My00Mi44NSA0MS44NyAwIDIyLjU3IDE5LjMgNDIuMiA0Mi44NSA0Mi4yIDIzLjkyIDAgNDMuMTgtMTkuNjMgNDMuMTgtNDIuMnptNzA1LjYzIDEuMzFjMC00OC43NCAzOS41OC04MS43OCA3NS41Ny04MS43OCAyNC41MyAwIDM4LjYgNy41MiA0OC4wOCAyMS45MmwzLjc3LTE5aDM2Ljc5djE1NS40aC0zNi43OWwtNC43NS0xNmMtMTAuNzkgMTEuNzgtMjQuMjEgMTktNDcuMSAxOS0zNS4zMy0uMDUtNzUuNTctMzEuMTMtNzUuNTctNzkuNTR6bTEyNS42MS0uMzNjLS4wOS0yMy41MjctMTkuNDctNDIuODM1LTQzLTQyLjgzNS0yMy41OSAwLTQzIDE5LjQxMS00MyA0M3YuMTY1YzAgMjEuNTkgMTkuMyA0MC44OSA0Mi44NiA0MC44OSAyMy44NSAwIDQzLjE0LTE5LjMgNDMuMTQtNDEuMjJ6TTk0NS43OCAyMlY0aC00MC4yM3YxNTUuMzloNDAuMjNWNzUuNjZjMC0yNS4xOSAxMi40NC0zOC4yNyAzNC0zOC4yNyAxLjQzIDAgMi43OS4xIDQuMTIuMjNMOTkxLjM2LjExYy0yMC45Ny4xMS0zNi4xNyA3LjMtNDUuNTggMjEuODl6bS00MDQuMjcuMDF2LTE4bC00MC4yMy4wOS4zNCAxNTUuMzcgNDAuMjMtLjA5LS4yMi04My43MmMtLjA2LTI1LjE4IDEyLjM1LTM4LjI5IDMzLjkzLTM4LjM0IDEuMzc2LjAwNCAyLjc1Mi4wODEgNC4xMi4yM0w1ODcuMSAwYy0yMSAuMTctMzYuMjIgNy4zOS00NS41OSAyMi4wMXpNMzM4Ljg4IDk5LjJWNC4wMWg0MC4yMlY5NC4zYzAgMTkuOTUgMTEuMTIgMzEuNzMgMzAuNDIgMzEuNzMgMjEuNTkgMCAzNC0xMy4wOSAzNC0zOC4yOFY0LjAxaDQwLjI0djE1NS4zOGgtNDAuMjF2LTE4Yy05LjQ4IDE0LjcyLTI0Ljg2IDIxLjkyLTQ2LjEyIDIxLjkyLTM1Ljk4LjAxLTU4LjU1LTI2LjE2LTU4LjU1LTY0LjExem0zOTEuNzQtMTcuNDhjLjA5LTQzLjUxIDMxLjIzLTgwLjc0IDgwLjYyLTgwLjY1IDQ1LjguMDkgNzguMTEgMzYuNzggNzggODAgLjAxIDQuMjczLS4zMyA4LjU0LTEgMTIuNzZsLTExOC40MS0uMjJjNC41NCAxOC42NSAxOS44OSAzMi4wOSA0My4xMiAzMi4xNCAxNC4wNiAwIDI5LjEyLTUuMTggMzguMy0xNi45NGwyNy40NCAyMmMtMTQuMTEgMTkuOTMtMzkgMzEuNjYtNjUuNDggMzEuNjEtNDYuNzUtLjE2LTgyLjY3LTM1LjIzLTgyLjU5LTgwLjd6bTExOC4xMi0xNi4xNGMtMi4yNi0xNS43LTE4LjU5LTI3Ljg0LTM3Ljg5LTI3Ljg3LTE4LjY1IDAtMzMuNzEgMTEuMDYtMzkuNjMgMjcuNzNsNzcuNTIuMTR6bS0yNjEuNCA1OS45NGwzNS43Ni0xOC43MmM1LjkxIDEyLjgxIDE3LjczIDIwLjM2IDM0LjQ4IDIwLjM2IDE1LjQzIDAgMjEuMzQtNC45MiAyMS4zNC0xMS44MiAwLTI1LTg0LjcxLTkuODUtODQuNzEtNjcgMC0zMS41MiAyNy41OC00OC4yNiA2MS43Mi00OC4yNiAyNS45NCAwIDQ4LjkyIDExLjQ5IDYxLjQgMzIuODNsLTM1LjQ0IDE4Ljc1Yy01LjI1LTEwLjUxLTE1LjEtMTYuNDItMjcuNTgtMTYuNDItMTIuMTQgMC0xOC4wNiA0LjI3LTE4LjA2IDExLjQ5IDAgMjQuMyA4NC43MSA4Ljg3IDg0LjcxIDY3IDAgMzAuMjEtMjQuNjIgNDguNTktNjQuMzUgNDguNTktMzMuODItLjAzLTU3LjQ2LTExLjE5LTY5LjI3LTM2Ljh6TTAgODEuNTRDMCAzNi43MyAzNi42My43NCA4Mi40My43NGMyNy45NDctLjE5NiA1NC4xODIgMTMuNzM3IDY5LjY3IDM3bC0zNC4zNCAxOS45MmE0Mi45NzIgNDIuOTcyIDAgMDAtMzUuMzMtMTguMzJjLTIzLjU1IDAtNDIuODUgMTkuNjMtNDIuODUgNDIuMiAwIDIyLjU3IDE5LjMgNDIuMiA0Mi44NSA0Mi4yYTQyLjUwMiA0Mi41MDIgMCAwMDM2LjMxLTIwbDM0IDIwLjI4Yy0xNS4zMDcgMjMuOTU1LTQxLjkwMiAzOC40MzEtNzAuMzMgMzguMjhDMzYuNjMgMTYyLjM0IDAgMTI1LjY2IDAgODEuNTR6IiBmaWxsPSIjMDA1NkQyIiBmaWxsLXJ1bGU9Im5vbnplcm8iLz48L3N2Zz4=,data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE2LjIuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPgo8c3ZnIHZpZXdCb3g9IjAgMCAxMTU1IDE2NCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLW1pdGVybGltaXQ9IjIiPjxwYXRoIGQ9Ik0xNTkuNzUgODEuNTRjMC00NC40OSAzNi42My04MC40NyA4Mi40My04MC40NyA0Ni4xMiAwIDgyLjc2IDM2IDgyLjc2IDgwLjQ3IDAgNDQuMTYtMzYuNjQgODAuOC04Mi43NiA4MC44LTQ1LjggMC04Mi40My0zNi42OC04Mi40My04MC44em0xMjUuNjEgMGMwLTIyLjI0LTE5LjMtNDEuODctNDMuMTgtNDEuODctMjMuNTUgMC00Mi44NSAxOS42My00Mi44NSA0MS44NyAwIDIyLjU3IDE5LjMgNDIuMiA0Mi44NSA0Mi4yIDIzLjkyIDAgNDMuMTgtMTkuNjMgNDMuMTgtNDIuMnptNzA1LjYzIDEuMzFjMC00OC43NCAzOS41OC04MS43OCA3NS41Ny04MS43OCAyNC41MyAwIDM4LjYgNy41MiA0OC4wOCAyMS45MmwzLjc3LTE5aDM2Ljc5djE1NS40aC0zNi43OWwtNC43NS0xNmMtMTAuNzkgMTEuNzgtMjQuMjEgMTktNDcuMSAxOS0zNS4zMy0uMDUtNzUuNTctMzEuMTMtNzUuNTctNzkuNTR6bTEyNS42MS0uMzNjLS4wOS0yMy41MjctMTkuNDctNDIuODM1LTQzLTQyLjgzNS0yMy41OSAwLTQzIDE5LjQxMS00MyA0M3YuMTY1YzAgMjEuNTkgMTkuMyA0MC44OSA0Mi44NiA0MC44OSAyMy44NSAwIDQzLjE0LTE5LjMgNDMuMTQtNDEuMjJ6TTk0NS43OCAyMlY0aC00MC4yM3YxNTUuMzloNDAuMjNWNzUuNjZjMC0yNS4xOSAxMi40NC0zOC4yNyAzNC0zOC4yNyAxLjQzIDAgMi43OS4xIDQuMTIuMjNMOTkxLjM2LjExYy0yMC45Ny4xMS0zNi4xNyA3LjMtNDUuNTggMjEuODl6bS00MDQuMjcuMDF2LTE4bC00MC4yMy4wOS4zNCAxNTUuMzcgNDAuMjMtLjA5LS4yMi04My43MmMtLjA2LTI1LjE4IDEyLjM1LTM4LjI5IDMzLjkzLTM4LjM0IDEuMzc2LjAwNCAyLjc1Mi4wODEgNC4xMi4yM0w1ODcuMSAwYy0yMSAuMTctMzYuMjIgNy4zOS00NS41OSAyMi4wMXpNMzM4Ljg4IDk5LjJWNC4wMWg0MC4yMlY5NC4zYzAgMTkuOTUgMTEuMTIgMzEuNzMgMzAuNDIgMzEuNzMgMjEuNTkgMCAzNC0xMy4wOSAzNC0zOC4yOFY0LjAxaDQwLjI0djE1NS4zOGgtNDAuMjF2LTE4Yy05LjQ4IDE0LjcyLTI0Ljg2IDIxLjkyLTQ2LjEyIDIxLjkyLTM1Ljk4LjAxLTU4LjU1LTI2LjE2LTU4LjU1LTY0LjExem0zOTEuNzQtMTcuNDhjLjA5LTQzLjUxIDMxLjIzLTgwLjc0IDgwLjYyLTgwLjY1IDQ1LjguMDkgNzguMTEgMzYuNzggNzggODAgLjAxIDQuMjczLS4zMyA4LjU0LTEgMTIuNzZsLTExOC40MS0uMjJjNC41NCAxOC42NSAxOS44OSAzMi4wOSA0My4xMiAzMi4xNCAxNC4wNiAwIDI5LjEyLTUuMTggMzguMy0xNi45NGwyNy40NCAyMmMtMTQuMTEgMTkuOTMtMzkgMzEuNjYtNjUuNDggMzEuNjEtNDYuNzUtLjE2LTgyLjY3LTM1LjIzLTgyLjU5LTgwLjd6bTExOC4xMi0xNi4xNGMtMi4yNi0xNS43LTE4LjU5LTI3Ljg0LTM3Ljg5LTI3Ljg3LTE4LjY1IDAtMzMuNzEgMTEuMDYtMzkuNjMgMjcuNzNsNzcuNTIuMTR6bS0yNjEuNCA1OS45NGwzNS43Ni0xOC43MmM1LjkxIDEyLjgxIDE3LjczIDIwLjM2IDM0LjQ4IDIwLjM2IDE1LjQzIDAgMjEuMzQtNC45MiAyMS4zNC0xMS44MiAwLTI1LTg0LjcxLTkuODUtODQuNzEtNjcgMC0zMS41MiAyNy41OC00OC4yNiA2MS43Mi00OC4yNiAyNS45NCAwIDQ4LjkyIDExLjQ5IDYxLjQgMzIuODNsLTM1LjQ0IDE4Ljc1Yy01LjI1LTEwLjUxLTE1LjEtMTYuNDItMjcuNTgtMTYuNDItMTIuMTQgMC0xOC4wNiA0LjI3LTE4LjA2IDExLjQ5IDAgMjQuMyA4NC43MSA4Ljg3IDg0LjcxIDY3IDAgMzAuMjEtMjQuNjIgNDguNTktNjQuMzUgNDguNTktMzMuODItLjAzLTU3LjQ2LTExLjE5LTY5LjI3LTM2Ljh6TTAgODEuNTRDMCAzNi43MyAzNi42My43NCA4Mi40My43NGMyNy45NDctLjE5NiA1NC4xODIgMTMuNzM3IDY5LjY3IDM3bC0zNC4zNCAxOS45MmE0Mi45NzIgNDIuOTcyIDAgMDAtMzUuMzMtMTguMzJjLTIzLjU1IDAtNDIuODUgMTkuNjMtNDIuODUgNDIuMiAwIDIyLjU3IDE5LjMgNDIuMiA0Mi44NSA0Mi4yYTQyLjUwMiA0Mi41MDIgMCAwMDM2LjMxLTIwbDM0IDIwLjI4Yy0xNS4zMDcgMjMuOTU1LTQxLjkwMiAzOC40MzEtNzAuMzMgMzguMjhDMzYuNjMgMTYyLjM0IDAgMTI1LjY2IDAgODEuNTR6IiBmaWxsPSIjMDA1NkQyIiBmaWxsLXJ1bGU9Im5vbnplcm8iLz48L3N2Zz4=,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/5CFC8u8XiXcbSOlVv6JZQx/4e6f898f57f9d798437b3aa22026e30b/CourseraLearners_C_Composition_Hillary_copy__3_.png?auto=format%2Ccompress&dpr=1&w=459&h=497&q=40,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/77hmeEJo3ZPlURCU02fD52/aa37b7f7b52285ba350acac62d8af5c1/illinois-3.png?auto=format%2Ccompress&dpr=1&h=32,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/6XkOucZz6pMLV5DPvXCgCL/1777129a58b0a62b237bd28e9956afe8/duke-3.png?auto=format%2Ccompress&dpr=1&h=32,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/1c6RjBHi3Lqb9QpWxje7iA/b529f909c5230af3210ba2d47d149620/google.png?auto=format%2Ccompress&dpr=1&h=37,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/60SA8pGxPXMmJf4n7umK1H/ccec31bbe2358210bf8391dcba6cd2f1/umich.png?auto=format%2Ccompress&dpr=1&h=55,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/3toC4I7jbWxiedfxiyNjtT/735faeaf976a9692f425f8c3a7d125dc/1000px-IBM_logo.svg.png?auto=format%2Ccompress&dpr=1&h=37,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/FHOd44z40jTFsSSao84AM/d1e357f5650a23bf2936114112d44445/imperial.png?auto=format%2Ccompress&dpr=1&h=35,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/4FSFmNXuDIzTvFb7n0v4mK/704ae9e0a7981fb6415f4cb4609bbbb3/stanford.svg?auto=format%2Ccompress&dpr=1&h=27,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/1ZeiauXe5bPProvfuIo7o2/55d005d42979ab585cdfa01f825b7d4f/penn.svg?auto=format%2Ccompress&dpr=1&h=37,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera_assets.s3.amazonaws.com/images/6bb3e56bee1039824ca0e77ca81fbaa7.png?auto=format%2Ccompress&dpr=1&w=800,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/6xXERT0XZPJDXgjPzr8Bve/d858e0cda1a5e5df2cb8accd65d5c1b7/outcomes.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=606,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/N4qrT1XIveNL5SMHSkjTH/b57854e9246bd3aa9fe9ebc51ce650d1/Circle_Kenia.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=202,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/66DwUMt1tQTmR4q1JaHPdV/71cbdd4415999eecfcd899283086260c/Circle_Ryan.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=202,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/28Nv1NZrGQsLf4kt8CXMdd/66d2002ee1d804a0a1a9729376648060/Vishal_Verma.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=202,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/13nB6DdjBJdV5aWWWB5DbH/115574ebbc6de3dffd98daed665dc736/loreal.svg?auto=format%2Ccompress&dpr=1&w=60%25&h=18,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/2aaUOe2Jitm1Z6OPdylXsL/37974ceb0982ccf2c6fabf3fa6bdb5bc/pandg.svg?auto=format%2Ccompress&dpr=1&w=60%25&h=40,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/2gSh2ySvHF7nLxtb9dlQEt/764bae06b9276de25caa4ed11bf14000/tata.svg?auto=format%2Ccompress&dpr=1&w=60%25&h=37,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/6cQLsEIdYwjlG4whpJ0bau/5cb01b12278ee726314800c15f08c5e2/DANONE_LOGO.png?auto=format%2Ccompress&dpr=1&w=60%25&h=36,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/46IDJ7jA1jOzKUcuJEdv9x/bccbe406253ab481290052d1580d7eae/Emirates_NBD_logo.png?auto=format%2Ccompress&dpr=1&w=60%25&h=30,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/2jYSxpX0am6lmzOXiF01eb/b2dad4d9e4844a15e828990aa09b6377/Reliance_logo-2.svg?auto=format%2Ccompress&dpr=1&w=60%25&h=30,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/1GFMf2tN2JubXPXodUfEhU/f60a309a58fd4a5e750f0497e24a52ab/logo-capgemini.svg?auto=format%2Ccompress&dpr=1&w=60%25&h=30,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/1Td6rChmrhf755FaNcHMkw/7f172851005dc6275667c667ffa2678a/logo-petrobras.svg?auto=format%2Ccompress&dpr=1&w=60%25&h=30,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/7ynjohQJbi7h24Qk5uUyPW/399503cb97a2775554f28921721d6fd1/General_Electric_logo.svg?auto=format%2Ccompress&dpr=1&w=60%25&h=30,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera_assets.s3.amazonaws.com/front-page-rebrand/secondary-consumer-cta/Image-Next-Step.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=471,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d3njjcbhbojbot.cloudfront.net/web/images/icons/download_on_the_app_store_badge_en.svg?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=152&h=45&w=152,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d3njjcbhbojbot.cloudfront.net/web/images/icons/en_generic_rgb_wo_45.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=152&h=45&w=152,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d3njjcbhbojbot.cloudfront.net/web/images/icons/2018-B-Corp-Logo-Black-S.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=151&w=82&h=120,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://s3.amazonaws.com/coursera_assets/footer/facebook.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=28&h=28&w=28,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://s3.amazonaws.com/coursera_assets/footer/linkedin.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=28&h=28&w=28,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://s3.amazonaws.com/coursera_assets/footer/twitter.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=28&h=28&w=28,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://s3.amazonaws.com/coursera_assets/footer/youtube.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=28&h=28&w=28,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://s3.amazonaws.com/coursera_assets/footer/instagram.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=28&h=28&w=28,https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera_assets.s3.amazonaws.com/images/9b7e964107839c77644d7e7d15035b73.png?auto=format%2Ccompress&dpr=2&blur=200&px=8&max-w=28&h=28&w=28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `internal_link`
--

CREATE TABLE `internal_link` (
  `id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `crawled_data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internal_link`
--

INSERT INTO `internal_link` (`id`, `url`, `user_id`, `title`, `crawled_data_id`) VALUES
(1, 'https://www.youtube.com/', 3, NULL, 14),
(2, 'https://www.youtube.com/', 3, NULL, 14),
(3, 'https://www.youtube.com/about/', 3, NULL, 14),
(4, 'https://www.youtube.com/about/press/', 3, NULL, 14),
(5, 'https://www.youtube.com/about/copyright/', 3, NULL, 14),
(6, 'https://www.youtube.com/t/contact_us/', 3, NULL, 14),
(7, 'https://www.youtube.com/creators/', 3, NULL, 14),
(8, 'https://www.youtube.com/ads/', 3, NULL, 14),
(9, 'https://www.youtube.com/t/terms', 3, NULL, 14),
(10, 'https://www.youtube.com/t/privacy', 3, NULL, 14),
(11, 'https://www.youtube.com/about/policies/', 3, NULL, 14),
(12, 'https://www.youtube.com/howyoutubeworks?utm_campaign=ytgen&utm_source=ythp&utm_medium=LeftNav&utm_content=txt&u=https%3A%2F%2Fwww.youtube.com%2Fhowyoutubeworks%3Futm_source%3Dythp%26utm_medium%3DLeftNav%26utm_campaign%3Dytgen', 3, NULL, 14),
(13, 'https://www.youtube.com/new', 3, NULL, 14),
(14, 'https://www.coursera.org/', 3, NULL, 16),
(15, 'https://www.coursera.org/business?utm_content=corp-to-home-for-enterprise&utm_campaign=website&utm_medium=coursera&utm_source=header&utm_term=b-out', 3, NULL, 16),
(16, 'https://www.coursera.org/campus?utm_content=corp-to-landing-for-campus&utm_campaign=website&utm_medium=coursera&utm_source=header&utm_term=b-out', 3, NULL, 16),
(17, 'https://www.coursera.org/government?utm_content=corp-to-landing-for-government&utm_campaign=website&utm_medium=coursera&utm_source=header&utm_term=b-out', 3, NULL, 16),
(18, 'https://www.coursera.org/', 3, NULL, 16),
(19, 'https://www.coursera.org/degrees', 3, NULL, 16),
(20, 'https://www.coursera.org/career-academy', 3, NULL, 16),
(21, 'https://www.coursera.org/?authMode=login', 3, NULL, 16),
(22, 'https://www.coursera.org/?authMode=signup', 3, NULL, 16),
(23, 'https://www.coursera.org/', 3, NULL, 16),
(24, 'https://www.coursera.org/explore/certification-preparation-courses?utm_medium=coursera&utm_source=bluebanner&utm_campaign=certpreplaunch', 3, NULL, 16),
(25, 'https://www.coursera.org/business?utm_campaign=website&utm_content=banner-from-B2C-home-try-business&utm_medium=coursera&utm_source=enterprise', 3, NULL, 16),
(26, 'https://www.coursera.org/about/partners', 3, NULL, 16),
(27, 'https://www.coursera.org/partners/illinois', 3, NULL, 16),
(28, 'https://www.coursera.org/partners/duke', 3, NULL, 16),
(29, 'https://www.coursera.org/partners/google', 3, NULL, 16),
(30, 'https://www.coursera.org/partners/umich', 3, NULL, 16),
(31, 'https://www.coursera.org/partners/ibm-skills-network', 3, NULL, 16),
(32, 'https://www.coursera.org/partners/imperial', 3, NULL, 16),
(33, 'https://www.coursera.org/partners/stanford', 3, NULL, 16),
(34, 'https://www.coursera.org/partners/penn', 3, NULL, 16),
(35, 'https://www.coursera.org/career-academy', 3, NULL, 16),
(36, 'https://www.coursera.org/career-academy', 3, NULL, 16),
(37, 'https://www.coursera.org/explore/generative-ai', 3, NULL, 16),
(38, 'https://www.coursera.org/explore/generative-ai', 3, NULL, 16),
(39, 'https://www.coursera.org/browse/data-science', 3, NULL, 16),
(40, 'https://www.coursera.org/browse/business', 3, NULL, 16),
(41, 'https://www.coursera.org/browse/computer-science', 3, NULL, 16),
(42, 'https://www.coursera.org/browse/life-sciences', 3, NULL, 16),
(43, 'https://www.coursera.org/browse/social-sciences', 3, NULL, 16),
(44, 'https://www.coursera.org/browse/personal-development', 3, NULL, 16),
(45, 'https://www.coursera.org/browse/arts-and-humanities', 3, NULL, 16),
(46, 'https://www.coursera.org/browse/physical-science-and-engineering', 3, NULL, 16),
(47, 'https://www.coursera.org/browse/language-learning', 3, NULL, 16),
(48, 'https://www.coursera.org/browse/information-technology', 3, NULL, 16),
(49, 'https://www.coursera.org/browse/math-and-logic', 3, NULL, 16),
(50, 'https://www.coursera.org/business?utm_campaign=website&utm_content=banner-from-B2C-home-for-enterprise&utm_medium=coursera&utm_source=enterprise', 3, NULL, 16),
(51, 'https://www.coursera.org/business/teams?utm_campaign=website&utm_content=banner-from-B2C-home-for-teams&utm_medium=coursera&utm_source=enterprise', 3, NULL, 16),
(52, 'https://www.coursera.org/courses?query=chatgpt', 3, NULL, 16),
(53, 'https://www.coursera.org/courses?query=coding', 3, NULL, 16),
(54, 'https://www.coursera.org/courses?query=computer%20science&topic=Computer%20Science', 3, NULL, 16),
(55, 'https://www.coursera.org/courses?query=cybersecurity', 3, NULL, 16),
(56, 'https://www.coursera.org/courses?query=devops', 3, NULL, 16),
(57, 'https://www.coursera.org/courses?query=ethical%20hacking', 3, NULL, 16),
(58, 'https://www.coursera.org/courses?query=generative%20ai', 3, NULL, 16),
(59, 'https://www.coursera.org/courses?query=java', 3, NULL, 16),
(60, 'https://www.coursera.org/courses?query=python', 3, NULL, 16),
(61, 'https://www.coursera.org/courses?query=web%20development', 3, NULL, 16),
(62, 'https://www.coursera.org/courses?query=artificial%20intelligence', 3, NULL, 16),
(63, 'https://www.coursera.org/courses?query=big%20data', 3, NULL, 16),
(64, 'https://www.coursera.org/courses?query=business%20analysis', 3, NULL, 16),
(65, 'https://www.coursera.org/courses?query=data%20analytics', 3, NULL, 16),
(66, 'https://www.coursera.org/courses?query=data%20science&topic=Data%20Science', 3, NULL, 16),
(67, 'https://www.coursera.org/courses?query=financial%20modeling', 3, NULL, 16),
(68, 'https://www.coursera.org/courses?query=machine%20learning&skills=Machine%20Learning', 3, NULL, 16),
(69, 'https://www.coursera.org/courses?query=microsoft%20excel', 3, NULL, 16),
(70, 'https://www.coursera.org/courses?query=microsoft%20power%20bi', 3, NULL, 16),
(71, 'https://www.coursera.org/courses?query=sql', 3, NULL, 16),
(72, 'https://www.coursera.org/courses?query=accounting', 3, NULL, 16),
(73, 'https://www.coursera.org/courses?query=digital%20marketing', 3, NULL, 16),
(74, 'https://www.coursera.org/courses?query=e-commerce', 3, NULL, 16),
(75, 'https://www.coursera.org/courses?query=finance&skills=Finance', 3, NULL, 16),
(76, 'https://www.coursera.org/courses?query=google', 3, NULL, 16),
(77, 'https://www.coursera.org/courses?query=graphic%20design', 3, NULL, 16),
(78, 'https://www.coursera.org/courses?query=ibm', 3, NULL, 16),
(79, 'https://www.coursera.org/courses?query=marketing&skills=Marketing', 3, NULL, 16),
(80, 'https://www.coursera.org/courses?query=project%20management', 3, NULL, 16),
(81, 'https://www.coursera.org/courses?query=social%20media%20marketing', 3, NULL, 16),
(82, 'https://www.coursera.org/articles/essential-it-certifications-entry-level-and-beginner', 3, NULL, 16),
(83, 'https://www.coursera.org/articles/high-income-skills', 3, NULL, 16),
(84, 'https://www.coursera.org/articles/the-pmp-certification-a-guide-to-getting-started', 3, NULL, 16),
(85, 'https://www.coursera.org/articles/how-to-learn-artificial-intelligence', 3, NULL, 16),
(86, 'https://www.coursera.org/articles/popular-cybersecurity-certifications', 3, NULL, 16),
(87, 'https://www.coursera.org/articles/data-analytics-certification', 3, NULL, 16),
(88, 'https://www.coursera.org/articles/what-does-a-data-analyst-do-a-career-guide', 3, NULL, 16),
(89, 'https://www.coursera.org/resources', 3, NULL, 16),
(90, 'https://www.coursera.org/resources/career-quiz', 3, NULL, 16),
(91, 'https://www.coursera.org/browse', 3, NULL, 16),
(92, 'https://www.coursera.org/courseraplus', 3, NULL, 16),
(93, 'https://www.coursera.org/professional-certificate', 3, NULL, 16),
(94, 'https://www.coursera.org/mastertrack', 3, NULL, 16),
(95, 'https://www.coursera.org/degrees', 3, NULL, 16),
(96, 'https://www.coursera.org/business?utm_campaign=website&utm_content=corp-to-home-footer-for-enterprise&utm_medium=coursera&utm_source=enterprise', 3, NULL, 16),
(97, 'https://www.coursera.org/government?utm_campaign=website&utm_content=corp-to-home-footer-for-government&utm_medium=coursera&utm_source=enterprise', 3, NULL, 16),
(98, 'https://www.coursera.org/campus?utm_campaign=website&utm_content=corp-to-home-footer-for-campus&utm_medium=coursera&utm_source=enterprise', 3, NULL, 16),
(99, 'https://www.coursera.org/social-impact', 3, NULL, 16),
(100, 'https://www.coursera.org/courses?query=free', 3, NULL, 16),
(101, 'https://www.coursera.org/explore/ects-credit-recommendation', 3, NULL, 16),
(102, 'https://www.coursera.org/partners', 3, NULL, 16),
(103, 'https://www.coursera.org/teaching-center', 3, NULL, 16),
(104, 'https://www.coursera.org/about/press', 3, NULL, 16),
(105, 'https://www.coursera.org/about/terms', 3, NULL, 16),
(106, 'https://www.coursera.org/about/privacy', 3, NULL, 16),
(107, 'https://www.coursera.org/about/contact', 3, NULL, 16),
(108, 'https://www.coursera.org/articles', 3, NULL, 16),
(109, 'https://www.coursera.org/directory', 3, NULL, 16),
(110, 'https://www.coursera.org/about/cookies-manage', 3, NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `role`) VALUES
(1, 'omer', 'omerkham12345@gmail.com', '$2b$12$dN0bZztPUosgR3jU8OQcVeui/1pSIxZweQ7qCpGUW0HmlgpaU3HIS', 'user'),
(2, 'taha', 'taha@gmail.com', '$2b$12$mxofQ7hQLlIkDth85BBRIeYp0zidwPgzZGPvkUaGDwuYJx/iBSPWK', 'user'),
(3, 'hamza', 'hamza@gmail.com', '$2b$12$eFPcj6tpDrnRtWK3giXuG.j5NPkPcfl62F8nPucF4zd4s0mGLfXO.', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `crawled_data`
--
ALTER TABLE `crawled_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `internal_link`
--
ALTER TABLE `internal_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `crawled_data_id` (`crawled_data_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crawled_data`
--
ALTER TABLE `crawled_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `internal_link`
--
ALTER TABLE `internal_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crawled_data`
--
ALTER TABLE `crawled_data`
  ADD CONSTRAINT `crawled_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `internal_link`
--
ALTER TABLE `internal_link`
  ADD CONSTRAINT `internal_link_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `internal_link_ibfk_2` FOREIGN KEY (`crawled_data_id`) REFERENCES `crawled_data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
