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
### To store movies and actors **mapping** data structure was used which take key as Id and gives the corrosponding structure

   
   
