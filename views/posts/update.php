
<form action="" method="POST" enctype="multipart/form-data">

    <h2>Update post</h2>
    <div class="form-group">
        <label >Title</label>
        <input  required type="text" class="form-control" name="title" value="<?= $post->title; ?>" >
    </div> 
   <div class="form-group">
        <label>Select a category or categories</label>
        <select required multiple class="form-control" name="category[]">
            <option value="Breakfasts" <?=strpos($post->categoryType,"Breakfasts") !== false ? ' selected="selected"' : '';?>>Breakfasts</option>
            <option value="Budget eats" <?=strpos($post->categoryType,"Budget eats") !== false ? ' selected="selected"' : '';?>>Budget eats</option>
            <option value="Cookery classes" <?=strpos($post->categoryType,"Cookery classes") !== false ? ' selected="selected"' : '';?>>Cookery classes</option>
            <option value="Food hacks" <?=strpos($post->categoryType,"Food hacks") !== false ? ' selected="selected"' : '';?>>Food hacks</option>
            <option value="Food trends" <?=strpos($post->categoryType,"Food trends") !== false ? ' selected="selected"' : '';?>>Food trends</option>
            <option value="London" <?=strpos($post->categoryType,"London") !== false ? ' selected="selected"' : '';?>>London</option>
            <option value="Meals" <?=strpos($post->categoryType,"Meals") !== false ? ' selected="selected"' : '';?>>Meals</option>
            <option value="Polish" <?=strpos($post->categoryType,"Polish") !== false ? ' selected="selected"' : '';?>>Polish</option>
            <option value="Recipes" <?=strpos($post->categoryType,"Recipes") !== false ? ' selected="selected"' : '';?>>Recipes</option>
            <option value="Restaurant reviews" <?=strpos($post->categoryType,"Restaurant reviews") !== false ? ' selected="selected"' : '';?>>Restaurant reviews</option>
            <option value="Scotland" <?=strpos($post->categoryType,"Scotland") !== false ? ' selected="selected"' : '';?>>Scotland</option>
            <option value="Spanish" <?=strpos($post->categoryType,"Spanish") !== false ? ' selected="selected"' : '';?>>Spanish</option>
        </select>
    </div>


<div class="form-group">
    
    <label>Description</label>
    <textarea required class="form-control" rows="3" name="description"> <?= $post->description; ?></textarea>
</div>
<div class="form-group">
    <label>Content</label>
    <textarea required name="content" id="editor" rows="10"><?= $post->content; ?></textarea>
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

    
