# Sneakers-Max-Retry-Handler

A modified max retry handler for RabbitMQ and [Sneakers](https://github.com/ruby-amqp/kicks/)

A small modification of Sneaker's built-in [Maxretry class](https://github.com/ruby-amqp/kicks/blob/main/lib/sneakers/handlers/maxretry.rb)
the replacement class is called ```SneakersMaxRetryHandler::Maxretry```
has the exact same logic, but you can pass arguments for handler created queues


# Installation

Include it in your Gemfile.

```ruby
gem 'sneakers_max_retry_handler'
```

Next install it with Bundler.

```bash
$ bundle install
```


# Use:

initialize your worker with the Maxretry handler, pass arguments for retry and error queues:

```ruby
class MyWorker
   from_queue 'audit_service', {
      handler: SneakersMaxRetryHandler::Maxretry,
      retry_arguments: { 'x-queue-type': 'quorum' },
      error_arguments: { 'x-queue-type': 'quorum' }
   }
end
```
