from flask import Flask, jsonify
import mysql.connector as mysql

servico = Flask(__name__)

IS_ALIVE = "yes"
DEBUG = True
TAMANHO_PAGINA = 8

MYSQL_SERVER = "bancodados"
MYSQL_USER = "root"
MYSQL_PASS = "admin"
MYSQL_BANCO = "infosantos"

def get_conexao_bd():
    conexao = mysql.connect(
        host=MYSQL_SERVER, user=MYSQL_USER, password=MYSQL_PASS, database=MYSQL_BANCO
    )

    return conexao

def gerar_feed(registro):
    feed = {
        "_id": registro["feed_id"],
        "nome": registro["feed_nome"],
        "posicao": registro["feed_pos"],
        "partidas": registro["feed_partidas"],
        "gols": registro["feed_gols"],
        "assistencias": registro["feed_ass"],
        "amarelos": registro["feed_amarelo"],
        "vermelhos": registro["feed_vermelho"]
    }

    return feed

@servico.route("/isalive/")
def is_alive():
    return IS_ALIVE

@servico.route("/feeds/<int:pagina>/")
def get_feeds(pagina):
    feeds = []

    conexao = get_conexao_bd()
    cursor = conexao.cursor(dictionary=True)
    cursor.execute(
        "select jogadores.id as feed_id, jogadores.nome as feed_nome, jogadores.pos as feed_pos, jogadores.partidas as feed_partidas, jogadores.gols as feed_gols, jogadores.ass as feed_ass, jogadores.amarelo as feed_amarelo, jogadores.vermelho as feed_vermelho " +
        "from jogadores " +
        "order by id " +
        "limit " + str((pagina - 1) * TAMANHO_PAGINA) + ", " + str(TAMANHO_PAGINA)
    )

    resultado = cursor.fetchall()
    for registro in resultado:
        feeds.append(gerar_feed(registro))

    return jsonify(feeds)

@servico.route("/feed/<int:feed_id>/")
def get_feed(feed_id):

    feed = []

    conexao = get_conexao_bd()
    cursor = conexao.cursor(dictionary=True)
    cursor.execute(
        "select jogadores.id as feed_id, jogadores.nome as feed_nome, jogadores.pos as feed_pos, jogadores.partidas as feed_partidas, jogadores.gols as feed_gols, jogadores.ass as feed_ass, jogadores.amarelo as feed_amarelo, jogadores.vermelho as feed_vermelho " + 
        "from jogadores " +
        "where jogadores.id=" + str(feed_id)
    )
    registro = cursor.fetchone()
    if registro:
        feed = gerar_feed(registro)

    return jsonify(feed)

if __name__ == "__main__":
    servico.run(
        host="0.0.0.0",
        debug=DEBUG
    )
