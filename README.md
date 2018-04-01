# Mutant Hub

> Version: 1.0

## Requirements

* Ruby (2.5.0 used)
* Rails (5.1.5 used)

## Routes
Base URL: https://mutant-hub.herokuapp.com/api/v1

### Citzens

**GET** `/citzens` to retrieve all registered citzens.
```ruby
Exemple:curl -X GET https://mutant-hub.herokuapp.com/api/v1/citzens
```

**POST** `/citzens` to register a new citzen.
```ruby
{
	"name":"Thomas",
	"age":"18",
	"gender":"Male",
	"latitude":"-5.8913677",
	"longitude":"-35.2055479"
}
```

* name - Name of the citzen.
* age - Age of the citzen.
* gender - Gender of the citzen (can be Male or Female).
* location - Latitude and longitude (float)
```ruby
Exemple: curl -H "Content-Type: application/json" -X POST -d '{"name":"Matheus", "age":"18", "gender":"Male", "latitude":"10.2", "longitude":"20.1"}' https://mutant-hub.herokuapp.com/api/v1/citzens
```

**PUT** `/citzen/{id}` to update a citzen location.
```ruby
{
	"latitude":"-5.8913688",
	"longitude":"-35.2055488"
}
```
```ruby
Exemple: curl -X PUT -H "Content-Type: application/json" -d '{"latitude":"22.23", "longitude":"33.22"}' https://mutant-hub.herokuapp.com/api/v1/citzens/4
```

* location - Update location of the citzen.

**GET** `/inform_mutation/{id}/olho_na_nuca` to report a citzen that were infected by the mutation "Olho na Nuca".
```ruby
Exemple: curl -X GET https://mutant-hub.herokuapp.com/api/v1/inform_mutation/4/olho_na_nuca
```

**GET** `/inform_mutation/{id}/dente_de_neon` to report a citzen that were infected by the mutation "Dente de Neon".
```ruby
Exemple: curl -X GET https://mutant-hub.herokuapp.com/api/v1/inform_mutation/4/dente_de_neon
```
* id - Citzen with mutation.

### Reports

**GET** `/percentage_of_not_infected` the percentage of citzen that are not infected by the mutation.

**GET** `/percentage_of_infected` the percentage of citzens infected by any mutation( Olho na Nuca or Dente de Neon ) .

**GET** `/percentage_of_infected/olho_na_nuca` the percentage of citzens infected by the mututation "Olho na Nuca"

**GET** `/percentage_of_infected/dente_de_neon` the percentage of citzens infected by the mututation "Dente de Neon"
