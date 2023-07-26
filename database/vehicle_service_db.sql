-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2023 at 05:03 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_service_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `date_created`) VALUES
(1, '2 Wheeler Vehicle', 1, '2021-09-30 09:42:40'),
(2, '3 Wheeler Vehicle', 1, '2021-09-30 09:43:00'),
(3, '4 Wheeler Vehicle', 1, '2021-09-30 09:43:48'),
(4, '6 Wheeler Vehicle', 1, '2021-09-30 09:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'Aastha Paudel', '98102122412', 'asthapdl@hotmail.com', 1, '2021-09-30 10:26:11'),
(2, 'Riya Magar', '98010122121', 'magarriya122@gmail.com', 1, '2021-09-30 10:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(1, 'contact', '09112355799'),
(1, 'email', 'jsmith@sample.com'),
(1, 'address', 'Sample Address'),
(1, 'vehicle_name', 'Mitsubishi Montero Sport'),
(1, 'vehicle_registration_number', 'GBN 0623'),
(1, 'vehicle_model', 'CDM-10140715'),
(1, 'service_id', '3,2,4'),
(1, 'pickup_address', 'Here St., There City, Sample Only 623'),
(3, 'contact', '021545883'),
(3, 'email', 'handsomekumar@gmail.com'),
(3, 'address', 'lamachaur Pokhara'),
(3, 'vehicle_name', 'Maruti 500'),
(3, 'vehicle_registration_number', '12345678'),
(3, 'vehicle_model', '9854'),
(3, 'service_id', '2'),
(3, 'pickup_address', 'wrc gate'),
(4, 'contact', '021355122'),
(4, 'email', 'kanxar@gmail.com'),
(4, 'address', 'lamachaur Pokhara'),
(4, 'vehicle_name', 'maruti 800'),
(4, 'vehicle_registration_number', '45564612456'),
(4, 'vehicle_model', 'nnc'),
(4, 'service_id', '2'),
(4, 'pickup_address', 'hetauda bazar');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `date_created`) VALUES
(1, 'Change Oil', '&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our professional technicians are here to provide you with a comprehensive oil change service that will keep your vehicle running smoothly and efficiently. Regular oil changes are essential for maintaining the health of your engine and prolonging its lifespan. Our experienced team will ensure that your vehicle receives the care it deserves.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;During our oil change service, we follow a meticulous process to guarantee optimal results. Here&#039;s what you can expect:&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;1. Thorough Inspection: Our skilled technicians will start by inspecting your vehicle to assess its current oil condition and identify any potential issues that may require attention.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;2. Drain Old Oil: Using specialized tools, we will carefully remove the old oil from your engine, ensuring that all the residual oil is completely drained. This step is crucial to prevent oil contamination and ensure the proper functioning of your engine.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;3. Replace Oil Filter: We will replace the old oil filter with a brand new, high-quality filter. The oil filter plays a critical role in trapping contaminants and preventing them from circulating in your engine, so a fresh filter is essential for optimal performance.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;4. Add New Oil: After the old oil has been drained and the filter replaced, we will add the recommended type and grade of fresh oil that is suitable for your vehicle. Our experts are knowledgeable about various oil types and will choose the one that best suits your vehicle&#039;s specifications.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;5. Check Fluid Levels: In addition to changing the oil, we will also inspect and top off other essential fluids, such as coolant, brake fluid, power steering fluid, and windshield washer fluid. This ensures that all vital components of your vehicle are properly lubricated and functioning correctly.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;6. Dispose of Used Oil: We are committed to environmental responsibility, so we will carefully collect and dispose of the used oil in an eco-friendly manner. Proper disposal is crucial to prevent contamination and protect our environment.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;7. Additional Inspections: As part of our oil change service, our technicians will perform a visual inspection of various components, including belts, hoses, and the overall condition of your vehicle. This allows us to identify any potential issues or areas that may require further maintenance.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;At the end of our oil change service, you can drive away with the confidence that your vehicle has been given the care it needs to perform at its best. Regular oil changes are essential for preserving engine health, maximizing fuel efficiency, and ensuring a smooth driving experience. Trust our skilled technicians to provide you with a professional and reliable oil change service that will keep your vehicle running smoothly for miles to come.&lt;/p&gt;', 1, '2021-09-30 14:11:21'),
(2, 'Overall Checkup', '&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our comprehensive vehicle check-up service is designed to ensure the overall health and performance of your vehicle. We understand the importance of regular maintenance and thorough inspections to identify potential issues before they become major problems. Our experienced technicians will conduct a detailed examination of key components and systems in your vehicle to provide you with a comprehensive assessment.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;During our vehicle check-up service, here&#039;s what you can expect:&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;1. Visual Inspection: Our technicians will visually inspect various components of your vehicle, including belts, hoses, filters, and the overall condition of the engine bay. This allows us to identify any visible signs of wear, leaks, or damage.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;2. Fluid Level and Condition Check: We will check and top off essential fluids, including engine oil, coolant, brake fluid, power steering fluid, and windshield washer fluid. Additionally, we will assess the condition of these fluids to determine if they require replacement.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;3. Battery Health Assessment: Our experts will inspect the battery terminals for corrosion and ensure a secure connection. We will also test the battery&#039;s voltage and overall health to ensure it is functioning optimally.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;4. Tire Inspection: We will examine the tires for proper inflation, tread wear, and any signs of damage. Our technicians will recommend tire rotations or replacements if necessary to ensure safety and improve fuel efficiency.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;5. Brake System Check: Our technicians will inspect the brake pads, rotors, calipers, and brake lines for wear and damage. We will also assess brake fluid levels and recommend brake fluid flushes if needed.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;6. Suspension and Steering Assessment: We will examine the suspension components, including shocks, struts, and bushings, for signs of wear or leakage. Additionally, we will assess the steering system for proper alignment and responsiveness.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;7. Lights and Electrical System Inspection: Our technicians will check all exterior lights, including headlights, taillights, brake lights, and turn signals, to ensure they are functioning correctly. We will also assess the overall electrical system for any issues or malfunctions.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;8. Engine Diagnostics: Using advanced diagnostic tools, we will perform a comprehensive engine diagnostics scan to identify any error codes or potential issues with engine performance. This allows us to pinpoint specific areas that may require attention.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;9. Maintenance Recommendations: Based on our findings, we will provide you with a detailed report of our inspection results and recommend any necessary maintenance or repairs. Our goal is to keep your vehicle running smoothly, efficiently, and safely.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;At the end of our comprehensive vehicle check-up service, you will have a clear understanding of your vehicle&#039;s current condition and any recommended actions to ensure its optimal performance. Trust our skilled technicians to provide you with a thorough and professional assessment of your vehicle, giving you peace of mind on the road.&lt;/p&gt;', 1, '2021-09-30 14:11:38'),
(3, 'Engine Tune up', '&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our engine tune-up service is designed to optimize the performance and efficiency of your vehicle&#039;s engine, ensuring a smooth and reliable driving experience. Over time, normal wear and tear can cause various components of the engine to degrade, leading to decreased power, decreased fuel efficiency, and potential issues down the line. Our experienced technicians are here to perform a comprehensive tune-up that will rejuvenate your engine and restore its peak performance.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;During our engine tune-up service, we follow a meticulous process to address key areas of your vehicle&#039;s engine system. Here&#039;s what our service entails:&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;1. Diagnostic Assessment: Our skilled technicians will conduct a thorough diagnostic assessment of your vehicle&#039;s engine using advanced diagnostic tools. This assessment helps us identify any underlying issues or areas that require attention.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;2. Spark Plug Replacement: We will inspect and replace the spark plugs if necessary. Spark plugs play a crucial role in the combustion process, and worn-out or faulty spark plugs can lead to misfires, reduced power, and poor fuel efficiency. By installing new, high-quality spark plugs, we ensure optimal ignition and engine performance.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;3. Ignition System Check: Our technicians will inspect the ignition system components, including ignition coils, ignition wires, and the distributor if applicable. Any worn-out or damaged parts will be replaced to ensure a reliable spark and consistent ignition timing.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;4. Fuel System Cleaning: We will perform a fuel system cleaning to remove carbon deposits and other contaminants that can accumulate in the fuel injectors, throttle body, and intake manifold. This process improves fuel atomization, enhances combustion efficiency, and restores fuel economy.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;5. Air Filter Replacement: A clean air filter is vital for proper airflow to the engine. We will inspect the air filter and replace it if necessary, ensuring that your engine receives a sufficient supply of clean air for optimal combustion and performance.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;6. Throttle Body Cleaning: Our technicians will clean the throttle body to remove carbon buildup and deposits that can affect throttle response and engine performance. This process improves airflow and ensures smooth operation of the throttle system.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;7. Fluid Level and Condition Check: We will inspect and top off essential fluids such as engine oil, coolant, brake fluid, and power steering fluid. Additionally, we will check for any leaks or signs of fluid degradation that may require attention.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;8. Timing and Idle Speed Adjustment: Our experts will check and adjust the timing and idle speed as needed to ensure optimal engine performance and smooth operation.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;9. Additional Inspections: As part of our engine tune-up service, our technicians will perform visual inspections of various engine components, including belts, hoses, and the overall condition of your vehicle. This allows us to identify potential issues or areas that may require further maintenance.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;By the end of our engine tune-up service, your vehicle&#039;s engine will be revitalized, delivering improved performance, enhanced fuel efficiency, and a smoother driving experience. Trust our skilled technicians to provide you with a professional and thorough engine tune-up service that will help your vehicle perform at its best..&lt;/p&gt;', 1, '2021-09-30 14:12:03'),
(4, 'Tire Replacement', '&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;When it comes to tire replacement, our expert technicians are here to provide you with top-quality tires and professional installation. We understand the importance of having safe and reliable tires for your vehicle, as they are crucial for traction, handling, and overall road safety. Whether your tires have worn out, suffered damage, or it&#039;s time for a seasonal change, our tire replacement service ensures that you can hit the road with confidence.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;Here&#039;s what you can expect from our tire replacement service:&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;1. Tire Inspection: Our technicians will start by inspecting your current tires to assess their condition, tread depth, and any signs of damage or uneven wear. This evaluation helps us determine if tire replacement is necessary.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;2. Tire Selection: We offer a wide range of high-quality tires from reputable brands to suit various vehicle types and driving preferences. Our knowledgeable staff will help you choose the right tires that meet your specific needs, including considerations such as performance, fuel efficiency, and weather conditions.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;3. Professional Installation: Our experienced technicians will carefully remove the old tires from your vehicle and mount and balance the new ones. Proper mounting and balancing ensure optimal tire performance and minimize vibrations while driving.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;4. Wheel Alignment Check: After the tire replacement, we will perform a wheel alignment check to ensure that your wheels are properly aligned. Wheel alignment affects tire wear and vehicle handling, so we strive to ensure your wheels are aligned correctly for optimal performance.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;5. Tire Disposal: We are committed to environmental responsibility, so we will properly dispose of your old tires in accordance with local regulations. Tire recycling helps minimize waste and contributes to a more sustainable future.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;6. Tire Maintenance Advice: Our technicians will provide you with valuable tire maintenance advice, including proper tire inflation, regular tire rotations, and periodic inspections to maximize the lifespan and performance of your new tires.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;By choosing our tire replacement service, you can trust that you&#039;ll receive high-quality tires and professional installation that meet industry standards. Our goal is to ensure your vehicle is equipped with safe, reliable, and properly fitted tires, allowing you to drive with confidence and peace of mind.&lt;/p&gt;', 1, '2021-09-30 14:12:24'),
(5, 'Tyre  Cleaning', '&lt;p&gt;bjgdisfgkG AJGHFFKHKHS&lt;/p&gt;', 1, '2023-07-02 22:05:59'),
(6, 'diesel and petrol fill', '&lt;p&gt;jhasgKDFGBKdbashikashkfhdask&lt;/p&gt;', 1, '2023-07-24 12:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `owner_name` text NOT NULL,
  `category_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `owner_name`, `category_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(1, 'Mike Williams', 3, 'Pick Up', 1, 2, '2021-09-30 14:48:57'),
(3, 'Handsome Kumar', 2, 'Pick Up', NULL, 0, '2023-07-23 13:16:22'),
(4, 'Ramcharan Ojha', 2, 'Pick Up', NULL, 0, '2023-07-24 12:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Vehicle Service Management System'),
(6, 'short_name', 'VSMS - PHP'),
(11, 'logo', 'uploads/1688313600_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1688313600_1632965760_car-shop-clip.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(6, 'Claire', 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/1632990840_ava.jpg', NULL, 2, '2021-09-30 16:34:02', '2021-09-30 16:35:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
