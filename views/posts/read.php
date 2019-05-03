
<h1 id="title"><?php echo $post->title; ?></h1>
<h4 id="date"><?php echo $post->date; ?></h4><br>
<h4 id="date"><?php echo $post->categoryType; ?></h4><br>
<?php 
$file = 'views/images/' . $post->id . '.jpeg';
if(file_exists($file)){
    $img = "<img src='$file' />";
    echo $img;
}
else
{
echo "<img src='views/images/standard/_noproductimage.png' width='150' />";
}
?>
<h4 id="date"><?php echo $post->description; ?></h4><br>
<p id="post"><?php echo htmlspecialchars_decode($post->content); ?></p
