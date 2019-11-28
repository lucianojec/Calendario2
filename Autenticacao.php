<?php
/**
 * Created by Joe of ExchangeCore.com
 */
if(isset($_POST['username']) && isset($_POST['password'])){

    $adServer = "SOFTPLAN.COM.BR";
    $ldap_porta = "389";

    $ldap = ldap_connect($adServer, $ldap_porta);
    $username = $_POST['username'];
    $password = $_POST['password'];
    $dominio = "@softplan.com.br"; //Dominio local ou global

    //$ldaprdn = "@softplan.com.br" . "\\" . $username;
    $ldaprdn = $username.$dominio;

    ldap_set_option($ldap, LDAP_OPT_PROTOCOL_VERSION, 3);
    ldap_set_option($ldap, LDAP_OPT_REFERRALS, 0);

    

    $bind = @ldap_bind($ldap, $ldaprdn, $password);

    

    if ($bind) {
        $filter="(sAMAccountName=$username)";
    
        $result = ldap_search($ldap,"dc=SOFTPLAN,dc=COM",$filter);
        //ldap_sort($ldap,$result,"sn");

        $info = ldap_get_entries($ldap, $result);

        echo "Autenticado com Sucesso!";
    
        // for ($i=0; $i<$info["count"]; $i++)
        // {
        //     echo "6";
        //     if($info['count'] > 1)
        //         break;
        //     echo "<p>You are accessing <strong> ". $info[$i]["sn"][0] .", " . $info[$i]["givenname"][0] ."</strong><br /> (" . $info[$i]["samaccountname"][0] .")</p>\n";
        //     echo '<pre>';
        //     var_dump($info);
        //     echo '</pre>';
        //     $userDn = $info[$i]["distinguishedname"][0]; 

        session_start();
    $_SESSION["username"] = $username;
 
    header("Location: index.php");
        // }
 
        @ldap_close($ldap);
    } else {
        $msg = "Invalid email address / password";
        echo $msg;
    }

}else{
?>
    <!-- <form action="#" method="POST">
        <label for="username">Username: </label><input id="username" type="text" name="username" /> 
        <label for="password">Password: </label><input id="password" type="password" name="password" />        
        <input type="submit" name="submit" value="Submit" />
    </form> -->

    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Agenda</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <style type="text/css">
        .login-form {
            width: 340px;
            margin: 50px auto;
        }
        .login-form form {
            margin-bottom: 15px;
            background: #f7f7f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }
        .login-form h2 {
            margin: 0 0 15px;
        }
        .form-control, .btn {
            min-height: 38px;
            border-radius: 2px;
        }
        .btn {        
            font-size: 15px;
            font-weight: bold;
        }
    </style>
    </head>
    <body>
        <div class="login-form">
            <form action="#" method="POST">
                <h2 class="text-center">Login</h2>       
                <div class="form-group">
                    <!-- <label for="username">Username: </label><input type="text" id="username" class="form-control" placeholder="Usuário de rede" required="required"> -->
                        <label for="username">Usuário: </label><input id="username" type="text" class="form-control" name="username" placeholder="Usuário de rede" required="required"/> 
                </div>
                <div class="form-group">
                    <!-- <input type="password" id="password" class="form-control" placeholder="Senha" required="required"> -->
                    <label for="password">Senha: </label><input id="password" type="password" class="form-control" name="password" placeholder="Senha" required="required"/>
                </div>
                <div class="form-group">
                    <button type="submit" name="submit" value="Submit" class="btn btn-primary btn-block">Acessar</button>
                </div>
                <div class="clearfix">
                    <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
                    <!-- <a href="#" class="pull-right">Forgot Password?</a> -->
                </div>        
            </form>
            <!-- <p class="text-center"><a href="#">Create an Account</a></p> -->
        </div>
    </body>
    </html>                   

<?php } ?> 