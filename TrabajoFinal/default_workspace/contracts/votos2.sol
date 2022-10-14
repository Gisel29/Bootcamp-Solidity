
pragma solidity ^0.8.0;
// Contrato de votaciones
    // registrar candidatos
    // persmiso a alguien de votar
    // votar
    
contract Votes {

    address public INE = 0xC31De3b0fb01fab5a4cb2400F20Ff078fA1E516D;

    struct Candidatos{
        string id;
        string nombre;
        string partido;
        uint256 votos;
        
    }

    //Registro de candidatos
    
    Candidatos public candidato1 = Candidatos ({
        id: "1",
        nombre: "Eduardo",
        partido: "Inst",
        votos: 0
    });

    Candidatos public canditato2 = Candidatos ({ 
        id: "2",
        nombre: "Alejandro",
        partido: "Prep",
        votos: 0
    });

    Candidatos public canditato3 = Candidatos ({
        id: "3",
        nombre: "Angela",
        partido: "Arc",
        votos: 0
    });

    //Registro de votantes

    struct Votante {
        bool voto;
        bool puedeVotar;
        bool mayor;
        uint256 edad;
    }

    mapping (address => Votante) public vota;

    function _edad(address votante) public returns(uint256 edad) {
        require (edad >= 18, "No tienes edad para votar");
        vota[votante]._edad = true;
    }

    function _mayor(address votante) public returns(bool mayor) {
        vota[votante]._mayor = true;
        return (true, votante);
    }

    function _puedeVotar(address votante) public returns(bool puedeVotar) {
        vota[votante]._puedeVotar = true;
        return (true, votante);
    }
    
    function permisoVotar(address votante) public returns(bool puedeVotar) {
        vota[votante].puedeVotar = true;
        return (true, votante);
    }
    
    

}//


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// "SPDX-License-Identifier: MIT"
pragma solidity ^0.8.0;
// Contrato de votaciones
    // registrar candidatos
    // persmiso a alguien de votar
    // votar
    
contract Votes {

    address public INE = 0xC31De3b0fb01fab5a4cb2400F20Ff078fA1E516D;

    struct Candidatos{
        string id;
        string nombre;
        string partido;
        uint256 votos;
        
    }

    //Registro de candidatos
    
    Candidatos public candidato1 = Candidatos ({
        id: "1",
        nombre: "Eduardo",
        partido: "Inst",
        votos: 0
    });

    Candidatos public canditato2 = Candidatos ({ 
        id: "2",
        nombre: "Alejandro",
        partido: "Prep",
        votos: 0
    });

    Candidatos public canditato3 = Candidatos ({
        id: "3",
        nombre: "Angela",
        partido: "Arc",
        votos: 0
    });

    //Registro de votantes

    struct Votante {
        bool voto;
        bool puedeVotar;
        bool mayor;
        uint256 edad;
    }

    mapping (address => Votante) public vota;

    function _puedeVotar(address votante) public returns(bool puedeVotar) {
        vota[votante].puedeVotar = true;
       // return (true, votante);
    }


    function _edad(address votante) public returns(uint256 edad) {
        require (edad >= 18, "No tienes edad para votar");
        //vota[votante].edad = true;
    }


    function _mayor(address votante) public returns(bool mayor) {
        vota[votante].mayor = true;
        //return (true, votante);
    }

    
    
    function _voto(address votante) public returns(bool voto) {
        vota[votante].voto = true;
        //return (true, votante);
    }
    
    

}//


