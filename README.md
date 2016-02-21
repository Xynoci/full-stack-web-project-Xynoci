# Notes
* [Heroku](./Notes.md#heroku)
    - [Commands](./Notes.md#commands)
    - [The Celadon Cedar-14 Stack](./Notes.md#the-celadon-cedar-14-stack)
        + [Intro.](./Notes.md#intro)
        + [Advanced HTTP capabilities](./Notes.md#advanced-http-capabilities)
    - [Process Types and the Procfile](./Notes.md#process-types-and-the-procfile)
        + [Intro.](./Notes.md#intro-1)
        + [Procfile naming and location](./Notes.md#procfile-naming-and-location)
        + [Declaring process types](./Notes.md#declaring-process-types)
        + [Developing locally](./Notes.md#developing-locally)
    - [Heroku Postgres](./Notes.md#heroku-postgres)
        + [Performance analytics](./Notes.md#performance-analytics)
* [Grunt](./Notes.md#grunt)
    - [Working with an existing Grunt project](./Notes.md#working-with-an-existing-grunt-project)
    - [Preparing a new Grunt project](./Notes.md#preparing-a-new-grunt-project)
        + [`package.json`](./Notes.md#packagejson)
    - [The Gruntfile](./Notes.md#the-gruntfile)
* [Footnotes](./Notes.md#footnotes)

# java-getting-started

A barebones Java app, which can easily be deployed to Heroku.  

This application support the [Getting Started with Java on Heroku](https://devcenter.heroku.com/articles/getting-started-with-java) article - check it out.

## Running Locally

Make sure you have Java and Maven installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone https://github.com/heroku/java-getting-started.git
$ cd java-getting-started
$ mvn install
$ foreman start web
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

If you're going to use a database, ensure you have a local `.env` file that reads something like this:

```
DATABASE_URL=postgres://localhost:5432/java_database_name
```

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku open
```

## Documentation

For more information about using Java on Heroku, see these Dev Center articles:

- [Java on Heroku](https://devcenter.heroku.com/categories/java)
