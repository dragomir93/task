## How to execute this task

<p>First you need to go to the path of folder where you cloned project for me for example cd /Users/Desktop/task/</p>
<p>Then you need to run php artisan serve</p>

<p>You will have 5 links:</p>

http://127.0.0.1:8000/api/getAllArticles for getting all articles from database (GET METHOD)

http://127.0.0.1:8000/api/article/1  for getting a specific article from database (GET METHOD)

http://127.0.0.1:8000/api/add/article for put the article in the database,specific example will be: (POST METHOD)
{
"title":"Adidas Sabalo Test","description":"These lightweight canvas shoes by adidas feature design details inspired by the wide-angle fisheye lens that gave skateboarding its visual style tttt.",
"image":"image\/adidastest.jpg",
"price":1251
}

http://127.0.0.1:8000/api/update/article/1 for update the article in the database,specific example will be: (PUT METHOD)
{
"title":"Adidas Sabalo Test","description":"These lightweight canvas shoes by adidas feature design details inspired by the wide-angle fisheye lens that gave skateboarding its visual style tttt.",
"image":"image\/adidastest.jpg",
"price":1251
}

http://127.0.0.1:8000/api/delete/article/1 for delete specific article from database,it will delete article wich ID is 1 (DELETE METHOD)

Also all these example are covered with PHP Unit tests.

