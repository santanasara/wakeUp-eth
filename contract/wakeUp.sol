pragma solidity >= 0.4.22 < 0.6.0;
pragma experimental ABIEncoderV2;
 
contract wakeUp {
   
   
    // Ranking schema
    enum Stars { nan, bronze , silver, gold , platinum, diamond }
   
 
    // Estrutura de um dorminhoco
    struct Sleeper {
        address sleeperAdress;
        bool awake;
        uint lastDay;
        uint initMoney;
        uint accumulatedMoney;
        uint accumulatedDays;
        uint howManyDays;
        uint howHour;
        Stars rank;
       
    }
 
    // Endereço do atual Usuario do contrato
    address chairperson;
    mapping(address => Sleeper) sleepers;
 
 
    // Evento para imutalibilizar no ABI pra acessar no JS
    event WakeUp(Sleeper _person);
 
 
 
    constructor() public payable{
           
        chairperson = msg.sender;
        sleepers[chairperson].sleeperAdress = msg.sender;
        sleepers[chairperson].initMoney = msg.value;
       
    }
   
   
   
    function setWakeUp() public {
       
        sleepers[chairperson].awake = true;
        emit WakeUp(sleepers[chairperson]);
        sleepers[chairperson].awake = false;
    }
   
    function getWakeUp() public view returns (bool){
        return sleepers[chairperson].awake;
       
    }
 
    modifier onlyOwner {
        require(msg.sender == chairperson);
        _;
    }
 
    function setHowManyDays(uint _howManyDays) public {
        sleepers[chairperson].howManyDays = _howManyDays;
    }
   
    function setHourToWakeUp(uint _howHour) public {
        sleepers[chairperson].howHour = _howHour;
 
    }
   
    // Funcionando!
    function getInitMoney() public view returns (uint){
        return sleepers[chairperson].initMoney;
    }
 
    // Funcionando!
    function getHowManyDays() public view returns (uint) {
        return sleepers[chairperson].howManyDays;
    }
 
    // Funcionando!
    function getHowHours() public view returns(uint){
        return sleepers[chairperson].howHour;
    }
   
    // Como retorna o Enum Type?
    function getRank() public view returns(uint){
        return uint(sleepers[chairperson].rank);
    }
   
    function setBronze() internal {
        sleepers[chairperson].rank = Stars.bronze;
    }
 
    function setSilver() internal {
        sleepers[chairperson].rank = Stars.silver;
       
    }
   
    function setGold() internal {
        sleepers[chairperson].rank = Stars.gold;
    }
 
    function setPlatinum() internal {
        sleepers[chairperson].rank = Stars.platinum;
       
    }
 
    function setDiamond() internal {
        sleepers[chairperson].rank = Stars.diamond;
    }
   
   
   
/*    function setAccumulatedDays() internal {
        sleepers[chairperson].lastDay = now - sleepers[chairperson].lastDay;
    }*/
   
    function setRank() internal {
        if( sleepers[chairperson].accumulatedDays > 7) {
            setBronze();
        }
        else if (sleepers[chairperson].accumulatedDays > 30) {
            setSilver();
        }
        else if (sleepers[chairperson].accumulatedDays > 90) {
            setGold();
        }
        else if (sleepers[chairperson].accumulatedDays > 180) {
            setPlatinum();
        }
        else if (sleepers[chairperson].accumulatedDays > 360) {
            setDiamond();
        }
    }
   
   
   
    //Os ranks não foram testados
   
    // Quais são as funções que faltam?
    // acordar;
    // tirar dinheiro;
    // subir ranking de acordo com os dias que foi acordado;
    // algo mais?
 
}
