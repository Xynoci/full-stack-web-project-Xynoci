# Notes
## [The Celadon Cedar-14 Stack](https://devcenter.heroku.com/articles/cedar)
### Intro.

Celadon Cedar-14 is Heroku’s default [runtime stack](https://devcenter.heroku.com/articles/stack) and is a flexible, polyglot environment with robust introspection and erosion-resistance capabilities. It embodies [modern principles of building, deploying and managing web applications](https://devcenter.heroku.com/articles/architecting-apps) and is recommended for all apps.

#### Advanced HTTP capabilities

On Cedar, an app named `foo` will have the default hostname of `foo.herokuapp.com`.
The `herokuapp.com` domain routes to a modern [HTTP stack](https://devcenter.heroku.com/articles/http-routing) which offers a direct routing path to your web processes. This allows for advanced HTTP uses such as [chunked responses](http://en.wikipedia.org/wiki/Chunked_transfer_encoding), [long polling](http://en.wikipedia.org/wiki/Push_technology#Long_polling), and using an asynchronous web server to handle multiple responses from a single web process.
Cedar does not include a reverse proxy cache such as Varnish, preferring to empower developers to choose the CDN solution that best serves their needs.

### Commands

`heroku create`: to create an app on the Cedar-14 stack use the heroku create command from the Heroku command line:

[`heroku ps`](https://devcenter.heroku.com/articles/scaling): lists all dynos running for an application and clearly identifies the state of each individual dyno.
- `heroku ps:scale`: to dial-down HTTP processing while increasing background job concurrency.

`heroku run`: execute any command against your application.
- `heroku run "lein repl"`
- `heroku run rake db:migrate`

`heroku logs`: calls the [Aggregated logs](https://devcenter.heroku.com/articles/logging) for all components in the application stack.
- `-t` keeps the log stream open so new entries are automatically displayed.
- `heroku logs --ps worker.1 -t`

[`heroku releases`](https://devcenter.heroku.com/articles/releases): display all application deployments and configuration changes.

