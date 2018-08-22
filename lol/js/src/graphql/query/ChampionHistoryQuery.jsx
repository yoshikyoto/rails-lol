import gql from 'graphql-tag';

const ChampionHistoryQuery = gql`
query ChampionHistory($id: String!) {
  champion(id: $id) {
    _id
    name
    version
  }
}`;

export default ChampionHistoryQuery;
