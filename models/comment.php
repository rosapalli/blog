<?php

class Comment {

// we define 3 attributes
    private $id;
    private $userId;
    private $postId;
    private $date;
    private $content;

    public function __construct($userId, $postId, $date, $content) {
        $this->userId = $userId;
        $this->postId = $postId;
        $this->date = $date;
        $this->content = $content;
    }

        public static function create() {
        $db = Db::getInstance();
        $req = $db->prepare("Insert into commenttopost (userID, postID, commentContent, date) values (:userID, :postID, :commentContent, NOW())");
        $req->bindParam(':userID', $userID);
        $req->bindParam(':postID', $postID);
        $req->bindParam(':commentContent', $commentContent);

// set parameters and execute
        if (isset($_POST['comment']) && $_POST['comment'] != "") {
            $filteredComment = filter_input(INPUT_POST, 'comment', FILTER_SANITIZE_SPECIAL_CHARS);
        }
        $commentContent = $filteredComment;
        $postID = $_GET['id'];
        $userID = $_SESSION['userID'];
        $req->execute();
    }
    
    public static function getComments() {
        $list = [];
           $db = Db::getInstance();
        $req = $db->query('SELECT * FROM commenttopost');
// we create a list of Post objects from the database results
        foreach ($req->fetchAll() as $comment) {
            $list[] = new Comment ($comment['postID'], $date['date'], content['commentContent']);
        }
        return $list;
    }
   
//    public static function readAll() {
//        $list = [];
//        $db = Db::getInstance();
//        $req = $db->query('SELECT * FROM post');
//// we create a list of Post objects from the database results
//        foreach ($req->fetchAll() as $post) {
//            $list[] = new Post($post['postID'], $post['postTitle'], $post['postContent'], $post['postDate'], $post['postDescription']);
//        }
//        return $list;
//    }
//
//    public static function read($id) {
//        $db = Db::getInstance();
////use intval to make sure $id is an integer
//        $id = intval($id);
//        $req = $db->prepare('SELECT * FROM post WHERE postID = :id');
////the query was prepared, now replace :id with the actual $id value
//        $req->execute(array('id' => $id));
//        $post = $req->fetch();
//        if ($post) {
//            return new Post($post['postID'], $post['postTitle'], $post['postContent'], $post['postDate'], $post['postDescription']);
//        } else {
////replace with a more meaningful exception
//            throw new Exception('This post no longer exists.');
//        }
//    }
//
//    public static function search($keyword) {
//        $list = [];
//        $db = Db::getInstance();
//        if (isset($_POST['search']) && $_POST['search'] != "") {
//            $filteredKeyword = filter_input(INPUT_POST, 'search', FILTER_SANITIZE_SPECIAL_CHARS);
//            $keyword = "%$filteredKeyword%";
//        }
//        $sql = $db->prepare("SELECT * FROM post WHERE postTitle LIKE :keyword OR postContent LIKE :keyword");
//        $sql->execute(array(':keyword' => $keyword));
//        $posts = $sql->fetchAll();
//        foreach ($posts as $post) {
//            $list[] = new Post($post['postID'], $post['postTitle'], $post['postContent'], $post['postDate'], $post['postDescription']);
//        }
//        return $list;
//    }
//
//    public static function update($id) {
//        $db = Db::getInstance();
//        $req = $db->prepare("Update post set postTitle=:title, postContent=:content, postDescription=:description where postID=:id");
//        $req->bindParam(':id', $id);
//        $req->bindParam(':title', $title);
//        $req->bindParam(':content', $content);
//        $req->bindParam(':description', $description);
//
//// set name and price parameters and execute
//        if (isset($_POST['title']) && $_POST['title'] != "") {
//            $filteredTitle = filter_input(INPUT_POST, 'title', FILTER_SANITIZE_SPECIAL_CHARS);
//        }
//        if (isset($_POST['content']) && $_POST['content'] != "") {
//            $filteredContent = filter_input(INPUT_POST, 'content', FILTER_SANITIZE_SPECIAL_CHARS);
//        }
//        if (isset($_POST['description']) && $_POST['description'] != "") {
//            $filteredDescription = filter_input(INPUT_POST, 'description', FILTER_SANITIZE_SPECIAL_CHARS);
//            $title = $filteredTitle;
//            $content = $filteredContent;
//            $description = $filteredDescription;
//            $req->execute();
//
////upload product image if it exists
//            if (empty($_FILES[self::InputKey]['title'])) {
//                Post::uploadFile($title);
//            }
//        }
//    }



}

?>
