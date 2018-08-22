// @flow
import React from 'react';
import { Query } from 'react-apollo';
import ChampionHistoryQuery from '../graphql/query/ChampionHistoryQuery';
import ChampionHistoryItem from './ChampionHistoryItem';

const ChampionHistory = props => (
  <Query query={ChampionHistoryQuery} variables={props}>
    {({ loading, data }) => {
      console.log(props);
      if (loading) {
        return <div>Loading...</div>;
      }
      console.log(data);
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


export default ChampionHistory;
