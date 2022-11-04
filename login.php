<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>LOGIN</title>
</head>
<body>
    <div class="contact-box">
            <div class="contact-left">
                <h1>LOGIN</h1>
                    <form action="" method="post">
                        <div class="input-row">
                            <div class="input-group">
                                <label for="">Username</label> 
                                <input type="text" name="username">
                            </div>
                        </div>

                        <div class="input-row">
                            <div class="input-group">
                                <label for="">password</label> 
                                <input type="password" name="password">
                            </div>
                        </div>

                        <button type="submit" name="login" id="login">LOGIN</button>
                    </form>
                    <p>Belum punya akun?
                        <a href="register.php">register</a>
                    </p> 
                </div>
            
                <br><br>
            <div class="contact-right">


            </div>
    </div>


    
</body>
</html>

<?php
    session_start();
    require 'proses.php';

    if(isset($_POST['login'])){
        $username= $_POST['username'];
        $password = $_POST['password'];
        
        $query =  "SELECT * FROM akun
            WHERE username = '$username'
            OR email='$username'";

        $result = $db->query($query);

        $rows = mysqli_fetch_array($result);

        // jadi ini ngecek apakah var password itu sama dengan yang di db akun yaitu psw
        // if(password_verify($password, $rows['psw'])){
        //     $_SESSION['login'] = true;
            if(password_verify($password, $rows['psw'])){
                $_SESSION['login'] = $username;

                echo "<script>
                        alert('Selamat Datang $username');
                        document.location.href = 'index.php';
                        </script>";
            }else{
                echo "<script>
                        alert('Username dan Password salah');
                        </script>";
            }

        } 
        else {
            echo"<script>
                alert('Username dan password salah');
             </script>";  
        }
    // }

?>