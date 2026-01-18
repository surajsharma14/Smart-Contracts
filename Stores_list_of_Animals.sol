// Create a contract that stores a list of animals with manual initialization and user-add functionality
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AnimalStorage {
    // Define the Animal struct
    struct Animal {
        string species;
        string name;
        uint256 age;
    }
    
    // Dynamic array to store list of animals
    Animal[] public listOfAnimals;
    
    // Constructor to manually initialize 3 animals
    constructor() {
        listOfAnimals.push(Animal({
            species: "Dog",
            name: "Buddy",
            age: 5
        }));
        
        listOfAnimals.push(Animal({
            species: "Cat",
            name: "Whiskers",
            age: 3
        }));
        
        listOfAnimals.push(Animal({
            species: "Parrot",
            name: "Polly",
            age: 7
        }));
    }
    
    // Function to add a new animal
    function addAnimal(string memory _species, string memory _name, uint256 _age) public {
        listOfAnimals.push(Animal(_age, _species, _name));
    }
    
    // Function to get total number of animals
    function getAnimalCount() public view returns (uint256) {
        return listOfAnimals.length;
    }
    
    // Function to get a specific animal by index
    function getAnimal(uint256 _index) public view returns (string memory species, string memory name, uint256 age) {
        require(_index < listOfAnimals.length, "Animal does not exist at this index");
        Animal memory animal = listOfAnimals[_index];
        return (animal.species, animal.name, animal.age);
    }
    
    // Function to get all animals (useful for smaller lists)
    function getAllAnimals() public view returns (Animal[] memory) {
        return listOfAnimals;
    }
}
