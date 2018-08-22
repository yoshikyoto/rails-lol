// @flow
import React from 'react';
import { Query } from 'react-apollo';
import ChampionHistoryQuery from '../graphql/query/ChampionHistoryQuery';
import ChampionHistoryItem from './ChampionHistoryItem';

type Params = {
  id: string
};

type Match = {
  params: Params
}

type Props = {
  match: Match
};

const ChampionHistory = (props: Props) => {
  const { match } = props;
  const { params } = match;
  return (
    <Query query={ChampionHistoryQuery} variables={params}>
      {({ loading, data }) => {
        console.log(props);
        if (loading) {
          return <div>Loading...</div>;
        }
        const list = data.champion.map(champion => <ChampionHistoryItem champion={champion} />);
        return (
          <div>
            Loaded!
            {list}
          </div>
        );
      }}
    </Query>
  );
};


export default ChampionHistory;
