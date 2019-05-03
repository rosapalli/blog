<form action="" method="POST" enctype="multipart/form-data">

    <h2>Add New Post</h2>
    <div class="form-group">
        <label >Title</label>
        <input type="text" class="form-control" name="title" >
    </div> 
    <div class="form-group">
        <label for="exampleFormControlSelect2">Select a category or categories</label>
        <select multiple class="form-control" name="category" id="exampleFormControlSelect2">
            <option>Recipes</option>
            <option>Restaurants</option>
            <option>Food trends</option>
            <option>Food hacks</option>
            <option>Desserts</option>
        </select>
    </div>
</div>
<div class="form-group">

    <label>Description</label>
    <textarea class="form-control" rows="3" name="description"></textarea>
</div>
<!--<div class="form-group">-->
<label>Content</label>
<textarea name="content" id="editor" rows="10"></textarea>
<!--</div>-->



<div class="form-group">
    <label>Add your image</label>
    <input type="hidden" name="MAX_FILE_SIZE" value="10000000" />
    <input type="file" class="form-control-file" name="myUploader">
</div>
<div class="form-group"> 
    <input type="submit" value="Add Post">
</div>
</form>
<script>
    ClassicEditor
            .create(document.querySelector('#editor'))

            .catch(error => {
                console.error(error);
            });
</script>
<script>
    CKEDITOR.editorConfig = function (config) {
        config.language = 'eng';
        config.uiColor = '#AADC6E';
        config.extraPlugins = 'autogrow';
        config.autoGrow_minHeight = 100;
        config.autoGrow_maxHeight = 600;
        config.autoGrow_bottomSpace = 50;
    };
</script>