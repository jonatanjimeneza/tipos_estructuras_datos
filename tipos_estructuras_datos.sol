// SPDX-License-Identifier: MIT

// Version del compilador
pragma solidity ^0.8.0;


//Smart Contract tipos de estructuras.
contract estructuras{
            //Estructura de datos
            struct Client{
                uint256 id;
                string name;
                string email;
            }

            //Tipo de variable cliente
            Client client_1 = Client(1, "Jonatan", "jonatan@gmail.com");


            //Array fija
            uint256[4] public fixed_list_uints = [1,2,3,4];

            //Array dinamico
            uint256[] dynamic_list_uints;

            //Array dinamica para la estructura cliente
            Client [] public dynamic_list_client;

            //Nuevos dats en un array dinamico
            function array_modification(uint256 _id, string memory _name, string memory _email)public{
                dynamic_list_client.push(Client(_id,_name,_email));
            }

            //Mappings
            mapping (address => uint256) public address_uint;
            mapping (string => uint256[]) public string_listUints;
            mapping (address => Client) public address_dataStruct;

            //Función de asociación de address a numero
            function assignNumber(uint256 _number) public{
                address_uint[msg.sender] = _number;
            }

            //Asignación de una lista
            function assignList(string memory _name, uint256 _number) public{
                string_listUints[_name].push(_number);
            }

            //Asignación de una estructura de datos a una dirección
            function assignDataStruct(uint256 _id, string memory _name, string memory _email) public{
                address_dataStruct[msg.sender] = Client(_id,_name,_email);
            }
             







}

