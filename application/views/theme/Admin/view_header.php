<!DOCTYPE html>

<html>
    <head>
        <title>Header</title>

        <!-- style.css -->
        <link rel="stylesheet" href="<?php echo base_url();?>asset/admincss/adminpanel.css">

        <!-- Javascript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>

        <!-- Font Awsome -->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <!-- Bootstrap Grid system -->
        <link rel="stylesheet" href="<?php echo base_url();?>asset/css/bootstrap-grid.css">
    </head>
    <body>    
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- header-menu Start -->
            <div class="header">
                <div class="header-menu">
                    <div class="title">Cook<span> Book</span></div>
                    <div class="sidebar-btn">
                    <i class= "fas fa-bars"></i>
                    </div>
                    <ul>
                        <li>
                            <a href="<?php echo site_url('admin/logout');?>">
                                <i class="fa fa-user-circle"></i><span> Logout</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- header-menu end -->
            <!-- Sidebar Start -->
           <div class="sidebar">
               <div class="sidebar-menu">
                   <center class="profile">
                       <img src="<?php echo base_url();?>asset/img2/photo-1491972690050-ba117db4dc09.jfif" alt="">
                       <p>Archita Dey</p>
                   </center>

                  
                   


      

                   <li class="item">
                    <a href="../../index" class="menu-btn">
                        <i class="fa fa-home"></i><span> Home</span>
                    </a>
                </li>
            

                   <li class="item">
                    <a href="../../admin" class="menu-btn">
                        <i class="fas fa-heading"></i><span> Header</span>
                    </a>
                </li>

                



                


                <li class="item" id="../../posts">
                <a href="<?php echo base_url();?>addpost" class="menu-btn">
                        <i class="fa fa-edit"></i><span>Posts</span>
                    </a>
                </li>
               



                <li class="item">
                    <a href="../../author" class="menu-btn">
                        <i class="fa fa-user-secret"></i><span>Author</span>
                    </a>
                </li>

                

       
                <li class="item">
                    <a href="../../ourteam" class="menu-btn">
                        <i class="fa fa-users"></i><span>My Team</span>
                    </a>
                </li>

                

              

                
                <li class="item" id="contact">
                    <a href="#contact" class="menu-btn">
                        <i class="fas fa-phone-alt"></i><span>Contact Us <i class="fas fa-chevron-down drop-down"></i></span>
                    </a>
                    <div class="sub-menu">
                        <a href="../../information">
                            <i class="fa fa-address-book" aria-hidden="true"></i><span>Information</span>
                        </a>  
                        <a href="../../message">
                            <i class="fa fa-envelope" aria-hidden="true"></i><span>Message</span>
                        </a>  
                    </div>
                </li>  


                
                <li class="item">
                    <a href="../../about" class="menu-btn">
                        <i class="fa fa-info-circle"></i><span>About Us</span>
                    </a>
                </li>

                

                
               </div>
            </div> 
            <!-- Sidbar End -->


            <!-- Header Part -->
            <!-- Main container start -->

            <div class="main-container">
                <div class="wrapper_main">
                    <div class="title">
                        View Header Sction
                    </div>

                        
                            <div class="form">
                            <div class="input_field">
                                <label>Headline</label>
                                <label class="input"><?php echo $viewheader->headline;?></label>
                            </div>

                            <div class="input_field">
                                <label>Paragraph</label>
                             <label class="textarea" style="height: auto;"><?php echo $viewheader->paragraph;?></label>
                            </div>

                            <div class="input_field">
                                <label>Button-Caption</label>
                                <label class="input"><?php echo $viewheader->buttoncaption;?></label>
                            </div>
        
                            
                            <div class="input_field">
                            <label>Logo Picture</label>

                            <?php if($viewheader->logo){?>
                                <img width="20%" src="<?php echo site_url('asset/uploads/'.$viewheader->logo);?>">
                                <?php }?>
                            </div>
        
                            <div class="input_field">
                            <label>Background</label>

                            <?php if($viewheader->background){?>
                                <img width="20%" src="<?php echo site_url('asset/uploads/'.$viewheader->background);?>">
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