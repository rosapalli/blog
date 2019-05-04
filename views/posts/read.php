 
<!--<h1 id="title"><?php echo $post->title; ?></h1>
<h4 id="date"><?php echo $post->date; ?></h4><br>
<h4 id="date"><?php echo $post->categoryType; ?></h4><br>
<?php
$file = 'views/images/' . $post->id . '.jpeg';
if (file_exists($file)) {
    $img = "<img src='$file' />";
    echo $img;
} else {
    echo "<img src='views/images/standard/_noproductimage.png' width='150' />";
}
?>
<p id="post"><?php echo $post->content; ?></p>-->
 
<!-- Card Type display -->

<div class="container" style="margin-bottom:30px" >
    <div class="col-md-6 col-md-offset-3 "> 
        <div class="row card-columns">
            <div class="card ">
                <?php
                    $file = 'views/images/' . $post->id . '.jpeg';
                    if (file_exists($file)) {
                        $img = "<img src='$file' class='card-img-top'/>";
                        echo $img;
                    } else {
                        echo "<img src='views/images/standard/_noproductimage.png' width='150' />";
                    }
                    ?>
                <div class="card-body">                      
                    <?php echo '<h3 class="card-title">' . $post->title . "</h3>" ?> 
                    <?php echo '<h5>' . $post->date . "</h5><br>" ?>  
                    <?php echo '<h5>' . $post->categoryType . "</h5><br>" ?>  
                    
                    <?php echo '<p class="card-text text-left">' . $post->content . "</p>" ?> &nbsp;

                </div>   
            </div>
        </div>            
    </div>
</div>
