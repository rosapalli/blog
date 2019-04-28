<?php

class CommentController {

    public function create() {
            Comment::create();
//            $commments = Comment::getComments();
            require_once"views/posts/read.php";
    }

}
