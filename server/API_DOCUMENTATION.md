### user 

* user login
POST: /user/login

### music

* Get music list
GET: /music

* Get today's recommended music
GET: /music/today

* Get search music by name
GET: /music/search/:name

* Get music details
GET: /music/:id

* Get all the music of the singer
GET: /music/by-singer/:id

* Edit
PUT: /music

### singer

* Get all singers
GET: /singer

* create singer
POST: /singer

* Get singer details
GET: /singer/:id

* Edit singer
PUT: /singer

### comment

* Get comment by music
GET: /comment/by-music/:id

* Create Comment
POST: /comment
