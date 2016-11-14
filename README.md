#Haproxy API

##Installation:
```bash
$ bundle
$ rackup
```

Application will be running on `localhost:9292`.

##Usage:
Do a `POST` to `localhost:9292/config` with a JSON such as:
```json
{
   "config":{
      "backends":[
         {
            "title":"backend",
            "servers":[
               {
                  "weight":10.0,
                  "port":8080,
                  "name":"one_server",
                  "host":"localhost"
               },
               {
                  "weight":90.0,
                  "port":8081,
                  "name":"another_server",
                  "host":"localhost"
               }
            ]
         }
      ]
   }
}
```
