-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 08:32 AM
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
-- Database: `hq2app`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `chat_name` varchar(255) DEFAULT NULL,
  `subChatName` varchar(255) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `chat_name`, `subChatName`, `sender_name`, `sender_id`, `receiver_id`, `created_at`) VALUES
(1, 'General Inquiry', 'John Doe', 'Service Support', '101', '202', '2024-11-23 21:39:49'),
(2, 'BUILDING MAINTENANCE', 'Jaxx', 'Power Washing', '68', '622808132', '2024-11-23 21:44:37'),
(3, 'EVENTS SERVICES', 'Venue Coordinator', 'Jaxx', '68', '622808132', '2024-11-23 21:48:39'),
(4, 'IT SERVICES', 'Troubleshooting and maintenance of hardware infrastructures', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-23 21:50:45'),
(5, 'CLEANING SERVICES', 'Seasonal tasks', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-23 22:14:22'),
(6, 'HVAC SERVICES', 'Fresh Air AHU', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-23 22:34:02'),
(7, 'SAFETY SERVICES', 'Emergency Exit Signage', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 01:25:11'),
(8, 'CLEANING SERVICES', 'Vacuuming & mopping', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 01:27:49'),
(9, 'BUILDING MAINTENANCE', 'Waste Management', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 01:49:13'),
(10, 'BUILDING MAINTENANCE', 'Pest control', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 01:55:01'),
(11, 'BUILDING MAINTENANCE', 'Waste Management', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 01:57:06'),
(12, 'BUILDING MAINTENANCE', 'Exterior plant care', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 02:50:36'),
(13, 'BUILDING MAINTENANCE', 'Waste Management', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 03:20:18'),
(14, 'FURNITURE & FITTINGS', 'Woodworking', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 03:25:30'),
(15, 'BUILDING MAINTENANCE', 'Waste Management', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 03:28:07'),
(16, 'BUILDING MAINTENANCE', 'Pest control', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 03:28:21'),
(17, 'HVAC SERVICES', 'Pressurization fan', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 03:31:15'),
(18, 'CLEANING SERVICES', 'Dusting & polishing', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 05:01:52'),
(19, 'ELECTRICAL/ELECTRONIC SERVICES', 'Audio and Video equipment repairs', 'Jaxx', '68d1bdf122701a32', '622808132d908444', '2024-11-24 05:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `supervisor_id` varchar(255) DEFAULT NULL,
  `service_provider_id` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Pending','Assigned','In Progress','Completed','Cancelled') DEFAULT 'Pending',
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_pics` varchar(255) NOT NULL,
  `supervisor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `category_name`, `category_pics`, `supervisor_id`) VALUES
(1, 'CLEANING SERVICES', 'images/services/category1.jpg', '622808132d908444'),
(2, 'BUILDING MAINTENANCE', 'images/services/category2.jpg', '622808132d908444'),
(3, 'FURNITURE & FITTINGS', 'images/services/category3.jpg', '622808132d908444'),
(4, 'ELECTRICAL/ELECTRONIC SERVICES', 'images/services/category4.jpg', '622808132d908444'),
(5, 'PLUMBING SERVICES', 'images/services/category5.jpg', '622808132d908444'),
(6, 'HVAC SERVICES', 'images/services/category6.jpg', '622808132d908444'),
(7, 'IT SERVICES', 'images/services/category7.jpg', '622808132d908444'),
(8, 'EVENTS SERVICES', 'images/services/category8.jpg', '622808132d908444'),
(9, 'MECHANICAL SERVICES', 'images/services/category9.jpg', '622808132d908444'),
(10, 'SAFETY SERVICES', 'images/services/category10.jpg', '622808132d908444');

-- --------------------------------------------------------

--
-- Table structure for table `job_subcategories`
--

CREATE TABLE `job_subcategories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_subcategories`
--

INSERT INTO `job_subcategories` (`id`, `category_id`, `subcategory_name`) VALUES
(1, 1, 'Dusting & polishing'),
(2, 1, 'Vacuuming & mopping'),
(3, 1, 'Residential Housekeeping'),
(4, 1, 'Office Janitorial service'),
(5, 1, 'Deep Cleaning'),
(6, 1, 'Kitchenette Cleaning'),
(7, 1, 'Carpet Cleaning'),
(8, 1, 'Upholstery Cleaning'),
(9, 1, 'Window cleaning'),
(10, 1, 'Floor Care'),
(11, 1, 'Laundry & ironing'),
(12, 1, 'Organization of cluttered areas'),
(13, 1, 'Landscaping & ground maintenance'),
(14, 1, 'Internal trash & recycling'),
(15, 1, 'Seasonal tasks'),
(16, 1, 'Post construction cleaning'),
(17, 1, 'Special event cleaning'),
(18, 1, 'Power washing of deck & patios'),
(19, 1, 'Cleaning out private gutters & downspouts'),
(20, 1, 'Move-in/move-out cleaning'),
(21, 2, 'Pest control'),
(22, 2, 'Waste Management'),
(23, 2, 'Landscaping'),
(24, 2, 'Exterior plant care'),
(25, 2, 'Power Washing'),
(26, 2, 'Painting & touch-ups'),
(27, 2, 'Drywall repair'),
(28, 2, 'Tile & grout repair'),
(29, 2, 'Lock installation & repairs'),
(30, 2, 'POP repairs'),
(31, 2, 'Wall Decor'),
(32, 2, 'Fumigation'),
(33, 2, 'Welding & brazing'),
(34, 2, 'Grinding & polishing'),
(35, 2, 'Aluminum works'),
(36, 2, 'Leaks & damage repairs'),
(37, 2, 'Roof repairs & replacement'),
(38, 2, 'Structural repairs'),
(39, 2, 'Masonry repairs'),
(40, 2, 'Doors & window adjustment'),
(41, 3, 'Woodworking'),
(42, 3, 'Reupholstering'),
(43, 3, 'Repairing joints'),
(44, 3, 'Replacing hardware'),
(45, 3, 'Refinishing'),
(46, 3, 'Re-gluing'),
(47, 3, 'Furniture polishing'),
(48, 3, 'Furniture Assembly'),
(49, 3, 'Furniture disassembly'),
(50, 3, 'Cushion replacement'),
(51, 3, 'Furniture rearrangement'),
(52, 3, 'Furniture Relocation'),
(53, 3, 'Furniture restoration'),
(54, 3, 'Furniture Maintenance'),
(55, 3, 'Custom modifications'),
(56, 3, 'Cabinet making'),
(57, 3, 'Ceiling repairs'),
(58, 4, 'Re-installation of Fittings'),
(59, 4, 'Re-Wiring'),
(60, 4, 'Lighting fixture installation & repairs'),
(61, 4, 'Maintenance of DBs & Panels'),
(62, 4, 'Maintenance Fire Alarms Systems'),
(63, 4, 'Maintenance CCTV Cameras'),
(64, 4, 'Audio and Video equipment repairs'),
(65, 4, 'Maintenance of Access Control Systems'),
(66, 4, 'Testing and inspection Elect Systems'),
(67, 4, 'Troubleshooting electrical problems'),
(68, 4, 'Electronics Programming & Installation'),
(69, 4, 'Telecoms Installations & Maintenance'),
(70, 4, 'Programming of electronic devices'),
(71, 4, 'Electric motor repairs'),
(72, 4, 'Arc fault & ground fault circuit interrupter repairs'),
(73, 4, 'Circuit board repair & replacement'),
(74, 4, 'Component-level repairs'),
(75, 4, 'Display & Monitor replacement'),
(76, 4, 'Appliances repairs'),
(77, 4, 'Industrial electronic repairs'),
(78, 5, 'Minor plumbing repair'),
(79, 5, 'General plumbing maintenance'),
(80, 5, 'Sprinkler system'),
(81, 5, 'Booster pump'),
(82, 5, 'Swimming pool'),
(83, 5, 'Drain cleaning & Maintenance'),
(84, 5, 'Faucet and fixture repair'),
(85, 5, 'Toilet repair & Adjustment'),
(86, 5, 'Water heater maintenance'),
(87, 5, 'Leak detection and repair'),
(88, 5, 'Pipe Insulation & Protection'),
(89, 5, 'Water Quality testing & Treatment'),
(90, 5, 'Backflow prevention Testing'),
(91, 5, 'Septic system maintenance'),
(92, 5, 'Plumbing Inspection & Audits'),
(93, 6, 'VRV AC unit'),
(94, 6, 'Fresh Air AHU'),
(95, 6, 'Pressurization fan'),
(96, 6, 'Smoke Exhaust fan'),
(97, 6, 'Make up air fan'),
(98, 6, 'Standing AC unit'),
(99, 6, 'VRV Ceiling concealed unit'),
(100, 6, 'Split AC unit indoor/outdoor'),
(101, 6, 'Ceiling cassette unit'),
(102, 6, 'HVAC System Inspection & Audit'),
(103, 6, 'Indoor air quality testing & improvement'),
(104, 6, 'Thermal imaging & Leak Detection'),
(105, 6, 'HVAC Commissioning & Decommissioning'),
(106, 6, 'Maintenance Scheduled & Planning'),
(107, 6, 'Repair & Replacement Part Sourcing'),
(108, 6, 'HVAC System Upgrades & Retrofits'),
(109, 6, 'Control & Automation System Integration'),
(110, 6, 'Building Management System Integration'),
(111, 6, 'Energy Management Monitoring'),
(112, 6, 'HVAC Training for Building Staff'),
(113, 7, 'Troubleshooting and maintenance of hardware infrastructures'),
(114, 7, 'Troubleshooting and maintenance of software infrastructure'),
(115, 7, 'Maintenance of Networking environment/administration'),
(116, 7, 'Enterprise architecture'),
(117, 7, 'Data backup and recovery'),
(118, 7, 'Development operations (DevOps)'),
(119, 7, 'Leveraged Structures (SLAs) Service level Agreements'),
(120, 7, 'Employee consultancy and training'),
(121, 7, 'Implementing Software updates'),
(122, 7, 'Potential threats assessment'),
(123, 7, 'License renewal'),
(124, 7, 'Acquiring and maintaining contingency measures'),
(125, 7, 'Research'),
(126, 7, 'IT asset management/inventory'),
(127, 7, 'Level 1 IT support'),
(128, 7, 'Maintenance and Management of centralized IT structures'),
(129, 7, 'Maintenance and Management of decentralized IT structures'),
(130, 7, 'Cyber security and threat control'),
(131, 7, 'ISP services deployment and management'),
(132, 7, 'Maintenance and Management of Servers and Database'),
(133, 7, 'Help Desk Support'),
(134, 7, 'Network Administration'),
(135, 7, 'System Administration'),
(136, 7, 'Cybersecurity Services'),
(137, 7, 'Data Management'),
(138, 7, 'IT Consulting'),
(139, 7, 'Cloud Services'),
(140, 7, 'IT training'),
(141, 7, 'Technical Writing'),
(142, 7, 'IT Project Management'),
(143, 8, 'Event staffing & Volunteers'),
(144, 8, 'Program Coordinator'),
(145, 8, 'Venue Coordinator'),
(146, 8, 'Hospitality Coordinator'),
(147, 8, 'Event management'),
(148, 8, 'Catering management'),
(149, 8, 'Lightening Operations'),
(150, 8, 'Multimedia Operations'),
(151, 8, 'Publicity, Advertisement and Promotions'),
(152, 8, 'Event Florist'),
(153, 8, 'Costume management'),
(154, 8, 'Security/Bouncer deployment'),
(155, 8, 'Décor & Design'),
(156, 8, 'Entertainment'),
(157, 8, 'Photography & Videography'),
(158, 8, 'Transportation & Logistics'),
(159, 8, 'Registration & Ticketing'),
(160, 9, 'HVAC Equipment Repairs'),
(161, 9, 'Boiler Maintenance'),
(162, 9, 'Air Compressor Servicing'),
(163, 9, 'Refrigeration Maintenance'),
(164, 9, 'Mechanical System Upgrades'),
(165, 9, 'Water Pump Service'),
(166, 9, 'Exhaust & Ventilation Service'),
(167, 9, 'Generator Maintenance'),
(168, 9, 'Elevator Servicing'),
(169, 10, 'Fire Extinguisher Servicing'),
(170, 10, 'Smoke Detector Testing'),
(171, 10, 'Emergency Exit Signage'),
(172, 10, 'First Aid Training'),
(173, 10, 'Safety Equipment Maintenance'),
(174, 10, 'Evacuation Planning'),
(175, 10, 'PPE Training & Supply'),
(176, 10, 'Risk Assessment'),
(177, 10, 'Safety Audits');

-- --------------------------------------------------------

--
-- Table structure for table `lcations`
--

CREATE TABLE `lcations` (
  `id` int(11) NOT NULL,
  `local_government_area` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `house` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `senderName` varchar(255) NOT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `chat_name` varchar(255) DEFAULT NULL,
  `subChatName` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `chat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `job_id`, `sender_id`, `senderName`, `receiver_id`, `message`, `file_path`, `chat_name`, `subChatName`, `timestamp`, `chat_id`) VALUES
(7, NULL, '68d1bdf122701a32', 'jaxx', '622808132d908444', 'hi', NULL, NULL, '', '2024-11-24 04:07:08', 4),
(8, NULL, '622808132d908444', 'Victory', '68d1bdf122701a32', 'howfar na', NULL, NULL, '', '2024-11-24 04:14:55', 4),
(9, NULL, '68d1bdf122701a32', 'Jaxx', '622808132d908444', 'how e be na', NULL, NULL, '', '2024-11-24 04:58:46', 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `service_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category`, `service_name`) VALUES
(1, 'Cleaning Services', 'Dusting & polishing'),
(2, 'Cleaning Services', 'Vacuuming & mopping'),
(3, 'Cleaning Services', 'Residential Housekeeping'),
(4, 'Cleaning Services', 'Office Janitorial service'),
(5, 'Cleaning Services', 'Deep Cleaning'),
(6, 'Cleaning Services', 'Kitchenette Cleaning'),
(7, 'Cleaning Services', 'Carpet Cleaning'),
(8, 'Cleaning Services', 'Upholstery Cleaning'),
(9, 'Cleaning Services', 'Window cleaning'),
(10, 'Cleaning Services', 'Floor Care'),
(11, 'Cleaning Services', 'Laundry & ironing'),
(12, 'Cleaning Services', 'Organization of cluttered areas'),
(13, 'Cleaning Services', 'Landscaping & ground maintenance'),
(14, 'Cleaning Services', 'Internal trash & recycling'),
(15, 'Cleaning Services', 'Seasonal tasks'),
(16, 'Cleaning Services', 'Post construction cleaning'),
(17, 'Cleaning Services', 'Special event cleaning'),
(18, 'Cleaning Services', 'Power washing of deck & patios'),
(19, 'Cleaning Services', 'Cleaning out private gutters & downspouts'),
(20, 'Cleaning Services', 'Move-in/move-out cleaning'),
(21, 'Building Maintenance', 'Pest control'),
(22, 'Building Maintenance', 'Waste Management'),
(23, 'Building Maintenance', 'Landscaping'),
(24, 'Building Maintenance', 'Exterior plant care'),
(25, 'Building Maintenance', 'Power Washing'),
(26, 'Building Maintenance', 'Painting & touch-ups'),
(27, 'Building Maintenance', 'Drywall repair'),
(28, 'Building Maintenance', 'Tile & grout repair'),
(29, 'Building Maintenance', 'Lock installation & repairs'),
(30, 'Building Maintenance', 'POP repairs'),
(31, 'Building Maintenance', 'Wall Decor'),
(32, 'Building Maintenance', 'Fumigation'),
(33, 'Building Maintenance', 'Welding & brazing'),
(34, 'Building Maintenance', 'Grinding & polishing'),
(35, 'Building Maintenance', 'Aluminum works'),
(36, 'Building Maintenance', 'Leaks & damage repairs'),
(37, 'Building Maintenance', 'Roof repairs & replacement'),
(38, 'Building Maintenance', 'Structural repairs'),
(39, 'Building Maintenance', 'Masonry repairs'),
(40, 'Building Maintenance', 'Doors & window adjustment'),
(41, 'Furniture & Fittings', 'Woodworking'),
(42, 'Furniture & Fittings', 'Reupholstering'),
(43, 'Furniture & Fittings', 'Repairing joints'),
(44, 'Furniture & Fittings', 'Replacing hardware'),
(45, 'Furniture & Fittings', 'Refinishing'),
(46, 'Furniture & Fittings', 'Re-gluing'),
(47, 'Furniture & Fittings', 'Furniture polishing'),
(48, 'Furniture & Fittings', 'Furniture Assembly'),
(49, 'Furniture & Fittings', 'Furniture disassembly'),
(50, 'Furniture & Fittings', 'Cushion replacement'),
(51, 'Furniture & Fittings', 'Furniture rearrangement'),
(52, 'Furniture & Fittings', 'Furniture Relocation'),
(53, 'Furniture & Fittings', 'Furniture restoration'),
(54, 'Furniture & Fittings', 'Furniture Maintenance'),
(55, 'Furniture & Fittings', 'Custom modifications'),
(56, 'Furniture & Fittings', 'Cabinet making'),
(57, 'Furniture & Fittings', 'Ceiling repairs'),
(58, 'Electrical/Electronic Services', 'Re-installation of Fittings'),
(59, 'Electrical/Electronic Services', 'Re-Wiring'),
(60, 'Electrical/Electronic Services', 'Lighting fixture installation & repairs'),
(61, 'Electrical/Electronic Services', 'Maintenance of DBs & Panels'),
(62, 'Electrical/Electronic Services', 'Maintenance of Fire Alarms Systems'),
(63, 'Electrical/Electronic Services', 'Maintenance of CCTV Cameras'),
(64, 'Electrical/Electronic Services', 'Audio and Video equipment repairs (Speakers, amplifiers & TVs)'),
(65, 'Electrical/Electronic Services', 'Maintenance of Access Control Systems'),
(66, 'Electrical/Electronic Services', 'Testing and inspection of Elect Systems'),
(67, 'Electrical/Electronic Services', 'Troubleshooting electrical problems'),
(68, 'Electrical/Electronic Services', 'Electronics Programming & Installation'),
(69, 'Electrical/Electronic Services', 'Telecoms Installations & Maintenance'),
(70, 'Electrical/Electronic Services', 'Programming of electronic devices'),
(71, 'Electrical/Electronic Services', 'Electric motor repairs (pumps & fans)'),
(72, 'Electrical/Electronic Services', 'Arc fault & ground fault circuit interrupter repairs'),
(73, 'Electrical/Electronic Services', 'Circuit board repair & replacement'),
(74, 'Electrical/Electronic Services', 'Component-level repairs (capacitors, resistors, and ICs)'),
(75, 'Electrical/Electronic Services', 'Display & Monitor replacement (LCD, LED, & OLED)'),
(76, 'Electrical/Electronic Services', 'Appliance repairs (oven, dishwasher)'),
(77, 'Electrical/Electronic Services', 'Industrial electronic repairs (control systems, sensors)'),
(78, 'Plumbing Services', 'Minor plumbing repair'),
(79, 'Plumbing Services', 'General plumbing maintenance'),
(80, 'Plumbing Services', 'Sprinkler system'),
(81, 'Plumbing Services', 'Booster pump'),
(82, 'Plumbing Services', 'Swimming pool'),
(83, 'Plumbing Services', 'Drain cleaning & Maintenance'),
(84, 'Plumbing Services', 'Faucet and fixture repair'),
(85, 'Plumbing Services', 'Toilet repair & Adjustment'),
(86, 'Plumbing Services', 'Water heater maintenance'),
(87, 'Plumbing Services', 'Leak detection and repair'),
(88, 'Plumbing Services', 'Pipe Insulation & Protection'),
(89, 'Plumbing Services', 'Water Quality testing & Treatment'),
(90, 'Plumbing Services', 'Backflow prevention Testing'),
(91, 'Plumbing Services', 'Septic system maintenance'),
(92, 'Plumbing Services', 'Plumbing Inspection & Audits'),
(93, 'HVAC Services', 'VRV AC unit'),
(94, 'HVAC Services', 'Fresh Air AHU'),
(95, 'HVAC Services', 'Pressurization fan'),
(96, 'HVAC Services', 'Smoke Exhaust fan'),
(97, 'HVAC Services', 'Make-up air fan'),
(98, 'HVAC Services', 'Standing AC unit'),
(99, 'HVAC Services', 'VRV Ceiling concealed unit'),
(100, 'HVAC Services', 'Split AC unit indoor/outdoor'),
(101, 'HVAC Services', 'Ceiling cassette unit'),
(102, 'HVAC Services', 'HVAC System Inspection & Audit'),
(103, 'HVAC Services', 'Indoor air quality testing & improvement'),
(104, 'HVAC Services', 'Thermal imaging & Leak Detection'),
(105, 'HVAC Services', 'HVAC Commissioning & Decommissioning'),
(106, 'HVAC Services', 'Maintenance Scheduling & Planning'),
(107, 'HVAC Services', 'Repair & Replacement Part Sourcing'),
(108, 'HVAC Services', 'HVAC System Upgrades & Retrofits'),
(109, 'HVAC Services', 'Control & Automation System Integration'),
(110, 'HVAC Services', 'Building Management System Integration'),
(111, 'HVAC Services', 'Energy Management Monitoring'),
(112, 'HVAC Services', 'HVAC Training for Building Staff'),
(113, 'IT Services', 'Troubleshooting and maintenance of hardware infrastructure'),
(114, 'IT Services', 'Troubleshooting and maintenance of software infrastructure'),
(115, 'IT Services', 'Maintenance of Networking environment/administration'),
(116, 'IT Services', 'Enterprise architecture'),
(117, 'IT Services', 'Data backup and recovery'),
(118, 'IT Services', 'Development operations (DevOps)'),
(119, 'IT Services', 'Leveraged Structures (SLAs) Service level Agreements'),
(120, 'IT Services', 'Employee consultancy and training'),
(121, 'IT Services', 'Implementing Software updates'),
(122, 'IT Services', 'Potential threats assessment'),
(123, 'IT Services', 'License renewal'),
(124, 'IT Services', 'Acquiring and maintaining contingency measures'),
(125, 'IT Services', 'Research'),
(126, 'IT Services', 'IT asset management/inventory'),
(127, 'IT Services', 'Level 1 IT support'),
(128, 'IT Services', 'Maintenance and Management of centralized IT structures'),
(129, 'IT Services', 'Maintenance and Management of decentralized IT structures'),
(130, 'IT Services', 'Cybersecurity and threat control'),
(131, 'IT Services', 'ISP services deployment and management'),
(132, 'IT Services', 'Maintenance and Management of Servers and Databases'),
(133, 'IT Services', 'Help Desk Support'),
(134, 'IT Services', 'Network Administration'),
(135, 'IT Services', 'System Administration'),
(136, 'IT Services', 'Cybersecurity Services'),
(137, 'IT Services', 'Data Management'),
(138, 'IT Services', 'IT Consulting'),
(139, 'IT Services', 'Cloud Services'),
(140, 'IT Services', 'IT training'),
(141, 'IT Services', 'Technical Writing'),
(142, 'IT Services', 'IT Project Management'),
(143, 'Event Services', 'Event staffing & Volunteers'),
(144, 'Event Services', 'Program Coordinator'),
(145, 'Event Services', 'Venue Coordinator'),
(146, 'Event Services', 'Hospitality Coordinator'),
(147, 'Event Services', 'Event management'),
(148, 'Event Services', 'Catering management'),
(149, 'Event Services', 'Lighting Operations'),
(150, 'Event Services', 'Multimedia Operations'),
(151, 'Event Services', 'Publicity, Advertisement, and Promotions'),
(152, 'Event Services', 'Event Florist'),
(153, 'Event Services', 'Costume management'),
(154, 'Event Services', 'Security/Bouncer deployment'),
(155, 'Event Services', 'Décor & Design'),
(156, 'Event Services', 'Entertainment'),
(157, 'Event Services', 'Photography & Videography'),
(158, 'Event Services', 'Transportation & Logistics'),
(159, 'Event Services', 'Accommodation Management'),
(160, 'Event Services', 'Registration & Ticketing'),
(161, 'Event Services', 'Risk Management'),
(162, 'Event Services', 'Technology & Audio-Visual Support'),
(163, 'Event Services', 'Content Creation'),
(164, 'Event Services', 'Sustainability Services'),
(165, 'Mechanical Services', 'PPM on lifting equipment'),
(166, 'Mechanical Services', 'PPM on generator sets'),
(167, 'Mechanical Services', 'Routine maintenance schedules for various mechanical equipment'),
(168, 'Mechanical Services', 'Mechanical Repairs'),
(169, 'Mechanical Services', 'Troubleshooting'),
(170, 'Mechanical Services', 'Vibration analysis and condition monitoring'),
(171, 'Mechanical Services', 'Equipment calibration'),
(172, 'Mechanical Services', 'Fabrication'),
(173, 'Mechanical Services', 'Welding'),
(174, 'Administrative Services', 'Courier services'),
(175, 'Administrative Services', 'Dispatch services'),
(176, 'Administrative Services', 'Rentals & Event Planning'),
(177, 'Administrative Services', 'Consulting'),
(178, 'Administrative Services', 'Administrative Support');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `type` enum('Deposit','Payment','Withdrawal') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('Pending','Completed','Failed') DEFAULT 'Pending',
  `job_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `typing_status`
--

CREATE TABLE `typing_status` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `chat_with_id` int(11) NOT NULL,
  `is_typing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `firstName` varchar(250) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_role` enum('clients','admin','serviceprovider') DEFAULT 'clients',
  `token` varchar(255) DEFAULT NULL,
  `profileImg` varchar(255) DEFAULT NULL,
  `profile_picture` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `phone`, `password`, `role_id`, `location_id`, `is_active`, `created_at`, `updated_at`, `user_role`, `token`, `profileImg`, `profile_picture`) VALUES
('622808132d908444', 'Victory', 'Madumere', 'victorymadumere6@gmail.com', '09037146462', '$2y$10$d07TlPGU5UgYvxVz1cWKrOMxE4kyrQ3GpsPzR2wYRRw7M5KbzuAVu', 0, 0, 0, '2024-11-17 04:10:26', '2024-11-17 04:10:26', 'clients', '8d11c335c10b8ced1f1f4437768c8a13', NULL, NULL),
('68d1bdf122701a32', 'Jaxx', 'HolyAssasin', 'justicefavour574@gmail.com', '080654594562', '$2y$10$8fVs64svJMjGObzQ7c5q5up1ALFYekWk0ijtTNFoHtc/UMwRmkR2a', 0, 0, 0, '2024-11-22 19:12:44', '2024-11-22 19:12:44', 'clients', 'fe473a8e8360f9967704342728dd8654', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `supervisor_id` (`supervisor_id`),
  ADD KEY `service_provider_id` (`service_provider_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_subcategories`
--
ALTER TABLE `job_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `lcations`
--
ALTER TABLE `lcations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `idx_chat_id` (`chat_id`),
  ADD KEY `fk_sender_id` (`sender_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_id` (`wallet_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `typing_status`
--
ALTER TABLE `typing_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_typing` (`sender_id`,`chat_with_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_subcategories`
--
ALTER TABLE `job_subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typing_status`
--
ALTER TABLE `typing_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`supervisor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `jobs_ibfk_4` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `job_subcategories`
--
ALTER TABLE `job_subcategories`
  ADD CONSTRAINT `job_subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_chat_id` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sender_id` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
