<!DOCTYPE html>
<h2>Search results:</h2>
<?php foreach ($posts as $post) { ?>
    <div class="container" style="margin-bottom:30px" >
        <div class="col-md-6 col-md-offset-3 "> 
            <div class="row card-columns">
                <div class="card ">
                    <div class="card-body">  
                        <?php
                            $file = 'views/images/' . $post->id . '.jpeg';
                            if (file_exists($file)) {
                                $img = "<img src='$file' class='card-img-top'>";
                                echo $img;
                            } else {
                                echo "<img src='views/images/standard/_noproductimage.png' width='150'>";
                            }
                        ?>
                        <?php echo '<h3 class="card-title">' . $post->title . "</h3>" ?> 
                        <?php echo '<h5>' . $post->date . "</h5><br>" ?>  
                        <?php echo '<h5>' . $post->categoryType . "</h5>" ?>  
                        <?php echo '<p class="card-text text-left">' . $post->description . "</p>" ?> &nbsp;
                        <a class="card-link" href='?controller=post&action=read&id=<?php echo $post->id; ?>'>Read the full story</a>&nbsp;                      
                    </div>   
                </div>
            </div>            
        </div>
    </div>
<?php } ?>