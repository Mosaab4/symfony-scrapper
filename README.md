# Scrapping Task

### Brief
In this task is implemented to scrap "highload.today" posts.

The script allow the user to select which category he want to scrap from 14 different category


## Getting Started
Run the following commands
1. ```git clone --recurse-submodules https://github.com/Mosaab4/symfony-scrapper.git```
2. ```cd symfony-scrapper```
3. ```sh start.sh```
4. ```docker-compose up -d```


## CLI Command

To Start Scraping the website, you can use the following command

```docker-compose exec php bin/console scrap:data```

The CLI will prompt multiple choices so the user can choose which category he want to scrap 


## View Posts

User can view posts using the following link:

```http://localhost:8090/posts```

only authenticated user can view this page, and only admins can delete posts

User can login using the following link:

```http://127.0.0.1:8090/login```

### Login Credentials
You can use the following credentials to Login to view the posts:

For Admin User
```
Email:      admin@admin.com
Password:   123456
```

For Moderator User
```
Email:      moderator@moderator.com
Password:   123456
```



