import gql from 'graphql-tag';

const ChampionHistory = gql`
query {
  champion(id: Aatrox) {
    id
    name
    version
  }
}`;

export default ChampionHistory;
