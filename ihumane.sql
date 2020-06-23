-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 09:34 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ihumane`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `bank_name`) VALUES
(2, 'First Bank of Nigeria'),
(6, 'Heritage Bank of Nigeria'),
(7, 'GT Bank');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'Maintenance department'),
(2, 'Software Development'),
(3, 'Accounting');

-- --------------------------------------------------------

--
-- Table structure for table `emolument_report`
--

CREATE TABLE `emolument_report` (
  `emolument_report_id` int(11) NOT NULL,
  `emolument_report_employee_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_unique_id` text NOT NULL,
  `employee_first_name` text NOT NULL,
  `employee_other_name` text DEFAULT NULL,
  `employee_last_name` text NOT NULL,
  `employee_dob` date NOT NULL,
  `employee_personal_email` text NOT NULL,
  `employee_official_email` text DEFAULT NULL,
  `employee_phone_number` text NOT NULL,
  `employee_qualification` text NOT NULL,
  `employee_address` text NOT NULL,
  `employee_location_id` text NOT NULL,
  `employee_job_role_id` text NOT NULL,
  `employee_grade_id` text NOT NULL,
  `employee_account_number` text NOT NULL,
  `employee_bank_id` text NOT NULL,
  `employee_hmo_number` text DEFAULT NULL,
  `employee_hmo_id` text DEFAULT NULL,
  `employee_pensionable` int(11) NOT NULL,
  `employee_pension_number` text DEFAULT NULL,
  `employee_pension_id` text DEFAULT NULL,
  `employee_paye_number` text NOT NULL,
  `employee_passport` text NOT NULL,
  `employee_nysc_details` text NOT NULL,
  `employee_nysc_document` text NOT NULL,
  `employee_employment_date` date NOT NULL,
  `employee_status` int(11) NOT NULL COMMENT '0 ==  Fired \r\n1 == Probationary\r\n2 == Confirmed\r\n3 ==  Retired',
  `employee_stop_date` date DEFAULT NULL,
  `employee_salary_structure_setup` int(11) NOT NULL DEFAULT 0 COMMENT '0 == not setup, 1 == setup',
  `employee_salary_structure_category` int(11) NOT NULL COMMENT '0 == personalize, any other value, categorized'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_unique_id`, `employee_first_name`, `employee_other_name`, `employee_last_name`, `employee_dob`, `employee_personal_email`, `employee_official_email`, `employee_phone_number`, `employee_qualification`, `employee_address`, `employee_location_id`, `employee_job_role_id`, `employee_grade_id`, `employee_account_number`, `employee_bank_id`, `employee_hmo_number`, `employee_hmo_id`, `employee_pensionable`, `employee_pension_number`, `employee_pension_id`, `employee_paye_number`, `employee_passport`, `employee_nysc_details`, `employee_nysc_document`, `employee_employment_date`, `employee_status`, `employee_stop_date`, `employee_salary_structure_setup`, `employee_salary_structure_category`) VALUES
