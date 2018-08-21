import React from 'react';
import { Query } from 'react-apollo';
import ChampionHistoryQuery from '../graphql/query/ChampionHistoryQuery';
import ChampionHistoryItem from './ChampionHistoryItem';

const ChampionHistory = () => (
  <Query query={ChampionHistoryQuery}>
    {({ loading, data }) => {
      if (loading) {
        return <div>Loading...</div>;
      }
      console.log(data);
      const championHistory = data.champion;
      const list = championHistory.map(champion => <ChampionHistoryItem props={champion} />);
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
