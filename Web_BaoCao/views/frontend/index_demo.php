
<?php $this->view("frontend/modules/header",$data); ?>
			
<?php $this->view("frontend/modules/sidebar",$data); ?>		
			
<?php $this->view($data['page'],$data); ?>

<?php $this->view("frontend/modules/aboutUS)",$data); ?>
			
<?php $this->view("frontend/modules/footer"); ?>







