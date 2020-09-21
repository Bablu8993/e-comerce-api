
        # e-comerce-api (Using postman)

        0. Run server
              rails s -p 4000

        1. Create user and products
              rake db:seed

        2. authenticate user and get the token

             post request   =>         localhost:4000/authenticate
             body           =>         {"email":"bablu_1@gmail.com", "password":"Test@123"}
             response       =>         {
                                            "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2MDA3MDI0NTZ9.Yxvbu4KGPPWTsLsh2USOVZ56LrIBqGzz3XROjlMJz6I",
                                            "user": {
                                                "id": 4,
                                                "name": "bablu patel 1",
                                                "email": "bablu_1@gmail.com",
                                                "password_digest": "$2a$12$PB/EGbwhki2xWtEfrtRP3OL9N7W5m5sWv3ok.oKd7svD/latFWKia",
                                                "created_at": "2020-09-20T15:16:23.615Z",
                                                "updated_at": "2020-09-20T15:16:23.615Z"
                                            }
                                        }
        We will use this auth_tocket for each request

        3. List all product

             get request    =>         localhost:4000/products
             headers        =>          Content-Type          => application/json
                                     Authorization         => yJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2MDA3MDI0NTZ9.Yxvbu4KGPPWTsLsh2USOVZ56LrIBqGzz3XROjlMJz6I 

             response
              [
                {
                    "id": 1,
                    "name": "Canon EOS Rebel T1i",
                    "description": "This camera has topped our best selling list for the last few months.",
                    "price": 3400.45,
                    "make": 2020,
                    "created_at": "2020-09-14T05:33:46.222Z",
                    "updated_at": "2020-09-14T05:33:46.222Z"
                },
                {
                    "id": 2,
                    "name": "Nikon D90 DX",
                    "description": "This camera has topped our best selling list for the last few months.",
                    "price": 6400.45,
                    "make": 2020,
                    "created_at": "2020-09-14T05:34:09.947Z",
                    "updated_at": "2020-09-14T05:34:09.947Z"
                },
                {
                    "id": 3,
                    "name": "Canon EOS 50D",
                    "description": "This camera has topped our best selling list for the last few months.",
                    "price": 76000.45,
                    "make": 2019,
                    "created_at": "2020-09-14T05:34:49.478Z",
                    "updated_at": "2020-09-14T05:34:49.478Z"
                },
                {
                    "id": 4,
                    "name": "Camera_1",
                    "description": "Camera_1 is best.",
                    "price": 1200,
                    "make": 1990,
                    "created_at": "2020-09-20T09:38:24.512Z",
                    "updated_at": "2020-09-20T09:38:24.512Z"
                }]

        4. Add product to cart

            post request   =>        localhost:4000/users/add_product_to_cart
            body           =>         {
                                          "products":{"name": "Nikon D90 DXX"}
                                      }
            headers        =>          Content-Type          => application/json
                                       Authorization         => yJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2MDA3MDI0NTZ9.Yxvbu4KGPPWTsLsh2USOVZ56LrIBqGzz3XROjlMJz6I 

            response
              {
                "mesage": "Product added to cart successfully"
              }

        5. Get cart details of an indivisual user

            get request   =>        localhost:4000/users/get_cart_details

            headers       =>          Content-Type          => application/json
                                       Authorization         => yJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2MDA3MDI0NTZ9.Yxvbu4KGPPWTsLsh2USOVZ56LrIBqGzz3XROjlMJz6I 
