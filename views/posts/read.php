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
                    <?php echo '<h5>' . $post->description . "</h5><br>" ?>                       
                    <?php echo '<p class="card-text text-left">' . htmlspecialchars_decode($post->content) . "</p>" ?> &nbsp;
                </div>   
            </div>
        </div>            
    </div>
</div>
<div id="disqus_thread"></div>
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/

var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = <?php echo $post->id; ?>; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};

(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://wheresthefood-1.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                            