(7, 'ihumane_qt5', 'Ejiroghene', '', 'Oki-petereeeee', '1996-06-16', 'peterejiro96@gmail.com', 'oki-peter@connexxiongroup.com', '(080) 9094-5451', '[\"1\"]', 'bwari', '1', '1', '2', '0150176481', '2', 'pc_fct_3571', '1', 1, '0154175960', '1', '01501746575', '252221390125c3f1a435c6e2c0ad793a.jpg', 'FC19B3571', 'c6ea91ed4f42920eccc280ee0317124a.pdf', '2020-05-14', 2, '2020-06-07', 1, 1),
(8, 'ihumane_3ag', 'Ogheneovie', '', 'Oki-Peter', '1998-05-02', 'ovie@gmail.com', 'ovie@test.com', '(080) 3355-3769', '[\"1\"]', 'Bwari - Fct', '1', '2', '1', '0150176489', '6', 'oki-91', '1', 1, '21321321321', '1', '2321321321321', 'd5a4062d6904d862eb2cc8f13d141d49.png', 'FC19B3571', '170e02227fc749d5ffbfd7090746d4bd.pdf', '2020-05-25', 2, '2020-06-07', 1, 0),
(9, 'ihumane_IRE', 'Olalekan', 'Sulaiman', 'Hassan', '1996-06-16', 'haslek@gmail.com', 'has@connexxiongroup.com', '(070) 6076-4410', '[\"1\"]', 'asaba', '1', '2', '1', '0150176481', '7', '', '0', 1, '0150176481', '1', '', 'fdb1e14fac1f80d55ec080d61dac47e6.png', 'nysc2343_ben', '07d9aeea60e044fbcd27a688df0e75d9.png', '2020-06-08', 1, '0000-00-00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade_name`) VALUES
(1, 'Level 1'),
(2, 'Level 2');

-- --------------------------------------------------------

--
-- Table structure for table `health_insurance`
--

CREATE TABLE `health_insurance` (
  `health_insurance_id` int(11) NOT NULL,
  `health_insurance_hmo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `health_insurance`
--

INSERT INTO `health_insurance` (`health_insurance_id`, `health_insurance_hmo`) VALUES
(1, 'National Health Insurance Scheme');

-- --------------------------------------------------------

--
-- Table structure for table `job_role`
--

CREATE TABLE `job_role` (
  `job_role_id` int(11) NOT NULL,
  `job_name` text NOT NULL,
  `job_description` text NOT NULL,
  `department_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_role`
--

INSERT INTO `job_role` (`job_role_id`, `job_name`, `job_description`, `department_id`) VALUES
(1, 'Lead Engineers', ' Coordination', '1'),
(2, 'Junior Software Developer', 'rubbish', '2');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `loan_id` int(11) NOT NULL,
  `loan_employee_id` int(11) NOT NULL,
  `loan_payment_definition_id` int(11) NOT NULL,
  `loan_amount` double NOT NULL,
  `loan_start_year` int(11) NOT NULL,
  `loan_start_month` int(11) NOT NULL,
  `loan_end_year` int(11) NOT NULL,
  `loan_end_month` int(11) NOT NULL,
  `loan_installments` int(11) NOT NULL,
  `loan_skip_year` int(11) DEFAULT NULL,
  `loan_skip_month` int(11) DEFAULT NULL,
  `loan_monthly_repayment` double NOT NULL,
  `loan_balance` double NOT NULL,
  `loan_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`loan_id`, `loan_employee_id`, `loan_payment_definition_id`, `loan_amount`, `loan_start_year`, `loan_start_month`, `loan_end_year`, `loan_end_month`, `loan_installments`, `loan_skip_year`, `loan_skip_month`, `loan_monthly_repayment`, `loan_balance`, `loan_status`) VALUES
(3, 7, 5, 100000, 2020, 7, 2021, 3, 10, NULL, NULL, 10000, 90000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan_repayment`
--

CREATE TABLE `loan_repayment` (
  `loan_repayment_id` int(11) NOT NULL,
  `loan_repayment_loan_id` int(11) NOT NULL,
  `loan_repayment_amount` double NOT NULL,
  `loan_repayment_type` int(11) NOT NULL COMMENT '1 == credit, 2 == debit',
  `loan_repayment_payroll_month` int(11) NOT NULL,
  `loan_repayment_payroll_year` int(11) NOT NULL,
  `loan_repayment_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_repayment`
--

INSERT INTO `loan_repayment` (`loan_repayment_id`, `loan_repayment_loan_id`, `loan_repayment_amount`, `loan_repayment_type`, `loan_repayment_payroll_month`, `loan_repayment_payroll_year`, `loan_repayment_date`) VALUES
(15, 3, 10000, 1, 6, 2020, '2020-06-22 14:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `loan_reschedule_log`
--

CREATE TABLE `loan_reschedule_log` (
  `loan_log_id` int(11) NOT NULL,
  `loan_log_loan_id` int(11) NOT NULL,
  `loan_log_reschedule_type` int(11) NOT NULL COMMENT '0 == month reschedule\r\n\r\n1 = repayment amount reschedule',
  `loan_log_reschedule_amount` double DEFAULT NULL,
  `loan_log_loan_balance` double NOT NULL,
  `loan_log_skip_month` int(11) DEFAULT NULL,
  `loan_log_skip_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_reschedule_log`
--

INSERT INTO `loan_reschedule_log` (`loan_log_id`, `loan_log_loan_id`, `loan_log_reschedule_type`, `loan_log_reschedule_amount`, `loan_log_loan_balance`, `loan_log_skip_month`, `loan_log_skip_year`) VALUES
(1, 3, 0, NULL, 100000, 6, 2020),
(2, 3, 1, 20000, 100000, NULL, NULL),
(3, 3, 1, 10000, 100000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`) VALUES
(1, 'Lagos - Eti Osa 1');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `log_user_id` text NOT NULL,
  `log_description` text NOT NULL,
  `log_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `log_user_id`, `log_description`, `log_date`) VALUES
(1, '4', 'Updated Loan Repayment', '2020-06-10 00:00:00'),
(2, '4', 'Logged In', '2020-06-11 00:00:00'),
(3, '4', 'Added New Payment Definition', '2020-06-11 00:00:00'),
(4, '4', 'Added New Allowance', '2020-06-11 00:00:00'),
(5, '4', 'Logged In', '2020-06-11 11:46:44'),
(6, '4', 'Logged Out', '2020-06-11 11:48:09'),
(7, '4', 'Logged Out', '2020-06-11 11:49:20'),
(8, '4', 'Logged In', '2020-06-11 11:51:18'),
(9, '4', 'Added New Minimum Tax Rate', '2020-06-11 13:12:47'),
(10, '4', 'Updated Minimum Tax Rate', '2020-06-11 13:23:15'),
(11, '4', 'Updated Minimum Tax Rate', '2020-06-11 13:23:25'),
(12, '4', 'Updated Minimum Tax Rate', '2020-06-11 13:23:36'),
(13, '4', 'Added New Pension Rate', '2020-06-11 13:55:59'),
(14, '4', 'Updated Pension Rate', '2020-06-11 14:05:04'),
(15, '4', 'Updated Pension Rate', '2020-06-11 14:05:14'),
(16, '4', 'Updated Pension Rate', '2020-06-11 14:05:21'),
(17, '4', 'Updated Minimum Tax Rate', '2020-06-11 14:08:22'),
(18, '4', 'Logged In', '2020-06-15 09:28:13'),
(19, '4', 'Updated Payment Definition', '2020-06-15 09:55:51'),
(20, '4', 'Update Employee Record', '2020-06-15 10:50:43'),
(21, '4', 'Added New Payment Definition', '2020-06-15 10:56:11'),
(22, '4', 'Added New Payment Definition', '2020-06-15 10:57:07'),
(23, '4', 'Logged In', '2020-06-15 20:07:25'),
(24, '4', 'Logged In', '2020-06-17 11:17:31'),
(25, '4', 'Logged In', '2020-06-18 09:21:24'),
(26, '4', 'Logged Out', '2020-06-18 09:30:46'),
(27, '4', 'Logged In', '2020-06-18 09:31:24'),
(28, '4', 'Logged Out', '2020-06-18 11:59:09'),
(29, '4', 'Logged In', '2020-06-18 11:59:25'),
(30, '4', 'Logged In', '2020-06-18 14:55:48'),
(31, '4', 'Logged Out', '2020-06-18 14:57:35'),
(32, '4', 'Logged In', '2020-06-19 15:32:13'),
(33, '4', 'Logged In', '2020-06-22 08:50:09'),
(34, '4', 'Logged Out', '2020-06-22 09:35:40'),
(35, '4', 'Logged In', '2020-06-22 09:37:48'),
(36, '4', 'Logged Out', '2020-06-22 14:26:16'),
(37, '4', 'Logged In', '2020-06-22 14:26:41'),
(38, '4', 'Added New Department', '2020-06-22 14:30:27'),
(39, '4', 'Updated Salary Allowance', '2020-06-22 14:39:06'),
(40, '4', 'Added New Allowance', '2020-06-22 14:39:48'),
(41, '4', 'Added New Employee', '2020-06-22 14:44:58'),
(42, '4', 'Add Employee Salary Structure', '2020-06-22 14:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `minimum_tax_rate`
--

CREATE TABLE `minimum_tax_rate` (
  `minimum_tax_rate_id` int(11) NOT NULL,
  `minimum_tax_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `minimum_tax_rate`
--

INSERT INTO `minimum_tax_rate` (`minimum_tax_rate_id`, `minimum_tax_rate`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `other_document`
--

CREATE TABLE `other_document` (
  `other_document_id` int(11) NOT NULL,
  `other_document_employee_id` int(11) NOT NULL,
  `other_document_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_document`
--

INSERT INTO `other_document` (`other_document_id`, `other_document_employee_id`, `other_document_name`) VALUES
(9, 7, '85cbd20d3cafc61717242a470c39627f.pdf'),
(10, 7, '46a4060879bd7ce71313563ee66f0fe0.pdf'),
(11, 7, '0a24d7d24127429378b780dee5d2027e.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `payment_definition`
--

CREATE TABLE `payment_definition` (
  `payment_definition_id` int(11) NOT NULL,
  `payment_definition_payment_code` text NOT NULL,
  `payment_definition_payment_name` text NOT NULL,
  `payment_definition_type` int(11) NOT NULL COMMENT '0 == deduction, 1 == income',
  `payment_definition_variant` int(11) NOT NULL COMMENT '0 == standard, 1 == variant',
  `payment_definition_taxable` int(11) NOT NULL COMMENT '0 == no, 1 == yes',
  `payment_definition_desc` int(11) NOT NULL COMMENT '1 == loan, 2 == tax, 3 == pension, 4 == hmo',
  `payment_definition_basic` int(11) NOT NULL DEFAULT 0,
  `payment_definition_tie_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_definition`
--

INSERT INTO `payment_definition` (`payment_definition_id`, `payment_definition_payment_code`, `payment_definition_payment_name`, `payment_definition_type`, `payment_definition_variant`, `payment_definition_taxable`, `payment_definition_desc`, `payment_definition_basic`, `payment_definition_tie_number`) VALUES
(1, '3001', 'salary', 1, 0, 1, 0, 1, '0'),
(2, '3002', 'Housing Allowance', 1, 0, 0, 0, 0, '0'),
(3, '3003', 'Overtime', 1, 1, 0, 0, 0, '0'),
(5, '3006', 'loan', 0, 1, 0, 1, 0, '0'),
(6, '3008', 'Cooperative Deduction', 0, 0, 0, 0, 0, '0'),
(7, '1001', 'Tax', 0, 0, 0, 2, 0, 'employee_paye_number'),
(8, '1002', 'Pension', 0, 0, 0, 3, 0, 'employee_pension_number');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_month_year`
--

CREATE TABLE `payroll_month_year` (
  `payroll_month_year_id` int(11) NOT NULL,
  `payroll_month_year_month` int(11) NOT NULL,
  `payroll_month_year_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_month_year`
--

INSERT INTO `payroll_month_year` (`payroll_month_year_id`, `payroll_month_year_month`, `payroll_month_year_year`) VALUES
(1, 6, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `pension`
--

CREATE TABLE `pension` (
  `pension_id` int(11) NOT NULL,
  `pension_provider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pension`
--

INSERT INTO `pension` (`pension_id`, `pension_provider`) VALUES
(1, 'Stanbic IBTC Pension Managers');

-- --------------------------------------------------------

--
-- Table structure for table `pension_rate`
--

CREATE TABLE `pension_rate` (
  `pension_rate_id` int(11) NOT NULL,
  `pension_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pension_rate`
--

INSERT INTO `pension_rate` (`pension_rate_id`, `pension_rate`) VALUES
(1, 7.5);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `employee_management` int(11) NOT NULL,
  `payroll_management` int(11) NOT NULL,
  `biometrics` int(11) NOT NULL,
  `configuration` int(11) DEFAULT NULL,
  `hr_configuration` int(11) NOT NULL,
  `payroll_configuration` int(11) NOT NULL,
  `user_management` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `username`, `employee_management`, `payroll_management`, `biometrics`, `configuration`, `hr_configuration`, `payroll_configuration`, `user_management`) VALUES
(2, 'administrator', 1, 1, 1, 1, 1, 1, 1),
(3, 'peterejiro', 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `personalized_salary_structure`
--

CREATE TABLE `personalized_salary_structure` (
  `personalized_id` int(11) NOT NULL,
  `personalized_employee_id` int(11) NOT NULL,
  `personalized_payment_definition` int(11) NOT NULL,
  `personalized_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personalized_salary_structure`
--

INSERT INTO `personalized_salary_structure` (`personalized_id`, `personalized_employee_id`, `personalized_payment_definition`, `personalized_amount`) VALUES
(3, 8, 1, 300000),
(4, 8, 2, 100000),
(5, 9, 1, 5000000),
(6, 9, 2, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `qualification_id` int(11) NOT NULL,
  `qualification_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`qualification_id`, `qualification_name`) VALUES
(1, 'B.Eng (computer)');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(11) NOT NULL,
  `salary_employee_id` int(11) NOT NULL,
  `salary_payment_definition_id` int(11) NOT NULL,
  `salary_pay_month` int(11) NOT NULL,
  `salary_pay_year` int(11) NOT NULL,
  `salary_amount` double NOT NULL,
  `salary_confirmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_id`, `salary_employee_id`, `salary_payment_definition_id`, `salary_pay_month`, `salary_pay_year`, `salary_amount`, `salary_confirmed`) VALUES
(320, 7, 8, 6, 2020, 15000, 1),
(321, 7, 1, 6, 2020, 200000, 1),
(322, 7, 2, 6, 2020, 50000, 1),
(323, 7, 6, 6, 2020, 5000, 1),
(324, 7, 5, 6, 2020, 10000, 1),
(325, 7, 3, 6, 2020, 50000, 1),
(326, 7, 7, 6, 2020, 18666.666666667, 1),
(327, 8, 8, 6, 2020, 22500, 1),
(328, 8, 1, 6, 2020, 300000, 1),
(329, 8, 2, 6, 2020, 100000, 1),
(330, 8, 3, 6, 2020, 50000, 1),
(331, 8, 3, 6, 2020, 50000, 1),
(332, 8, 7, 6, 2020, 18666.666666667, 1),
(333, 9, 8, 6, 2020, 375000, 1),
(334, 9, 1, 6, 2020, 5000000, 1),
(335, 9, 2, 6, 2020, 200000, 1),
(336, 9, 7, 6, 2020, 110666.66666667, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_structure_allowance`
--

CREATE TABLE `salary_structure_allowance` (
  `salary_structure_allowance_id` int(11) NOT NULL,
  `salary_structure_category_id` int(11) NOT NULL,
  `payment_definition_id` int(11) NOT NULL,
  `salary_structure_allowance_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary_structure_allowance`
--

INSERT INTO `salary_structure_allowance` (`salary_structure_allowance_id`, `salary_structure_category_id`, `payment_definition_id`, `salary_structure_allowance_amount`) VALUES
(3, 1, 1, 200000),
(4, 1, 2, 50000),
(5, 1, 6, 5000),
(6, 2, 1, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `salary_structure_category`
--

CREATE TABLE `salary_structure_category` (
  `salary_structure_id` int(11) NOT NULL,
  `salary_structure_category_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary_structure_category`
--

INSERT INTO `salary_structure_category` (`salary_structure_id`, `salary_structure_category_name`) VALUES
(1, 'Software Devlopers'),
(2, 'Human Resource Officer');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `tax_rate_band` text NOT NULL,
  `tax_rate_rate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`tax_rate_id`, `tax_rate_band`, `tax_rate_rate`) VALUES
(1, '300000', '7'),
(2, '300000', '11'),
(3, '500000', '15'),
(4, '500000', '19'),
(5, '1600000', '21'),
(6, '3200000', '24');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `title_id` int(11) NOT NULL,
  `title_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_username` text NOT NULL,
  `user_email` text NOT NULL,
  `user_password` text NOT NULL,
  `user_token` text DEFAULT NULL,
  `user_name` text NOT NULL,
  `user_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_username`, `user_email`, `user_password`, `user_token`, `user_name`, `user_status`) VALUES
(4, 'administrator', 'admin@admin.com', '$2y$10$SlMOyD3Vs./1je91yR3Nueq9/eFKDu9huAOQ54a5kXNpXBU9teadi', '1592832401', 'Administrator Administrator', '1'),
(5, 'peterejiro', 'peterejiro96@gmail.comE', '$2y$10$7OLmMpkXuTEhrMdIIsdnoO4GCUs7yB/Hm7qL6rRAmHEA1lzikvOjW', '', 'Oki-Peter Ejiroghene - test', '1');

-- --------------------------------------------------------

--
-- Table structure for table `variational_payment`
--

CREATE TABLE `variational_payment` (
  `variational_payment_id` int(11) NOT NULL,
  `variational_employee_id` int(11) NOT NULL,
  `variational_payment_definition_id` int(11) NOT NULL,
  `variational_amount` double NOT NULL,
  `variational_confirm` int(11) NOT NULL,
  `variational_payroll_month` text NOT NULL,
  `variational_payroll_year` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variational_payment`
--

INSERT INTO `variational_payment` (`variational_payment_id`, `variational_employee_id`, `variational_payment_definition_id`, `variational_amount`, `variational_confirm`, `variational_payroll_month`, `variational_payroll_year`) VALUES
(5, 7, 3, 50000, 1, '5', '2020'),
(6, 8, 3, 50000, 1, '5', '2020'),
(7, 7, 3, 50000, 1, '6', '2020'),
(8, 8, 3, 50000, 1, '6', '2020'),
(9, 8, 3, 50000, 1, '6', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `work_experience_id` int(11) NOT NULL,
  `employee_id` text NOT NULL,
  `company_name` text NOT NULL,
  `job_description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`work_experience_id`, `employee_id`, `company_name`, `job_description`, `start_date`, `end_date`) VALUES
(4, '3', 'you too mus thso1', 'hgvbnm,', '2020-05-30', '2020-05-23'),
(5, '3', 'I also want this to show 2', 'hgvbnm,', '2020-05-30', '2020-05-23'),
(6, '3', 'this is the company i want to show', 'hgvbnm,', '2020-05-30', '2020-05-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`),
  ADD UNIQUE KEY `bank_name` (`bank_name`) USING HASH;

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `department_name` (`department_name`) USING HASH;

--
-- Indexes for table `emolument_report`
--
ALTER TABLE `emolument_report`
  ADD PRIMARY KEY (`emolument_report_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `employee_unique_id` (`employee_unique_id`) USING HASH,
  ADD UNIQUE KEY `employee_personal_email` (`employee_personal_email`,`employee_official_email`) USING HASH,
  ADD UNIQUE KEY `employee_phone_number` (`employee_phone_number`) USING HASH;

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`),
  ADD UNIQUE KEY `grade_name` (`grade_name`) USING HASH;

--
-- Indexes for table `health_insurance`
--
ALTER TABLE `health_insurance`
  ADD PRIMARY KEY (`health_insurance_id`),
  ADD UNIQUE KEY `health_insurance_hmo` (`health_insurance_hmo`) USING HASH;

--
-- Indexes for table `job_role`
--
ALTER TABLE `job_role`
  ADD PRIMARY KEY (`job_role_id`),
  ADD UNIQUE KEY `job_name` (`job_name`) USING HASH;

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `loan_repayment`
--
ALTER TABLE `loan_repayment`
  ADD PRIMARY KEY (`loan_repayment_id`);

--
-- Indexes for table `loan_reschedule_log`
--
ALTER TABLE `loan_reschedule_log`
  ADD PRIMARY KEY (`loan_log_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`) USING HASH;

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `minimum_tax_rate`
--
ALTER TABLE `minimum_tax_rate`
  ADD PRIMARY KEY (`minimum_tax_rate_id`);

--
-- Indexes for table `other_document`
--
ALTER TABLE `other_document`
  ADD PRIMARY KEY (`other_document_id`);

--
-- Indexes for table `payment_definition`
--
ALTER TABLE `payment_definition`
  ADD PRIMARY KEY (`payment_definition_id`),
  ADD UNIQUE KEY `payment_definition_payment_code` (`payment_definition_payment_code`) USING HASH;

--
-- Indexes for table `payroll_month_year`
--
ALTER TABLE `payroll_month_year`
  ADD PRIMARY KEY (`payroll_month_year_id`);

--
-- Indexes for table `pension`
--
ALTER TABLE `pension`
  ADD PRIMARY KEY (`pension_id`),
  ADD UNIQUE KEY `pension_provider` (`pension_provider`) USING HASH;

--
-- Indexes for table `pension_rate`
--
ALTER TABLE `pension_rate`
  ADD PRIMARY KEY (`pension_rate_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `personalized_salary_structure`
--
ALTER TABLE `personalized_salary_structure`
  ADD PRIMARY KEY (`personalized_id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`qualification_id`),
  ADD UNIQUE KEY `qualification_name` (`qualification_name`) USING HASH;

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `salary_structure_allowance`
--
ALTER TABLE `salary_structure_allowance`
  ADD PRIMARY KEY (`salary_structure_allowance_id`);

--
-- Indexes for table `salary_structure_category`
--
ALTER TABLE `salary_structure_category`
  ADD PRIMARY KEY (`salary_structure_id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `title_name` (`title_name`) USING HASH;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_username` (`user_username`) USING HASH,
  ADD UNIQUE KEY `user_email` (`user_email`) USING HASH;

--
-- Indexes for table `variational_payment`
--
ALTER TABLE `variational_payment`
  ADD PRIMARY KEY (`variational_payment_id`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`work_experience_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emolument_report`
--
ALTER TABLE `emolument_report`
  MODIFY `emolument_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `health_insurance`
--
ALTER TABLE `health_insurance`
  MODIFY `health_insurance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_role`
--
ALTER TABLE `job_role`
  MODIFY `job_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_repayment`
--
ALTER TABLE `loan_repayment`
  MODIFY `loan_repayment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `loan_reschedule_log`
--
ALTER TABLE `loan_reschedule_log`
  MODIFY `loan_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `minimum_tax_rate`
--
ALTER TABLE `minimum_tax_rate`
  MODIFY `minimum_tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `other_document`
--
ALTER TABLE `other_document`
  MODIFY `other_document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_definition`
--
ALTER TABLE `payment_definition`
  MODIFY `payment_definition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payroll_month_year`
--
ALTER TABLE `payroll_month_year`
  MODIFY `payroll_month_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pension`
--
ALTER TABLE `pension`
  MODIFY `pension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pension_rate`
--
ALTER TABLE `pension_rate`
  MODIFY `pension_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personalized_salary_structure`
--
ALTER TABLE `personalized_salary_structure`
  MODIFY `personalized_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `qualification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `salary_structure_allowance`
--
ALTER TABLE `salary_structure_allowance`
  MODIFY `salary_structure_allowance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salary_structure_category`
--
ALTER TABLE `salary_structure_category`
  MODIFY `salary_structure_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `variational_payment`
--
ALTER TABLE `variational_payment`
  MODIFY `variational_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `work_experience_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
