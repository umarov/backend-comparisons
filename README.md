# Backend Technology Comparisons

Project to compare different backend technologies and how they perform doing same type of tasks.

## Goal

To have all the servers do the same type of work and compare their performance.

Some of this work is:

- Make multiple calls to a Postgres Database
- Format the data and respond with JSON

The database used will be the same database with the same schema.

The database will easily become the bottleneck. The goal is to see the performance of each backend tech under load.

I would also like to add different types of calls where Redis is also used. This is to see caching benefits of Redis.

## Technologies

I am going to setup each of these with their basic tutorial on bootstrapping a project, add a database client, and implement the endpoints. I will write queries in raw SQL format.

I will also build docker containers out of each of them and deploy them to one of my local servers. I will have the database running on a separate server on my local network as well. That way, the database can run in isolation from the web servers. I will also run one server at a time to allow an even playing ground. In the end, it will be impossible to get equal resources on all the containers. So at the 95th percentile, the results might not always be consistent.

### Ruby on Rails

Using Ruby 3 and Rails 7. I will use the `load_async` and use `fiber` isolation level. I will try it without them as well to see the performance different

### Node.js + Fastify

I used `fastify-cli` to generate a `fastify` project with `TypeScript`. I am going to use [`postgres`](https://github.com/porsager/postgres) package for database queries. I will also take advantage of JSON Schemas for JSON serialization.

### Go + Fiber

For web server, I am using [`fiber`](https://github.com/gofiber/fiber). For database queries, I will use [`pgx`](https://github.com/jackc/pgx).

### Kotlin + Ktor

For web server, I am using [`ktor`](https://ktor.io). For database queries, I will use [`jasync-sql`](https://github.com/jasync-sql/jasync-sql). It's `netty` based. I am using the `netty` engine for Ktor to get Non-Blocking I/O. `jasync` supports it out of the box.

### More to come (rust, vertx, deno)
