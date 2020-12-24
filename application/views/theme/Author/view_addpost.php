<?php 
    $this->load->view('theme/author/header');
    ?>
    <head>
<title>view Post</title>

   </head> 

            <!-- Header Part -->
            <!-- Main container start -->

            <div class="main-container">
                <div class="wrapper_main">
                    <div class="title">
                        Add Post Section
                        </div>

                        <div class="form">
                            <form action="<?php echo site_url('user/updateaddpost/'.$viewaddpost->id)?>" method="post" enctype="multipart/form-data">
                            <div class="input_field">
                                <label>Recipe Name</label>
                                <label class="input"><?php echo $viewaddpost->recipename;?></label>
                            </div>

                            <div class="input_field">
                                <label>User Name</label>
                                <label class="input"><?php echo $viewaddpost->username;?></label>
                            </div>

                            <div class="input_field">
                                <label>Date</label>
                                <label class="input"><?php echo $viewaddpost->date;?></label>
                            </div>

                            <div class="input_field">
                                <label>Ingredients</label>
                             <label class="textarea" style="height: auto;"><?php echo $viewaddpost->ingredients;?></label>
                            </div>

                            <div class="input_field">
                                <label>Descriptions</label>
                             <label class="textarea" style="height: auto;"><?php echo $viewaddpost->descriptions;?></label>
                            </div>
                            
                            <div class="recipe_image">
                                <label>Recipe Picture</label>
                            <?php if($viewaddpost->recipepicture){?>
                                <img width="20%" src="<?php echo site_url('asset/uploads/'.$viewaddpost->recipepicture);?>">
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