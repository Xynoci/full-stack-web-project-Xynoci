# Heroku
## [The Celadon Cedar-14 Stack](https://devcenter.heroku.com/articles/cedar)
### Intro.

Celadon Cedar-14 is Heroku’s default [runtime stack](https://devcenter.heroku.com/articles/stack) and is a flexible, polyglot environment with robust introspection and erosion-resistance capabilities. It embodies [modern principles of building, deploying and managing web applications](https://devcenter.heroku.com/articles/architecting-apps) and is recommended for all apps.

### Advanced HTTP capabilities

On Cedar, an app named `foo` will have the default hostname of `foo.herokuapp.com`.
The `herokuapp.com` domain routes to a modern [HTTP stack](https://devcenter.heroku.com/articles/http-routing) which offers a direct routing path to your web processes. This allows for advanced HTTP uses such as [chunked responses](http://en.wikipedia.org/wiki/Chunked_transfer_encoding), [long polling](http://en.wikipedia.org/wiki/Push_technology#Long_polling), and using an asynchronous web server to handle multiple responses from a single web process.
Cedar does not include a reverse proxy cache such as Varnish, preferring to empower developers to choose the CDN solution that best serves their needs.

## [Process Types and the Procfile](https://devcenter.heroku.com/articles/procfile)

### Intro.

A Procfile is a mechanism for declaring what commands are run by your application’s [dynos](https://devcenter.heroku.com/articles/dynos) on the Heroku platform. It follows the process model. You can use a Procfile to declare various [process types](https://devcenter.heroku.com/articles/process-model), such as multiple types of workers, a singleton process like a [clock](https://devcenter.heroku.com/articles/scheduled-jobs-custom-clock-processes), or a consumer of the Twitter streaming API.

[Applying the Unix Process Model to Web Apps](http://adam.herokuapp.com/past/2011/5/9/applying_the_unix_process_model_to_web_apps/)

### Procfile naming and location

A Procfile is a file named `Procfile`. It should be named `Procfile` exactly, and not anything else. For example, `Procfile.txt` is not valid. The file should be a simple text file.
The file must be placed in the root directory of your application. It will not function if placed in a subdirectory.

### Declaring process types

Process types are declared via a file named `Procfile` placed in the root directory of your app. Its format is one process type per line, with each line containing:

```
<process type>: <command>

// Examples:
web: bundle exec rails server -p $PORT

// A Clojure app’s web process type might look something like this:
web: lein run -m demo.web $PORT

//  A Maven-generated batch file executing the Tomcat Java application server:
web: sh target/bin/webapp

worker:  bundle exec rake jobs:work
```

The syntax is defined as:

**<process type>** – an alphanumeric string, is a name for your command, such as `web`, `worker`, `urgentworker`, `clock`, etc.
**<command>** – a command line to launch the process, such as `rake jobs:work`.

### Developing locally

Use the Heroku Local command-line tool to run your app locally. For more information see the [Heroku Local](https://devcenter.heroku.com/articles/heroku-local) article.

## [Heroku Postgres](https://devcenter.heroku.com/articles/heroku-postgresql)

### Performance analytics

Performance analytics is the visibility suite for Heroku Postgres. It enables you to monitor the performance of your database and to diagnose potential problems. It consists of several components:

#### Expensive queries

The leading cause of poor database performance is unoptimized queries. The list of your most expensive queries, available through [postgres.heroku.com](https://postgres.heroku.com/databases), helps to identify and understand the queries that take the most time in your database. Full documentation is available [here](https://devcenter.heroku.com/articles/expensive-queries).

#### [pg:diagnose](https://devcenter.heroku.com/articles/heroku-postgresql#pg-diagnose)

performs a number of useful health and diagnostic checks that help analyze and optimize the performance of a database. The report that can be shared with others on your team or with Heroku Support.

## Commands

`heroku create`: to create an app on the Cedar-14 stack use the heroku create command from the Heroku command line:

[`heroku ps`](https://devcenter.heroku.com/articles/scaling): lists all dynos running for an application and clearly identifies the state of each individual dyno. The list indicates the process type in the left column, and the command corresponding to that process type in the right column.
- `heroku ps:scale`: to dial-down HTTP processing while increasing background job concurrency. [...](https://devcenter.heroku.com/articles/scaling)
- `heroku ps:scale worker=1`
- `heroku ps:resize worker=standard-2x`

`heroku run`: execute any command against your application.
- `heroku run "lein repl"`
- `heroku run rake db:migrate`

`heroku logs`: calls the [Aggregated logs](https://devcenter.heroku.com/articles/logging) for all components in the application stack.
- `-t` keeps the log stream open so new entries are automatically displayed.
- `heroku logs --ps worker.1 -t`
- `heroku logs -p postgres -t` to see logs from the database service itself. `-p postgres` flag indicating that you only want to see the logs from Postgres.

[`heroku releases`](https://devcenter.heroku.com/articles/releases): display all application deployments and configuration changes.

`heroku pg`

`heroku pg:diagnose --app sushi` performs a number of useful health and diagnostic checks that help analyze and optimize the performance of a database.

# [Grunt](http://gruntjs.com/getting-started)

## Working with an existing Grunt project
Assuming that the Grunt CLI has been installed and that the project has already been configured with a `package.json` and a `Gruntfile`, it's very easy to start working with Grunt:

Change to the project's root directory.
Install project dependencies with `npm install`.
Run Grunt with `grunt`.
That's really all there is to it. Installed Grunt tasks can be listed by running `grunt --help` but it's usually a good idea to start with the project's documentation.

## Preparing a new Grunt project

A typical setup will involve adding two files to your project: `package.json` and the `Gruntfile`(`Gruntfile.js` or `Gruntfile.coffee`).

### package.json

The `package.json` file belongs in the root directory of your project, next to the `Gruntfile`, and should be committed with your project source. Running `npm install` in the same folder as a `package.json` file will install the correct version of each dependency listed therein.

There are a few ways to create a package.json file for your project:

- Most [grunt-init](http://gruntjs.com/project-scaffolding) templates will automatically create a project-specific `package.json` file.
- The [npm init](https://docs.npmjs.com/cli/init) command will create a basic pa`ckage.json` file.
- Start with the example below, and expand as needed, following this [specification](https://docs.npmjs.com/files/package.json).

```json
{
  "name": "my-project-name",
  "version": "0.1.0",
  "devDependencies": {
    "grunt": "~0.4.5",
    "grunt-contrib-jshint": "~0.10.0",
    "grunt-contrib-nodeunit": "~0.4.1",
    "grunt-contrib-uglify": "~0.5.0"
  }
}
```

#### Installing Grunt and gruntplugins

The easiest way to add Grunt and gruntplugins to an existing `package.json` is with the command npm `install <module> --save-dev`. Not only will this install `<module>` locally, but it will automatically be added to the [devDependencies](https://docs.npmjs.com/files/package.json#devdependencies) section, using a [tilde version range](https://npmjs.org/doc/misc/semver.html#Ranges).

For example, this will install the latest version of Grunt in your project folder, adding it to your devDependencies:

```shell
npm install grunt --save-dev
```

Checkout the current available gruntplugins to be installed and used on your project at the plugins page.

Be sure to commit the updated package.json file with your project when you're done!

### The Gruntfile

In the following `Gruntfile`, project metadata is imported into the Grunt config from the project's `package.json` file and the [grunt-contrib-uglify](http://github.com/gruntjs/grunt-contrib-uglify) plugin's `uglify` task is configured to minify a source file and generate a banner comment dynamically using that metadata. When `grunt` is run on the command line, the `uglify` task will be run by default.

Most Grunt tasks rely on configuration data defined in an object passed to the [grunt.initConfig](http://gruntjs.com/grunt#grunt.initconfig) method.

You may store any arbitrary data inside of the configuration object, and as long as it doesn't conflict with properties your tasks require, it will be otherwise ignored. Also, because this is JavaScript, you're not limited to JSON; you may use any valid JS here. You can even programmatically generate the configuration if necessary.

Like most tasks, the [grunt-contrib-uglify](http://github.com/gruntjs/grunt-contrib-uglify) plugin's `uglify` task expects its configuration to be specified in a property of the **same name**. Here, the `banner` option is specified, along with a single `uglify` target named build that minifies a single source file to a single destination file.

```javascript
module.exports = function(grunt) { //The "wrapper" function

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      },
      build: {
        src: 'src/<%= pkg.name %>.js',
        dest: 'build/<%= pkg.name %>.min.js'
      }
    }
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-uglify');

  // Default task(s).
  grunt.registerTask('default', ['uglify']);

};
```

#### Loading Grunt plugins and tasks

Many commonly used tasks like [concatenation](https://github.com/gruntjs/grunt-contrib-concat), [minification](http://github.com/gruntjs/grunt-contrib-uglify) and [linting](https://github.com/gruntjs/grunt-contrib-jshint) are available as [grunt plugins](https://github.com/gruntjs). As long as a plugin is specified in `package.json` as a dependency, and has been installed via `npm install`, it may be enabled inside your `Gruntfile` with a simple command:

```javascript
// Load the plugin that provides the "uglify" task.
grunt.loadNpmTasks('grunt-contrib-uglify');
```

#### Custom tasks

You can configure Grunt to run one or more tasks by `default` by defining a default task. In the following example, running `grunt` at the command line without specifying a task will run the `uglify` task. This is functionally the same as explicitly running `grunt uglify` or even `grunt default`. Any number of tasks (with or without arguments) may be specified in the array.

```javascript
// Default task(s).
grunt.registerTask('default', ['uglify']);
```

If your project requires tasks not provided by a Grunt plugin, you may define custom tasks right inside the `Gruntfile`. For example, this `Gruntfile` defines a completely custom `default` task that doesn't even utilize task configuration:

```javascript
module.exports = function(grunt) {

  // A very basic default task.
  grunt.registerTask('default', 'Log some stuff.', function() {
    grunt.log.write('Logging some stuff...').ok();
  });

};
```

Custom project-specific tasks don't need to be defined in the `Gruntfile`; they may be defined in external `.js` files and loaded via the [grunt.loadTasks](http://gruntjs.com/grunt#grunt.loadtasks) method.

# Footnotes
- [What is npm?](https://docs.npmjs.com/getting-started/what-is-npm)
- For more information about writing custom tasks or Grunt plugins, check out the [developer documentation](http://gruntjs.com/grunt), [Configuring Tasks](http://gruntjs.com/configuring-tasks/), or [Creating Tasks](http://gruntjs.com/creating-tasks/).