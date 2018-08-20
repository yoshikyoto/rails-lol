import React from 'react';
import { Query } from 'react-apollo';
import ChampionHistoryQuery from '../graphql/query/ChampionHistoryQuery';


console.log(Query);
console.log(ChampionHistoryQuery);

const ChampionHistory = () => (
  <Query query={ChampionHistoryQuery}>
    {({ loading, data }) => {
      console.log('koko');
      if (loading) {
        return <p>Loading...</p>;
      }
      console.log(data);
      const championHistory = data.champion
      return <p>Loaded!</p>;
    }}
  </Query>
);

export default ChampionHistory;
