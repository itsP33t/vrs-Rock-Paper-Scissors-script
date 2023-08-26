import React, { useState } from "react";
import { debugData } from "../utils/debugData";
import { fetchNui } from "../utils/fetchNui";
import { useNuiEvent } from "../hooks/useNuiEvent";

debugData([
  {
    action: "setVisible",
    data: true,
  },
]);

const App: React.FC = () => {
  const ChooseRock = () => {
    SetvDisabled(true);
    fetchNui("ChooseRock");
  };
  const ChoosePaper = () => {
    SetvDisabled(true);
    fetchNui("ChoosePaper");
  };
  const ChooseScissors = () => {
    SetvDisabled(true);
    fetchNui("ChooseScissors");
  };

  const [vDisabled, SetvDisabled] = useState(false);
  useNuiEvent<boolean>("Reset", SetvDisabled);
  return (
    <div>
      {vDisabled === false ? (
        <div className="box">
          <div className="boxInsideContainer">
            <button className="ButtonTemplate" onClick={ChooseRock}>
              <img src="https://cdn.p33t.net/VALNYUBJYA.png" className="Rock" />
            </button>
            <button className="ButtonTemplate" onClick={ChoosePaper}>
              <img src="https://cdn.p33t.net/QDPSJIHRDR.png" className="Paper" />
            </button>
            <button className="ButtonTemplate" onClick={ChooseScissors}>
              <img src="https://cdn.p33t.net/UEUWBPAXMD.png" className="Scissors" />
            </button>
          </div>
        </div>
      ) : (
        <div className="boxDisabled">
          <div className="boxInsideContainer">
            <button className="ButtonTemplateDisabled">
              <img src="https://cdn.p33t.net/VALNYUBJYA.png" className="RockDisabled" />
            </button>
            <button className="ButtonTemplateDisabled">
              <img src="https://cdn.p33t.net/QDPSJIHRDR.png" className="PaperDisabled" />
            </button>
            <button className="ButtonTemplateDisabled">
              <img src="https://cdn.p33t.net/UEUWBPAXMD.png" className="ScissorsDisabled" />
            </button>
          </div>
        </div>
      )}
    </div>
  );
};

export default App;
