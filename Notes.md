# [The Celadon Cedar-14 Stack](https://devcenter.heroku.com/articles/cedar)
## Intro.

Celadon Cedar-14 is Heroku’s default [runtime stack](https://devcenter.heroku.com/articles/stack) and is a flexible, polyglot environment with robust introspection and erosion-resistance capabilities. It embodies [modern principles of building, deploying and managing web applications](https://devcenter.heroku.com/articles/architecting-apps) and is recommended for all apps.

## Advanced HTTP capabilities

On Cedar, an app named `foo` will have the default hostname of `foo.herokuapp.com`.
The `herokuapp.com` domain routes to a modern [HTTP stack](https://devcenter.heroku.com/articles/http-routing) which offers a direct routing path to your web processes. This allows for advanced HTTP uses such as [chunked responses](http://en.wikipedia.org/wiki/Chunked_transfer_encoding), [long polling](http://en.wikipedia.org/wiki/Push_technology#Long_polling), and using an asynchronous web server to handle multiple responses from a single web process.
Cedar does not include a reverse proxy cache such as Varnish, preferring to empower developers to choose the CDN solution that best serves their needs.

# [Process Types and the Procfile](https://devcenter.heroku.com/articles/procfile)

## Intro.

A Procfile is a mechanism for declaring what commands are run by your application’s [dynos](https://devcenter.heroku.com/articles/dynos) on the Heroku platform. It follows the process model. You can use a Procfile to declare various [process types](https://devcenter.heroku.com/articles/process-model), such as multiple types of workers, a singleton process like a [clock](https://devcenter.heroku.com/articles/scheduled-jobs-custom-clock-processes), or a consumer of the Twitter streaming API.

[Applying the Unix Process Model to Web Apps](http://adam.herokuapp.com/past/2011/5/9/applying_the_unix_process_model_to_web_apps/)

## Procfile naming and location

A Procfile is a file named `Procfile`. It should be named `Procfile` exactly, and not anything else. For example, `Procfile.txt` is not valid. The file should be a simple text file.
The file must be placed in the root directory of your application. It will not function if placed in a subdirectory.

## Declaring process types

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

## Developing locally

Use the Heroku Local command-line tool to run your app locally. For more information see the [Heroku Local](https://devcenter.heroku.com/articles/heroku-local) article.

# Commands

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

[`heroku releases`](https://devcenter.heroku.com/articles/releases): display all application deployments and configuration changes.


