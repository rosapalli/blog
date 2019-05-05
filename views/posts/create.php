<form action="" method="POST" enctype="multipart/form-data">

    <h2>Add New Post</h2>
    <div class="form-group">
        <label >Title</label>
        <input type="text" class="form-control" name="title" >
    </div> 
    <div class="form-group">
        <label>Select a category or categories</label>
        <select multiple class="form-control" name="category[]">
            <option>Breakfast</option>
            <option>Budget eats</option>
            <option>Cookery classes</option>
            <option>Food hacks</option>
            <option>Food trends</option>
            <option>London</option>
            <option>Meals</option>
            <option>Polish</option>
            <option>Recipes</option>
            <option>Restaurant reviews</option>
            <option>Scotland</option> 
            <option>Spanish</option>
        </select>
    </div>
</div>
<div class="form-group">

    <label>Description</label>
    <textarea class="form-control" rows="3" name="description"></textarea>
</div>
<div class="form-group">
    <label>Content</label>
    <textarea name="content" id="editor" rows="100"></textarea>
</div>



<div class="form-group">
    <label>Add your image</label>
    <input type="hidden" name="MAX_FILE_SIZE" value="10000000" />
    <input type="file" class="form-control-file" name="myUploader" required />
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
<style>
    .ck-editor__editable_inline {
        min-height: 400px;
    }

</style>
