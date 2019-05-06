<H2>Advanced search</H2>
<div id='advanceSearch'>
    <form class="form-inline" method="POST" action="index.php?controller=post&action=advancedSearch">
        <div class="form-group" style="padding:10px">
            <select class="form-control" name="category">
                <option>Choose category</option>                              
                <option>Breakfasts</option>
                <option>Budget Eats</option>
                <option>Cookery classes</option>
                <option>Desserts</option>
                <option>Food hacks</option>
                <option>Food trends</option>
                <option>Local Food Guide</option>
                <option>London</option>
                <option>Meals</option>
                <option>Polish</option>
                <option>Recipes</option>
                <option>Restaurant reviews</option>
                <option>Scotland</option>
                <option>Spanish</option>
                <option>Vietnamese</option>
            </select>
        </div>
        <div style="padding:10px">
            <input name ="advancedSearch"  type="search" placeholder="Search" aria-label="Search">
            <button tabindex="3" class="form-control btn btn-warning" type="submit" style="float:center">Go</button>
        </div>
    </form>

</div>