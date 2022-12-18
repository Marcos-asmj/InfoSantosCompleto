import React from "react";
import { FlatList, View } from "react-native";

import FeedCard from "../../components/FeedCard";

import { getFeeds } from "../../api";

export default class Feeds extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            proximaPagina: 1,
            feeds: [],
            atualizando: false,
            carregando: false
        };
    }

    carregarFeeds = () => {
        const { proximaPagina, feeds } = this.state;

        this.setState({
            carregando: true
        });

        getFeeds(proximaPagina).then((maisFeeds) => {
            if (maisFeeds.length){
                console.log("adicionando " + maisFeeds.length + " feeds");
                
                this.setState({
                    proximaPagina: proximaPagina + 1,
                    feeds: [...feeds, ...maisFeeds],
                    atualizando: false,
                    carregando: false
                });
            } else {
                this.setState({
                    atualizando: false,
                    carregando: false
                });
            }
        }).catch((erro) => {
            console.error("erro acessando feeds: " + erro);
        })
    }

    componentDidMount = () =>{
        this.carregarMaisFeeds();
    }

    carregarMaisFeeds = () => {
        const { carregando } = this.state;
        
        if (carregando) {
            return;
        }

        this.carregarFeeds();
    }

    atualizar = () => {
        this.setState({ atualizando: true, feeds: [], proximaPagina: 1 },
            () => {
                this.carregarFeeds();
            });
    }

    mostrarFeed = (feed) => {
        return(
            <FeedCard feed={feed} navegador={this.props.navigation}/>
        );
    }

    mostrarFeeds = (feeds) => {
        const { atualizando } = this.state;

        return(
            <FlatList
                data={feeds}
                numColumns={2}
                onEndReached={() => this.carregarMaisFeeds()}
                onEndReachedThreshold={0.2}
                onRefresh={() => this.atualizar()}
                refreshing={atualizando}
                keyExtractor={(item) => String(item._id)}
                renderItem={({item}) => {
                    return(
                        <View style={{ width: '50%'}}>
                            {this.mostrarFeed(item)}
                        </View>
                    )
                }}
            >
            </FlatList>
        );
    }

    render = () => {
        const { feeds } = this.state;

        if (feeds.length){
            console.log("exibindo " + feeds.length + " feeds");

            return(
                this.mostrarFeeds(feeds)
            )
        }else{
            return(null);
        }
    }
}