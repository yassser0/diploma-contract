// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DiplomaRegistry {
    address public admin;

    constructor() {
        admin = msg.sender;
    }

    struct Diploma {
        string studentName;
        string diplomaTitle;
        string institution;
        uint256 year;
    }

    mapping(address => Diploma[]) private diplomas;

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    function addDiploma(
        address student,
        string memory name,
        string memory title,
        string memory institution,
        uint256 year
    ) public onlyAdmin {
        diplomas[student].push(Diploma(name, title, institution, year));
    }

    function getDiplomas(address student) public view returns (Diploma[] memory) {
        return diplomas[student];
    }

    // ✅ Nouvelle fonction : mise à jour d’un diplôme par l’admin
    function updateDiploma(
        address student,
        uint index,
        string memory name,
        string memory title,
        string memory institution,
        uint year
    ) public onlyAdmin {
        require(index < diplomas[student].length, "Index invalide");
        diplomas[student][index] = Diploma(name, title, institution, year);
    }
    function deleteDiploma(address student, uint index) public onlyAdmin {
    require(index < diplomas[student].length, "Index invalide");

    for (uint i = index; i < diplomas[student].length - 1; i++) {
        diplomas[student][i] = diplomas[student][i + 1];
    }
    diplomas[student].pop();
}

}
