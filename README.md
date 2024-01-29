# Elasticsearch Crystal

Experimental Elasticsearch Client in Crystal.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     elasticsearch:
       github: elastic/elasticsearch-cr
   ```

2. Run `shards install`

## Usage

```crystal
require "elasticsearch"

client = Elasticsearch::Client.new
response = client.info
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/elasticsearch/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Fernando Briano](https://github.com/picandocodigo) - creator and maintainer
