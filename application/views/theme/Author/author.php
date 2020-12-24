<?php 
    $this->load->view('theme/author/header');
    ?>
    <head>
<title>Author</title>

   </head>   
            <!-- Header Part -->
            <!-- Main container start -->
            <div class="main-container">
                <div class="wrapper_main">
                    <div class="title">
                        Author section
                        </div>
                        <?php
                          
                          
                           if($fetchauthor->status<=0){
                              ?>

                              <div style="font-weight:bolder; text-align:center;" class="alert alert-danger" role="alert">
                                Currently your Account is pending please wait for approve by the Admin!!!
                              </div>
                              <?php 
                              }
                           ?>
                        <?php echo $this->session->userdata('username');?>
                        <table class="table table-hover">
  <thead>
    <tr>
    <th scope="col">Picture</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">Username</th>
      <th scope="col">Email</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>

  <tbody>
    <tr>
    
    <td><img height="50px" width="50px" src="<?php echo base_url().'asset/uploads/'.$fetchauthor->authorpicture;?>"></td>
      <td><?php echo substr($fetchauthor->authorname,0,10);?>...</td>
      <td><?php echo substr($fetchauthor->authordescription,0,10);?>...</td>
      <td><?php echo substr($fetchauthor->username,0,10);?>...</td>
      <td><?php echo substr($fetchauthor->email,0,10);?>...</td>
      

      <td><a class="btn" href="<?php echo site_url('user/editauthor/'.$fetchauthor->id)?>" role="button">Edit</a>
      <a class="btn" href="<?php echo site_url('user/deleteauthor/'.$fetchauthor->id)?>" role="button">Delete</a>
      <a class="btn" href="<?php echo site_url('user/viewauthor/'.$fetchauthor->id)?>" role="button">View</a>
      
    
    </tr>

  </tbody>
</table>

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