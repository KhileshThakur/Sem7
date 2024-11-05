// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StudentContract{
    struct Student{
        uint id;
        string name;
        uint age;
    }

    Student[] private students;

    event StudentAdded(uint id, string name, uint age);
    event FallbackTriggered(address sender);

    function addStudent(uint _id, string memory _name, uint _age) public {
        Student memory studentDetails = Student({
            id: _id,
            name: _name,
            age: _age
        });
        students.push(studentDetails);
        emit StudentAdded(_id, _name, _age);
    }

    function getStudent(uint index) public view returns (uint , string memory, uint){
        require(index < students.length, "No Student Found");
        Student memory studentInfo = students[index];
        return (studentInfo.id, studentInfo.name, studentInfo.age);
    }

    fallback() external { 
        emit FallbackTriggered(msg.sender);
    }
}
