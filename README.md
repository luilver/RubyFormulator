# Ruby Forms

## Setup

```bash
docker build . -t rubyforms
```

## Run

```bash
docker run -p 9292:9292 rubyforms
```

## Tests

```bash
docker run -it rubyforms rake
```

## Versioning

Edit file `app/api.rb`. Within swagger documentation section, update
`doc_version` using CHANGELOG
