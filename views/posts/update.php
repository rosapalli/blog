
<form action="" method="POST" enctype="multipart/form-data">

    <h2>Update post</h2>
    <div class="form-group">
        <label >Title</label>
        <input type="text" class="form-control" name="title" value="<?= $post->title; ?>" >
    </div> 
    <!--<div class="form-group">
        <label for="exampleFormControlSelect2">Select a category or categories</label>
        <select multiple class="form-control" name="category" id="exampleFormControlSelect2">
            <option>Recipes</option>
            <option>Restaurants</option>
            <option>Food trends</option>
            <option>Food hacks</option>
            <option>Desserts</option>
        </select>
    </div>-->
</div>
<div class="form-group">
    
    <label>Description</label>
    <textarea class="form-control" rows="3" name="description"> <?= $post->description; ?></textarea>
</div>
<div class="form-group">
    <label>Content</label>
    <textarea name="content" id="editor" rows="10"><?= $post->content; ?></textarea>
</div>



    <div class="form-group"
    <input type="hidden" name="MAX_FILE_SIZE" value="10000000" />
    <?php
    $file = 'views/images/' . $post->title . '.jpeg';
    if (file_exists($file)) {
        $img = "<img src='$file' width='150' />";
        echo $img;
    } else {
        echo "<img src='views/images/standard/_noproductimage.png' width='150' />";
    }
    ?>
    <br/>
    <input type="file" name="myUploader" class="form-control-file" />
        <input type="submit" value="Update Post">
    
    </div>
</form>
<script>
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
</script>