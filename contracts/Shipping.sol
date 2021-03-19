// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Shipping {
    // predefined values for shipping listed as enums
    enum ShippingStatus {Pending, Shipped, Delivered}
    enum ShipmentStatus {Pending, Shipped, Delivered}

    // save enum ShippingStatus in variable status
    ShippingStatus private status;
    ShipmentStatus public shipstatus;
    uint256 public numupdates;

    // event to launch when package has arrived
    event LogNewAlert(string description);

    // this initializes our contract state(sets enum to Pending)
    constructor() public {
        status = ShippingStatus.Pending;
        numupdates = 0;
    }

    // function to change to Shipped
    function Shipped() public {
        status = ShippingStatus.Shipped;
        shipstatus = ShipmentStatus.Shipped;
        numupdates = numupdates + 1;
    }

    // function to change to Delivered
    function Delivered() public {
        status = ShippingStatus.Delivered;
        shipstatus = ShipmentStatus.Delivered;
        numupdates = numupdates + 1;
        emit LogNewAlert("Your package has arrived!");
    }

    // function to get the status of the shipping
    function getStatus(ShippingStatus _status)
        internal
        pure
        returns (string memory)
    {
        // check the current status and return the correct name
        if (ShippingStatus.Pending == _status) return "Pending";
        if (ShippingStatus.Shipped == _status) return "Shipped";
        if (ShippingStatus.Delivered == _status) return "Delivered";
    }

    // get status of your shipped item
    function Status() public view returns (string memory) {
        ShippingStatus _status = status;
        return getStatus(_status);
    }
}
