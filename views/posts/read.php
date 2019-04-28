
<h2 id="title"><?php echo $post->title; ?></h2>
<h4 id="date"><?php echo $post->date; ?></h4><br>
<?php 
$file = 'views/images/' . $post->title . '.jpeg';
if(file_exists($file)){
    $img = "<img src='$file' width='400' />";
    echo $img;
}
else
{
echo "<img src='views/images/standard/_noproductimage.png' width='150' />";
}

?>
<p id="post"><?php echo $post->content; ?></p>
<span hidden id="postID"><?php echo $post->id; ?></span>
<!--how many comments are there-->
<!--show comment count function-->

<!--comment form-->
<div class="panel panel-default">
   <div class="panel-heading"><h3>Add your comment</h3></div>
 <div class="panel-body">
 	<form id="addComment" action="" method="POST">
 <div class="form-group">
   <label for="addComment"></label>
   <textarea name="comment" class="form-control" rows="3"></textarea>
 </div>
           <br>
 <button id="submit" type="submit" class="btn btn-primary" value="Add comment">Submit</button>
</form>
 </div>
</div>
<div class="container">
    <?php if (isset($comments)) { foreach ($comments as $comment) { echo "Comment date:$comments->date<br> $comments->content";}} ?>
</div>
<script> $('#submit').click(function(){
    var id = document.getElementById("postID").innerHTML;
   $('#addComment').attr('action', `index.php?controller=comment&action=create&id=${id}`);
   }); </script>