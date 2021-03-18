pragma solidity ^0.5.2;
pragma experimental ABIEncoderV2;

contract Test {
   
   //movie structure
   struct movie{
       uint movie_id;
       string movie_name;
   }
   
   //actor structure
   struct actor{
       uint actor_id;
       string actor_name;
   }
   
   //these map will be used to get list of all movies from a actor id
   //and to get list of all actors from a movie id
   mapping(uint => movie[]) private actorToMovies;    //A map from unsigned int to array of movies
   mapping(uint => actor[]) private movieToActors;    //A map from unsigned int to array of actor
   
   
   mapping(uint => movie) private movies;           //to get movie name from its id
   mapping(uint => actor) private actors;           //to get actor name from its id
   
   //function for adding movies
   function addMovie(uint _id, string memory _name) public {
       movie memory newMovie;
       newMovie.movie_id = _id;
       newMovie.movie_name = _name;
       
       movies[_id] = newMovie;
   }
   
   //function for adding actors
   function addActor(uint _id, string memory _name) public {
       actor memory newActor;
       newActor.actor_id = _id;
       newActor.actor_name = _name;
       
       actors[_id] = newActor;
   }
   
   //function that associates an actor to a movie
   //takes movie_id and actor_id as parameter
   function associateActorToMovie(uint a_id, uint m_id) public {
       actorToMovies[a_id].push(movies[m_id]);
       movieToActors[m_id].push(actors[a_id]);
   }
   
   //function to find actors from a given movie
   function getActorsFromMovieId(uint m_id) public view returns(actor[] memory) {
       return movieToActors[m_id];
   }
   
   //function to find movies from a given actor
   function getMoviesFromActorId(uint a_id) public view returns(movie[] memory) {
       return actorToMovies[a_id];
   }
   
}