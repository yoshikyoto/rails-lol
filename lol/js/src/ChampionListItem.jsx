// @flow
import React from 'react';

type Props = {
  name: string;
}

const ChampionListItem = (props) => {
  const { name } = props;
  return <p>{name}</p>;
};

export default ChampionListItem;
