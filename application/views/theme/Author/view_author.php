<?php 
    $this->load->view('theme/author/header');
    ?>
    <head>
        <title>Author Section</title>
    </head>
    
            <!-- Header Part -->
            <!-- Main container start -->
            <div class="main-container">
                <div class="wrapper_main">
                    <div class="title">
                        Add Author Section
                        </div>

                        <div class="form">
                            <form action="<?php echo site_url('user/updateauthor/'.$viewauthor->id)?>" method="post" enctype="multipart/form-data">
                            <div class="input_field">
                                    <label>Author Name</label>
                                   
                                    <label class="input"><?php echo $viewauthor->authorname;?></label>
                                </div>
                                <div class="input_field">
                                    <label>Username</label>
                                    <label class="input"><?php echo $viewauthor->username;?></label>
                                   
                                </div>
                                <div class="input_field">
                                    <label>Password</label>
                                    <label class="input"><?php echo $viewauthor->password;?></label>
                                    
                                </div> 
                                <div class="input_field">
                                    <label>Email</label>
                                    <label class="input"><?php echo $viewauthor->email;?></label>
                                   
                                </div>
                                <div class="input_field">
                                    <label>Author Description</label>
                                    <label class="textarea" style="height: auto;"><?php echo $viewauthor->authordescription;?></label>
                                    
                                </div>
            
                                
                                <div class="image_field">
                                    <label>Author Picture</label>
                                   

                                    <?php if($viewauthor->authorpicture){?>
                                    <img width="20%" src="<?php echo site_url('asset/uploads/'.$viewauthor->authorpicture);?>">
                                    <?php }?>
                                </div>
            
                            

                </form>
                </div>
            </div>
              <!-- Main container end -->
        </div>
         <!-- Wrapper end -->
         
         <script type="text/javascript">
         $(document).ready(function(){
             $(".sidebar-btn").click(function(){
                $(".wrapper").toggleClass("collapse");
             });
         });
        </script>




    </body>
    </html>