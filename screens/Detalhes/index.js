import React from "react";
import { Text } from 'react-native';
import { Card, CardImage, CardContent } from 'react-native-cards';

import { getFeed, getImagem } from "../../api";

export default class Detalhes extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            feedId: this.props.navigation.state.params.feedId,
            feed: null
        }
    }

    carregarFeed = () => {
        const { feedId } = this.state;

        getFeed(feedId).then((feedAtualizado) => {
            this.setState({
                feed: feedAtualizado
            },);
        }).catch((erro) => {
            console.error("erro atualizando o feed: " + erro);
        });
    }

    componentDidMount = () => {
        this.carregarFeed();
    }

    render = () => {
        const { feed } = this.state;

        if (feed) {
            return(
                <Card>
                    <CardImage
                        source={getImagem([feed._id] + ".jpg")}/>
                    <CardContent>
                        <Text>Nome: {feed.nome}</Text>
                        <Text>Posição: {feed.posicao}</Text>
                        <Text>Partidas disputadas: {feed.partidas}</Text>
                        <Text>Gols marcados: {feed.gols}</Text>
                        <Text>Assistências: {feed.assistencias}</Text>
                        <Text>Cartôes amarelos: {feed.amarelos}</Text>
                        <Text>Cartôes vermelhos: {feed.vermelhos}</Text>
                    </CardContent>
                </Card>                
            );
        } else {
            return(null);
        }
    }
}