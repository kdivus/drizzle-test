import Web3 from "web3";
import Shipping from "./contracts/Shipping.json";


const options = {
  web3: {
    block: false,
    customProvider: new Web3("ws://localhost:8545"),
  },
  contracts: [Shipping],
  events: {
    Shipping: ["LogNewAlert"],
  },
};

export default options;
