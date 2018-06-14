pragma solidity ^0.4.20;
contract CounterMaster {
    mapping(address => Counter) private counters;
    address[] private addressList;

    function addCounter(string name) {
        Counter c = new Counter(name);
        addressList.push(address(c));
        counters[address(c)] = c;
    }

    function getCounterAddressList() constant returns (address[] counterAddressList) {
        counterAddressList = addressList;
    }
}

contract Counter {
    string counterName;
    uint32 numberOfCounter;

    function Counter(string name) {
        counterName = name;
    }

    function countUp() {
        numberOfCounter++;
    }

    function getCounterName() constant returns (string name) {
        return counterName;
    }

    function getNumberOfCounter() constant returns (uint32 number) {
        return numberOfCounter;
    }
}
