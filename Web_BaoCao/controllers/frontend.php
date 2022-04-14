
<?php
	class Frontend extends Controller{
		function __construct(){
			parent::__construct();
			echo "This is the frontend ";
		}
		function index(){
			$this->model = new Frontend_Model();
			$data = array();
			// page home
			$data['page'] = "frontend/pages/home";
			// category
			$data['category'] = $this->model->getCategory();
			// new product
			$data['new_product'] = $this->model->getNewProducts();
			// promotionProduct
			$data['promotionProduct'] = $this->model->getPromotion();
			//bestsellerProduct
			$data['bestsellerProduct'] = $this->model->getBestSeller();
			//
			$this->load->view("frontend/index", $data);

		}
				//chi tiet san pham
			function detail($id){
				$data = array();
				$data['detail'] = $this->model->getDetail($id);
				$data['page'] = 'frontend/pages/detail';
				$data['category'] = $this->model->getCategory();
				$this->load->view('frontend/index', $data);
			}
				// san pham theo danh muc
			function listProducts($catId){
        	    $data['category'] = $this->model->getCategory();
        	    $data['products'] = $this->model->getProductsByCatId($catId);
        	    $data['page'] = 'frontend/pages/listProducts';
        	    $this->load->view('frontend/index', $data);
        	}
				// register
			function register(){
				$data = array();
				$data['page'] = 'frontend/pages/register';
        	    $this->load->view('frontend/modules/header', $data);
				$this->load->view('frontend/pages/register', $data);

			}
			function doRegister(){
				$this->model->doRegister();
				header('Location:../frontend/login');
			}
			//login
			function login(){
				$data = array();
				$data['category'] = $this->model->getCategory();
				$data['page'] = "frontend/pages/login";
				$this->load->view('frontend/index', $data);
			}
			// login
			function doLogin(){
				$user = $this->model->doLogin();
				if(count($user)>0){
					$_SESSION['user'] = $user['name'];
					header("Location:../frontend/index");
				}
				else{
					header("Location:../frontend/login");
				}
				// print_r ($user);
			}
			// logout
			function Logout(){
				unset($_SESSION['user']);
				header("Location:../frontend/login");
			}
			// add to cart
			function AddCart($id){
				if (!isset($_SESSION['cart'])) {
					$_SESSION['cart'] = array();
					$_SESSION['amount'] = array();
					$_SESSION['number_of_item'] = 0;
				}
				$K = array_search($id, $_SESSION['cart']);
				if ($K == false) {
					array_push($_SESSION['cart'],$id);
					array_push($_SESSION['amount'],1);
					$_SESSION['number_of_item']++;
	
				}
				else{
					$_SESSION['amount'][$K]++;
				}
				$data = array();
				$data['category'] = $this->model->getCategory();
				$data['page'] = "frontend/pages/addtocart";
				$this->load->view('frontend/index', $data);
        }
	}
?>