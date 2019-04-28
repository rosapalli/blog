<h2>Welcome Back! </h2>

<p>Here is a list of all posts written by <?php echo $_SESSION['firstName']?></p>

<?php foreach ($posts as $post) { ?>
    <div class="container" style="margin-bottom:30px" >
        <div class="col-md-6 col-md-offset-3 "> 
            <div class="row card-columns">
                <div class="card ">
                    <div class="card-body">                      
                        <?php echo '<h3 class="card-title">' . $post->title . "</h3>" ?> 
                        <?php echo '<h5>' . $post->date . "</h5>" ?>                           
                        <?php echo '<p class="card-text text-left">' . $post->description . "</p>" ?> &nbsp;
                        <a class="card-link" href='?controller=post&action=read&id=<?php echo $post->id; ?>'>Read the full story</a>&nbsp; 

                        <div class="pull-right col-xs-2">     
                            <a href='?controller=post&action=delete&id=<?php echo $post->id; ?>' class="btn btn-warning">Delete</a>
                        </div>

                        <div class="pull-right col-xs-2">     
                            <a href='?controller=post&action=update&id=<?php echo $post->id; ?>' class="btn btn-warning">Edit</a>&nbsp; 
                        </div> 
                    </div>   
                </div>
            </div>            
        </div>
    </div>
<?php } ?>