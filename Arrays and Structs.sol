ARRAYS

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayOperations {
    uint[] public myArray;

    // Event to emit when an element is inserted
    event ElementInserted(uint element);

    // Event to emit when an element is deleted
    event ElementDeleted(uint element);

    // Function to insert an element at the end of the array
    function insert(uint _element) public {
        myArray.push(_element);
        emit ElementInserted(_element);
    }

    // Function to delete an element by its value
    function delete(uint _element) public {
        for (uint i = 0; i < myArray.length; i++) {
            if (myArray[i] == _element) {
                // Shift elements to the left to overwrite the element to be deleted
                for (uint j = i; j < myArray.length - 1; j++) {
                    myArray[j] = myArray[j + 1];
                }
                myArray.pop();
                emit ElementDeleted(_element);
                break;
            }
        }
    }

    // Function to get the length of the array
    function getArrayLength() public view returns (uint) {
        return myArray.length;
    }

    // Function to get an element at a specific index
    function getElement(uint _index) public view returns (uint) {
        require(_index < myArray.length, "Index out of bounds");
        return myArray[_index];
    }
}


STRUCTURES

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructDemo {
    // Define a structure with a single field
    struct Item {
        uint256 value;
    }

    // Declare a variable of the Item structure type
    Item public myItem;

    // Function to set the value of myItem using user input
    function setItemValue(uint256 _value) public {
        myItem.value = _value;
    }

    // Function to get the value of myItem
    function getItemValue() public view returns (uint256) {
        return myItem.value;
    }
}
