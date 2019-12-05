var abi = [
    {
      "inputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "constructor"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "components": [
            {
              "internalType": "bool",
              "name": "awake",
              "type": "bool"
            },
            {
              "internalType": "uint256",
              "name": "lastDay",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "initMoney",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "accumulatedMoney",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "accumulatedDays",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "howManyDays",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "howHour",
              "type": "uint256"
            },
            {
              "internalType": "enum wakeUp.Stars",
              "name": "rank",
              "type": "uint8"
            }
          ],
          "indexed": false,
          "internalType": "struct wakeUp.Sleeper",
          "name": "_person",
          "type": "tuple"
        }
      ],
      "name": "WakeUp",
      "type": "event"
    },
    {
      "constant": false,
      "inputs": [],
      "name": "setWakeUp",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getWakeUp",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_howHour",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "_howManyDays",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "_initMoney",
          "type": "uint256"
        }
      ],
      "name": "setHourDayAndInitMoney",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getInitMoney",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getAccumulatedMoney",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getAccumulatedDays",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getHowManyDays",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getHowHours",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getRank",
      "outputs": [
        {
          "internalType": "enum wakeUp.Stars",
          "name": "",
          "type": "uint8"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getTest",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getTest2",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [],
      "name": "alarmButton",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    }
  ] 
