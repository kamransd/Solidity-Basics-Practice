pragma solidity ^0.8.0;

contract Weekday {
    enum Day{ Monday, Tuesday, Wednesday, Thursday, Friday, Saturaday, Sunday }

    Day public today;

    function setToday(Day _day) public {
        today = _day;
    }
}
