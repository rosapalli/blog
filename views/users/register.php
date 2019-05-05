<!DOCTYPE html>
<div class="wrapper">
    <h2>Sign Up</h2>
    <p>Please fill this form to create an account.</p>
    <div class="container" >
        <div class="row box" id="login-box">
            <div class="col-md-6 col-md-offset-3" >
                <div class="panel panel-login" >
                    <div class="panel-body" >
                        <div class="row " >
                            <div class="col-lg-12" >
                                <div class="alert alert-danger" role="alert" id="error" style="display: none;">...</div>
                                <form id="register" name="register" role="form" style="display: block;" method="post" action="index.php?controller=user&action=register">
                                    <div class="form-group">
                                        <input type="name" name="firstName" id="firstName" tabindex="3" class="form-control" placeholder="First Name" value=""  required>
                                    </div>
                                    <div class="form-group">
                                        <input type="name" name="lastName" id="lastName" tabindex="4" class="form-control" placeholder="Last Name" value=""  required>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email" value=""  required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" required> 
                                    </div>
                                    <div class="col-xs-12 form-group pull-right">     
                                        <button type="submit" name="loginSubmit" id="loginSubmit" tabindex="3" class="form-control btn btn-warning">
                                            <span class="spinner"><i class="icon-spin icon-refresh" id="spinner"></i></span> Register
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

