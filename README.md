# Contract-of-movies-and-actors-in-solidity

## Built in **Remix - Ethereum IDE** 
## Deployed on **ropsten test net** 

## [Link to contract](https://ropsten.etherscan.io/address/0x40da9dade7c97816f5a621646f616b5631e3c895)

# About Code
### A movie and an actor both has a unique Id and a unique name
### For that a movie structure and actor structure was created
```
   //movie structure
   struct movie{
       uint movie_id;
       string movie_name;
   }
```
```
   //actor structure
   struct actor{
       uint actor_id;
       string actor_name;
   }
```
### To store movies and actors **mapping** data structure was used which take key as Id and gives the corrosponding structure and also, to associate actor with a movie **mapinng** data structure was used which takes key as actor id and gives the list of movies associated with given actor id
```
   //these map will be used to get list of all movies from a actor id
   //and to get list of all actors from a movie id
   mapping(uint => movie[]) private actorToMovies;    //A map from unsigned int to array of movies
   mapping(uint => actor[]) private movieToActors;    //A map from unsigned int to array of actor
   
   
   mapping(uint => movie) private movies;           //to get movie structure from its id
   mapping(uint => actor) private actors;           //to get actor structure from its id
```
## Functions to add actors and movies
### Function ***addMovie*** takes movie Id and movie Name as function parameters and creates a movie structure and add it to stored **movies map** 
```
   //function for adding movies
   function addMovie(uint _id, string memory _name) public {
       movie memory newMovie;
       newMovie.movie_id = _id;
       newMovie.movie_name = _name;
       
       movies[_id] = newMovie;
   }
```
### Similarly function ***addActor*** works
```
   //function for adding actors
   function addActor(uint _id, string memory _name) public {
       actor memory newActor;
       newActor.actor_id = _id;
       newActor.actor_name = _name;
       
       actors[_id] = newActor;
   }
```


   
   
