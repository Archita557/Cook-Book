<html>
    <head>
        <title>FoodBlog</title>

        <!-- style.css -->
        <link rel="stylesheet" href="<?php echo base_url();?>asset/css/style.css">

        <!-- Font Awsome -->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <!-- Bootstrap Grid system -->
        <link rel="stylesheet" href="asset/css/bootstrap-grid.css">
        <style>
            a{
                text-decoration:none;
            }
            </style>
    </head>
    <body>
    <?php
  foreach($fetchhdr as $hdr){
  }
      ?>
        <!-- Navigation Bar -->
        
    <header class="clear-fix">
        <img src="<?php echo base_url().'asset/uploads/'.$hdr->logo;?>" alt="" class="main-logo">
    
       <div class="navbar">
           <ul>
           <li>
                   <a href="<?php echo base_url();?>index">Home</a>
               </li>
               <li>
                   <a href="<?php echo base_url();?>recipe">Recipe</a>
               </li>
               
               <li>
                   <a href="<?php echo base_url();?>aboutus">About</a>
               </li>
               <li>
                   <a href="<?php echo base_url();?>contactpage">Contact</a>
               </li>
               <li>
                <a href="<?php echo base_url();?>admin">Dashboard</a>
            </li>
           </ul>
       </div>
       </header>

       <!-- Main Page -->
       
       <div class="view_page">
        <div class="recipe" style='background-image: url("<?php echo base_url().'asset/uploads/'.$singleviewrecipe->recipepicture;?>")'></div>
    </div>
   
    <div class="ingredients">
     <div class="Author">
         <h1><?php echo $singleviewrecipe->recipename;?></h1>
         <small>By <strong> <?php echo $singleviewrecipe->username;?> </strong> | <?php echo $singleviewrecipe->date;?></small>
     </div>






        <h3>INGREDIENTS:</h3>
        <p> <?php echo $singleviewrecipe->ingredients;?></p>

     
<div class="list">
 <h3>DIRECTIONS:</h3>
 
    <p><?php echo $singleviewrecipe->descriptions;?></p>
     </div>
 

   <!-- view page button -->

   <div class="button">
   <a href="<?php echo site_url('blog/like_recepie/'.$singleviewrecipe->id.'/'.$singleviewrecipe->like_post)?>">
     <button class="button button1"><i class="fa fa-thumbs-up"></i><?php echo $singleviewrecipe->like_post;?>Like</button>
     </a>
    </div>







    </div>

        </div> 

       

      
        
         

         <!-- Footer_Section -->
         <footer>
             <div class="main-content">
                 <div class="left box">
                     <h2>About Us</h2>
                     <div class="content">
                         <p>Food is often my main memory of a situation – be it a holiday, a day out, or a lunch with friends.My recipes are regularly
                            submitted and featured on various websites including.Sign up to mailing list to get my latest recipes and posts sent 
                            direct to your inbox. That way you’ll never miss any of my recipes. You will receive around one email a week,plus the 
                            occasional recipe round up. I’ll never pass on your details to anyone else, and you can unsubscribe at any time.</p>
                            <div class="social">
                                <a href="https://www.facebook.com/"><span class="fab fa-facebook-f"></span></a>
                                <a href="https://www.twitter.com/"><span class="fab fa-twitter"></span></a>
                                <a href="https://www.instagram.com/"><span class="fab fa-instagram"></span></a>
                                <a href="https://www.youtube.com/"><span class="fab fa-youtube"></span></a>
          
                            </div>
                         </div>
                      </div>


                      <?php
  foreach($fetchinfo as $info){
  }
      ?>
            <div class="center box">
                <h2>Address</h2>
                <div class="content">
                    <div class="place">
                        <span class="fas fa-map-marker-alt"></span>
                        <span class="text"><?php echo $info->address;?></span>
                    </div>
                    <div class="phone">
                        <span class="fas fa-phone-alt"></span>
                        <span class="text"><?php echo $info->phone;?>.</span>
                </div>
                <div class="email">
                    <span class="fas fa-envelope"></span>
                    <span class="text"><?php echo $info->email;?>.</span>
                    </div>
                    </div>
            </div>


                      <div class="right box">
                          <h2>Contact Us</h2>
                          <div class="content">
                          <form action="<?php echo site_url('blog/savemsg')?>" method="post">

<div class="email">
<div class="text">Fullname *</div>
<input type="text" name="fullname" required="required">
</div>


<div class="email">
<div class="text">Email *</div>
<input type="email" name="email" required="required">
</div>

<div class="msg">
    <div class="text">Message *</div>
    <textarea rows="2" cols="25" required="required" name="message"></textarea>
 </div>
                                   <div class="btn">
                                       <button type="submit">Send</button>
                                   </div>
                              </form>
                          </div>
                      </div>
             </div>
             <div class="bottom">
                 <center>
                     <span class="credit">Created By <a href="#">CookBook</a> | </span>
                     <span class="far fa-copyright"></span><span> 2020 All rights reserved.</span>
                 </center>
             </div>
             </footer>


    </body>
    </html>
