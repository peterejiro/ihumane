<?php


class Biometric extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->library('form_validation');
		$this->load->library('session');

	}

	public function get_employee_biometric($employee_id){

		$this->db->select('*');
		$this->db->from('employee_biometrics');
		$this->db->where('employee_biometrics_employee', $employee_id);
		return $this->db->get()->result();
	}

	public function get_max_finger_id($employee_id){
		$this->db->select_max('employee_biometrics_finger_id');
		$this->db->from('employee_biometrics');
		$this->db->where('employee_biometrics_employee', $employee_id);
		//$this->db->get('employee_biometrics');
		return $this->db->get()->row();
	}

	public function insert($data){
		$this->db->insert('employee_biometrics', $data);
		return true;

	}

	public function insert_login($data){

		$this->db->insert('employee_biometrics_login', $data);
		return true;
	}
	public function insert_clockout($data){

		$this->db->insert('employee_clockout', $data);
		return true;
	}

	public function check_clock_in($employee_id, $date){
		$this->db->select('*');
		$this->db->from('employee_biometrics_login');
		$this->db->where('employee_biometrics_login_employee_id', $employee_id);
		$this->db->like('employee_biometrics_login_time', $date);
		//$this->db->get('employee_biometrics');
		return $this->db->get()->row();

	}

	public function check_clock_in_range($employee_id, $from_date, $to_date){
		$this->db->select('*');
		$this->db->from('employee_biometrics_login');
		$this->db->where('employee_biometrics_login_employee_id', $employee_id);
		$this->db->where('employee_biometrics_login.employee_biometrics_login_time >=', $from_date);
		$this->db->where('employee_biometrics_login.employee_biometrics_login_time <=', $to_date);
		//$this->db->get('employee_biometrics');
		return $this->db->get()->row();

	}

	public function check_today_attendance($date){
		$this->db->select('*');
		$this->db->from('employee_biometrics_login');
		$this->db->join('employee', 'employee.employee_id = employee_biometrics_login.employee_biometrics_login_employee_id');
		$this->db->like('employee_biometrics_login.employee_biometrics_login_time', $date);
		$this->db->order_by('employee_biometrics_login.employee_biometrics_login_time', 'DESC');
		//$this->db->get('employee_biometrics');
		return $this->db->get()->result();

	}

	public function check_attendance($from_date, $to_date){
		$this->db->select('*');
		$this->db->from('employee_biometrics_login');
		$this->db->join('employee', 'employee.employee_id = employee_biometrics_login.employee_biometrics_login_employee_id');
		$this->db->where('employee_biometrics_login.employee_biometrics_login_time >=', $from_date);
		$this->db->where('employee_biometrics_login.employee_biometrics_login_time <=', $to_date);
		//$this->db->like('employee_biometrics_login.employee_biometrics_login_time', $date);
		//$this->db->get('employee_biometrics');
		return $this->db->get()->result();

	}

	public function check_today_clock_out($date){
		$this->db->select('*');
		$this->db->from('employee_clockout');
		$this->db->join('employee', 'employee.employee_id = employee_clockout.employee_clockout_employee_id');
		$this->db->like('employee_clockout.employee_clockout_time', $date);
		//$this->db->get('employee_biometrics');
		return $this->db->get()->result();

	}



	public function check_clockout($employee_id, $date){
		$this->db->select('*');
		$this->db->from('employee_clockout');
		$this->db->where('employee_clockout_employee_id', $employee_id);
		$this->db->like('employee_clockout_time', $date);
		//$this->db->get('employee_biometrics');
		return $this->db->get()->row();

	}






}
