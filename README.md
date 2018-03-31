# Mutant Hub

> Version: 1.0

## Requirements

* Ruby (2.5.0 used)
* Rails (5.1.5 used)

## Routes

### Citzens

**GET** `/citzens` to retrieve all registered citzens.

**POST** `/citzens` to register a new citzen.
```
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

**PUT** `/citzen/{id}` to update a citzen location.
```
{
	"latitude":"-5.8913688",
	"longitude":"-35.2055488"
}
```

*location - Update location of the citzen.

**GET** `/inform_mutation/{id}/olho_na_nuca` to report a citzen that were infected by the mutation "Olho na Nuca".

**GET** `/inform_mutation/{id}/dente_de_neon` to report a citzen that were infected by the mutation "Dente de Neon".

* id - Citzen with mutation.

### Reports

**GET** `/percentage_of_not_infected` the percentage of citzen that are not infected by the mutation.

**GET** `/percentage_of_infected` the percentage of citzens infected by any mutation( Olho na Nuca or Dente de Neon ) .


