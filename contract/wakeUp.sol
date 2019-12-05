pragma solidity >= 0.4.22 < 0.6.0;
pragma experimental ABIEncoderV2;
 
contract wakeUp{
   
   
    // Ranking schema
    enum Stars { NaN , bronze , silver, gold , platinum, diamond }
   
 
    // Estrutura de um dorminhoco
    struct Sleeper {
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
    address payable winner; 
    mapping(address => Sleeper) sleepers;
    
    
 
 
    // Evento para imutalibilizar no ABI pra acessar no JS
    event WakeUp(bool resp);
 
 
 
    constructor() public payable{
           
        chairperson = msg.sender;
        sleepers[chairperson].initMoney = msg.value;
        sleepers[chairperson].rank = Stars.bronze;
       
    }
   
   
   
   
    function getWakeUp() public view returns (bool){
        return sleepers[chairperson].awake;
       
    }
 
    modifier onlyOwner {
        require(msg.sender == chairperson);
        _;
    }
 
    function setHowManyDays(uint _howManyDays) internal {
        sleepers[chairperson].howManyDays = _howManyDays;
    }
   
    function setHourToWakeUp(uint _howHour) internal {
        sleepers[chairperson].howHour = _howHour;
 
    }
    
    function setHourDayAndInitMoney(uint _howHour, uint _howManyDays, uint _initMoney) public payable {

        setHourToWakeUp(_howHour);
        setHowManyDays(_howManyDays);
        sleepers[chairperson].initMoney = _initMoney*msg.value;
    }
   
   
    // Funcionando!
    function getInitMoney() public view returns (uint){
        return sleepers[chairperson].initMoney;
    }
    
       
    // Funcionando!
    function getAccumulatedMoney() public view returns (uint){
        return sleepers[chairperson].accumulatedMoney;
    }
 
     // Funcionando!
    function getAccumulatedDays() public view returns (uint){
        return sleepers[chairperson].accumulatedDays;
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
    function getRank() public view returns(Stars){
        return sleepers[chairperson].rank;
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
   
   

   
    function checkAndUpdateRank() internal {
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
   
   
   // Funcionando
    function getMidnightHourBasedInThatDay() internal view  returns (uint){
        return (now / 1 days * 1 days);
   }

   // Funcionando

    function checkHour(uint _howHour) internal view returns (bool){
        if (now - getMidnightHourBasedInThatDay() < _howHour *  1 hours){
            return true;
        }
        return false;

    }
    
    
    function getTest() public view returns (uint){
    return (now - getMidnightHourBasedInThatDay());
    }
    
    function getTest2() public view returns (uint){
    return (1 / sleepers[chairperson].howManyDays);
    }
    
    


// Não funcionado
    function alarmButton() public onlyOwner {
        sleepers[chairperson].accumulatedMoney = sleepers[chairperson].initMoney;
        
        checkAndUpdateRank();
        
        if(checkHour(sleepers[chairperson].howHour) == true){
            sleepers[chairperson].accumulatedDays = sleepers[chairperson].accumulatedDays + 1;
                    sleepers[chairperson].awake = true;
        }else{

            sleepers[chairperson].accumulatedMoney = sleepers[chairperson].accumulatedMoney - sleepers[chairperson].accumulatedMoney/(sleepers[chairperson].howManyDays + uint(sleepers[chairperson].rank));
            
        }
        
        emit WakeUp(sleepers[chairperson].awake);
        
        sleepers[chairperson].awake = false;



    }
    
    function withdraw() external onlyOwner {
        require(msg.sender == chairperson);
        winner = msg.sender;
        winner.transfer(address(this).balance / 2);
    }
    

}
