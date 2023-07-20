pragma solidity ^0.8.0;

contract Status {
    enum StatusOption {Active, Inactive, Pending }

    StatusOption public currentStatus;

    function setStatus(StatusOption _status) public {
        currentStatus = _status;
    }
}
