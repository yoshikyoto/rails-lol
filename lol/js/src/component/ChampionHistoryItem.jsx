// @flow
import React from 'react';

type Champion = {
  name: string;
  version: string;
}

type Props = {
  champion: Champion;
}

const ChampionHistoryItem = (props: Props) => {
  const { champion } = props;
  const { name, version } = champion;
  return (
    <div>
      <div>History</div>
      <div>{name}</div>
      <div>{version}</div>
    </div>
  );
};

export default ChampionHistoryItem;
