
<form action="" method="POST" enctype="multipart/form-data">

    <h2>Update post</h2>
    <div class="form-group">
        <label >Title</label>
        <input type="text" class="form-control" name="title" value="<?= $post->title; ?>" >
    </div> 
   <div class="form-group">
        <label>Select a category or categories</label>
        <select multiple class="form-control" name="category[]">
            <option value="Breakfast" <?=$post->categoryType == 'Breakfast' ? ' selected="selected"' : '';?>>Breakfast</option>
            <option value="Budget eats" <?=$post->categoryType == 'Budget eats' ? ' selected="selected"' : '';?>>Budget eats</option>
            <option value="Cookery classes" <?=$post->categoryType == 'Cookery classes' ? ' selected="selected"' : '';?>>Cookery classes</option>
            <option value="Food hacks" <?=$post->categoryType == 'Food hacks' ? ' selected="selected"' : '';?>>Food hacks</option>
            <option value="Food trends" <?=$post->categoryType == 'Food trends' ? ' selected="selected"' : '';?>>Food trends</option>
            <option value="London" <?=$post->categoryType == 'London' ? ' selected="selected"' : '';?>>London</option>
            <option value="Meals" <?=$post->categoryType == 'Meals' ? ' selected="selected"' : '';?>>Meals</option>
            <option value="Polish" <?=$post->categoryType == 'Polish' ? ' selected="selected"' : '';?>>Polish</option>
            <option value="Recipes" <?=$post->categoryType == 'Recipes' ? ' selected="selected"' : '';?>>Recipes</option>
            <option value="Restaurant reviews" <?=$post->categoryType == 'Restaurant reviews' ? ' selected="selected"' : '';?>>Restaurant reviews</option>
            <option value="Scotland" <?=$post->categoryType == 'Scotland' ? ' selected="selected"' : '';?>>Scotland</option>
            <option value="Spanish" <?=$post->categoryType == 'Spanish' ? ' selected="selected"' : '';?>>Spanish</option>
        </select>
    </div>
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
<style>
.ck-editor__editable_inline {
    min-height: 400px;
}
</style>
    
