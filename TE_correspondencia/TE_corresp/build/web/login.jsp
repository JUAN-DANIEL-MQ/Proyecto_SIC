<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Signin Template · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" >
        <!-- Bootstrap CSS -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">



    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
        html,
        body {
            height: 100%;
        }

        body {
            display: flex;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            
             background:linear-gradient(45deg, hsl(316, 83%, 57%), 
                                          hsl(276, 97%, 38%), 
                                          hsl(246, 100%, 6%));  
               
    
    
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
        }

        .form-signin .checkbox {
            font-weight: 400;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
    
  </head>
  <body class="text-center">
      <main class="form-signin">
          
          <form action="Login" method="post">
              <img class="mb-4" src="https://cdns.iconmonstr.com/wp-content/assets/preview/2018/240/iconmonstr-marketing-14.png" alt="" width="72" height="57">
              <h1 class="h3 mb-3 fw-normal" >Login</h1>

              <div class="form-floating">
                  <input type="text" name = "email" class="form-control" id="floatingInput" placeholder="name@example.com">
                  <label for="floatingInput">Usuario</label>
              </div>
              <div class="form-floating">
                  <input type="password" name = "password" class="form-control" id="floatingPassword" placeholder="Password">
                  <label for="floatingPassword">Password</label>
              </div>
              <div class="form-floating">
                  <input type="text" name = "ci" class="form-control" id="floatingPassword" placeholder="Matricula Universitaria">
                  <label for="floatingPassword">Matricula</label>
              </div>
              <div class="checkbox mb-3">
                  <label>
                      <input type="checkbox" value="remember-me"> Recordar
                  </label>
              </div>
              <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
              <p class="mt-5 mb-3 text-muted">&copy; I–2021</p>
          </form>
      </main>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
  </body>
</html>
