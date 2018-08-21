// @flow
import React from 'react';

type Props = {
  name: string;
}

const ChampionHistoryItem = (props: Props) => {
  console.log(props.name);
  const { name } = props;
  return (
    <div>
      <div>History</div>
      <div>{name}</div>
    </div>
  );
};

export default ChampionHistoryItem;
