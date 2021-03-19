import React from "react";
import { newContextComponents } from "@drizzle/react-components";
const { ContractData/* , ContractForm */ } = newContextComponents;

export default ({ drizzle, drizzleState }) => {
    
    return (
        <div className="App">
            <div className="section">
                <h2>Shipping test</h2>
                <h3>
                    <strong>Shipping status 1-shipped 2-delivered</strong>
                    <strong>Ship state: </strong>
                    <ContractData 
                      drizzle={drizzle}
                      drizzleState={drizzleState}
                      contract="Shipping"
                      method="shipstatus"
                    />
                </h3>
                <p>
                    <strong>Total number of updates: </strong>
                    <ContractData 
                      drizzle={drizzle}
                      drizzleState={drizzleState}
                      contract="Shipping"
                      method="numupdates"
                    />
                </p>
                <p>
                    <strong>Ship: </strong>
                    <ContractData 
                      drizzle={drizzle}
                      drizzleState={drizzleState}
                      contract="Shipping"
                      method="Shipped"
                    />
                </p>
                <p>
                    <strong>Deliver: </strong>
                    <ContractData 
                      drizzle={drizzle}
                      drizzleState={drizzleState}
                      contract="Shipping"
                      method="Delivered"
                    />
                </p>
            </div>
        </div>
    );
};