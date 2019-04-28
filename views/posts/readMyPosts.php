<p>Here is a list of all your posts:</p>

    <?php foreach($posts as $post) { ?>

    <div class="container" >
           <div class="col-md-6 col-md-offset-3" > 
                
                <div class="card">
                    <?php echo '<h3 class="card-header">' . $post->title . "</h3>"?> 

                    <div class="card-body" >
                        <?php echo '<h5 class="card-title">'. $post->date ."</5><br>"?> &nbsp; &nbsp;
                                            
                        <?php echo '<p class="card-text text-left">'. $post->description ."</p><br>"?> &nbsp;
                       
                        <a href='?controller=post&action=read&id=<?php echo $post->id; ?>'>Read the whole story</a>&nbsp; &nbsp; &nbsp; &nbsp;
                                    
                        <div class="col-xs-2 pull-right">     
                        <a href='?controller=post&action=delete&id=<?php echo $post->id; ?>' class="form-control btn btn-warning">Delete</a>
                        </div>
                                    
                        <div class="col-xs-2 pull-right">     
                        <a href='?controller=post&action=update&id=<?php echo $post->id; ?>' class="form-control btn btn-warning">Edit</a> &nbsp;
                        </div>                                   
                               
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>