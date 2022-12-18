const FEEDS_URL = "http://192.168.15.69:5001/"
const ARQUIVOS_URL = "http://192.168.15.69:5004/"

export const acessarUrl = async (url) => {
    let promise = null;

    try {
        resposta = await fetch(url, { method: "GET" });
        if (resposta.ok) {
            console.log(resposta);
            promise = Promise.resolve(resposta.json());
        } else {
            promise = Promise.reject(resposta);
        }
    } catch (erro) {
        promise = Promise.reject(erro)
    }

    return promise;
}

export const getFeeds = async (pagina) => {
    return acessarUrl(FEEDS_URL + "feeds/" + pagina);
}

export const getFeed = async (feedId) => {
    return acessarUrl(FEEDS_URL + "feed/" + feedId);
}

export const getImagem = (imagem) => {
    return { uri: ARQUIVOS_URL + imagem };
}
