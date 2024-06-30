// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract CatStore {

    struct Cat{
        string name;
        uint age;
    }

    Cat[] public cats;

    function createCats() public {
        Cat memory cat = Cat({
            name: "Paws",
            age: 5
        });
        cats.push(cat);
    } 

    function changeCatInMemory(uint newAge) public view {
        Cat memory cat = cats[0];
        cat.age = newAge;
    }

    function changeCatInStorage(uint newAge) public {
        Cat storage cat = cats[0];
        cat.age = newAge;
    }

    function changeCatCallData(string calldata newName) public {
        Cat storage cat = cats[0];
        cat.name = newName;
    }

}
