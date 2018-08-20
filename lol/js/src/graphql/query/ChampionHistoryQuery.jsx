import gql from 'graphql-tag';

const ChampionHistoryQuery = gql`
{
  champion(id: Aatrox) {
    id
    name
    version
  }
}`;

export default ChampionHistoryQuery;
