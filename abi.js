[
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_howHour",
				"type": "uint256"
			}
		],
		"name": "setHourToWakeUp",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_howManyDays",
				"type": "uint256"
			}
		],
		"name": "setHowManyDays",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
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
		"anonymous": false,
		"inputs": [
			{
				"components": [
					{
						"internalType": "address",
						"name": "sleeperAdress",
						"type": "address"
					},
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
						"internalType": "enum WakeUpEarly.Stars",
						"name": "rank",
						"type": "uint8"
					}
				],
				"indexed": false,
				"internalType": "struct WakeUpEarly.Sleeper",
				"name": "_person",
				"type": "tuple"
			}
		],
		"name": "WakeUp",
		"type": "event"
	},
	{
		"inputs": [],
		"payable": true,
		"stateMutability": "payable",
		"type": "constructor"
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
		"name": "getRank",
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
	}
]