//
//  listaDeReceitasPronta.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 29/06/21.
//

import Foundation

var listaDeReceitasPronta = [
    Receita(
        id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Salada de feijão fradinho",
        tempoPreparo: "30 min",
        ingredientes: [
            Ingrediente(nome: "feijão fradinho", descricao: "300 g de feijão fradinho"),
            Ingrediente(nome: "cebola roxa", descricao: "1 cebola roxa pequena picada"),
            Ingrediente(nome: "pimentão", descricao: "1 pimentão pequeno picado"),
            Ingrediente(nome: "brócolis", descricao: "2 xícaras de flores de brócolis em pedaços"),
            Ingrediente(nome: "cenoura", descricao: "½ cenoura picada"),
            Ingrediente(nome: "milho em conserva", descricao: "½ xícara de milho em conserva lavado"),
            Ingrediente(nome: "azeite de oliva", descricao: "1 colher de sopa de azeite de oliva"),
            Ingrediente(nome: "vinagre de vinho tinto", descricao: "1 colher de sopa de vinagre de vinho tinto"),
            Ingrediente(nome: "coentro", descricao: "2 colheres de sopa de coentro picado"),
            Ingrediente(nome: "cebolinha", descricao: "2 colheres de sopa de cebolinha picada"),
            Ingrediente(nome: "sal", descricao: "Sal a gosto")
        ],
        modoPreparo: "Deixe o feijão fradinho de molho por pelo menos 8h. Descarte a água que o feijão ficou de molho e cozinhe na panela de pressão por 20 minutos, contando a partir do início da pressão, reserve. Cozinhe a cenoura e o brócolis. Em um recipiente fundo, misture bem o feijão, a cenoura e o brócolis já frios, com o resto dos ingredientes."),
    Receita(
        id: 2, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Legumes marinados",
        tempoPreparo: "",
        ingredientes: [
            Ingrediente(nome: "abobrinha", descricao: "1 abobrinha pequena cortada em cubos médios"),
            Ingrediente(nome: "pimentão amarelo", descricao: "½ pimentão amarelo cortado em cubos médios"),
            Ingrediente(nome: "pimentão vermelho", descricao: "½ pimentão vermelho cortado em cubos médios"),
            Ingrediente(nome: "pimentão verde", descricao: "½ pimentão verde cortado em cubos médios"),
            Ingrediente(nome: "palmito", descricao: "1 xícara de palmito cortado em cubos médios"),
            Ingrediente(nome: "berinjela", descricao: "1 berinjela cortada em cubos médios"),
            Ingrediente(nome: "cebola roxa", descricao: "½ cebola roxa cortada em cubos médios"),
            Ingrediente(nome: "vinho branco seco", descricao: "100mL de vinho branco seco"),
            Ingrediente(nome: "pimenta-do-reino", descricao: "pimenta-do-reino a gosto"),
            Ingrediente(nome: "sal", descricao: "sal a gosto"),
            Ingrediente(nome: "limão", descricao: "suco de ½ limão"),
            Ingrediente(nome: "azeite de oliva", descricao: "2 colheres de sopa de azeite de oliva")
        ],
        modoPreparo: "Em um recipiente misture a abobrinha, os pimentões, o palmito, a cebola e a abobrinha, acrescente o suco de meio limão, o vinho, sal e a pimenta-do-reino, deixe marinando por 20 minutos. Acrescente azeite em uma frigideira e aqueça. Cozinhe os legumes marinados, utilizando o líquido da marinada, cuidado para não cozinhar demais, eles devem ficar al dente."),
    Receita(
        id: 3, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
        nome: "Purê de mandioquinha",
        tempoPreparo: "15 min",
        ingredientes: [
            Ingrediente(nome: "mandioquinha", descricao: "1 kg de mandioquinha (batata-baroa)"),
            Ingrediente(nome: "água", descricao: "500 mL de água filtrada"),
            Ingrediente(nome: "azeite de oliva", descricao: "3 colheres de sopa de azeite de oliva"),
            Ingrediente(nome: "sal", descricao: "sal a gosto"),
            Ingrediente(nome: "noz-moscada", descricao: "noz-moscada para ralar a gosto")
        ],
        modoPreparo: "Coloque a água para ferver. Lave, descasque e corte a batata-baroa em cubos não muito grande para cozinhar mais rápido. Coloque as batatas na água fervente e deixe cozinhar. Deixe que elas fiquem bem macias. Escorra para sair a água e passe no espremedor de batatas ou então amasse em uma peneira média para obter o purê. Coloque o purê numa panela, acrescente o azeite e mexa bem. Acerte o sal, rale um pouco de noz-moscada e misture."),
    Receita(
        id: 4, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
        nome: "Almôndega de carne",
        tempoPreparo: "",
        ingredientes: [
            Ingrediente(nome: "patinho", descricao: "½ kg de patinho moído"),
            Ingrediente(nome: "cebola", descricao: "1 cebola ralada"),
            Ingrediente(nome: "alho", descricao: "3 dentes de alho amassados"),
            Ingrediente(nome: "ovo", descricao: "1 ovo"),
            Ingrediente(nome: "farinha de aveia", descricao: "2 colheres de sopa de farinha de aveia"),
            Ingrediente(nome: "salsinha", descricao: "salsinha picados a gosto"),
            Ingrediente(nome: "cebolinha", descricao: "cebolinha picados a gosto"),
            Ingrediente(nome: "molho de tomate", descricao: "2 xícaras de molho de tomate caseiro"),
            Ingrediente(nome: "sal", descricao: "sal a gosto"),
            Ingrediente(nome: "azeite de oliva", descricao: "azeite de oliva o quanto basta")
        ],
        modoPreparo: "Mistura todos os ingredientes e faça bolinhas no formato de almôndega. Em uma frigideira quente acrescente um pouco de azeite, grelhe as almôndegas até ficarem douradas. Em uma outra panela, aqueça o molho de tomate, adicione as almôndegas e deixe cozinhar por 10 minutos."),
    Receita(
        id: 5, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
        nome: "Bolinho de atum",
        tempoPreparo: "25 min",
        ingredientes: [
            Ingrediente(nome: "atum em conserva", descricao: "1 lata de atum em conserva em óleo, bem escorrido"),
            Ingrediente(nome: "aveia", descricao: "1 xícara de aveia em flocos finos"),
            Ingrediente(nome: "ovo", descricao: "1 ovo"),
            Ingrediente(nome: "sal", descricao: "sal a gosto"),
            Ingrediente(nome: "salsinha", descricao: "½ xícara salsinha picada"),
            Ingrediente(nome: "orégano", descricao: "orégano a gosto"),
            Ingrediente(nome: "pimenta-do-reino", descricao: "pimenta-do-reino a gosto")
        ],
        modoPreparo: "Misture todos os ingredientes, e modele os bolinhos com as mãos. Coloque numa assadeira e leve ao forno preaquecido a 180 °C por 25 minutos."),
    Receita(
        id: 6, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Hambúrger de Quinoa",
        tempoPreparo: "50 min",
        ingredientes: [
            Ingrediente(nome: "quinoa", descricao: "1 xícara de quinoa cozida"),
            Ingrediente(nome: "cenoura", descricao: "1/4 xícara de cenoura ralada"),
            Ingrediente(nome: "farinha de aveia", descricao: "1/4 xícara de farinha de aveia"),
            Ingrediente(nome: "cebolinha verde", descricao: "½  xícara de cebolinha verde picada"),
            Ingrediente(nome: "alho", descricao: "2 dentes de alho grandes amassados ou picados"),
            Ingrediente(nome: "orégano", descricao: "2 colheres de chá de orégano seco"),
            Ingrediente(nome: "páprica doce", descricao: "1 colher de chá de páprica doce em pó"),
            Ingrediente(nome: "gergelim branco", descricao: "2 colheres de sopa de semente de gergelim branco"),
            Ingrediente(nome: "sal", descricao: "sal a gosto"),
            Ingrediente(nome: "pimenta-do-reino", descricao: "pimenta-do-reino a gosto"),
            Ingrediente(nome: "farelo de aveia", descricao: "½ xícara de farelo de aveia para empanar"),
            Ingrediente(nome: "azeite de oliva", descricao: "azeite de oliva o quanto basta")
        ],
        modoPreparo: "Em uma panela adicione água e deixe a água ferver, coloque a quinoa e uma pitada de sal, e mexa de vez em quando até levantar fervura. Assim que ferver, tampe e abaixe o fogo e deixe cozinhar por 10 a 15 minutos. Cuidado para não cozinhar demais, deixe cozinhar por 10 minutos e verifique se está bem cozida, caso não esteja, deixe por mais 5 minutos. Escorra a quinoa e lave em água corrente para interromper o cozimento. Coloque numa travessa funda, solte os grãos com um garfo. Deixe esfriar para começar a preparar os hambúrgueres. Unte bem uma assadeira com azeite e reserve. Em um prato grande coloque a quinoa, a cenoura ralada, o alho amassado, o orégano, a páprica e misture bem. Acerte o sal. Acrescente a farinha de aveia, a cebolinha verde picada e misture bem. Se achar necessário coloque mais um pouco de farinha de aveia, apenas o suficiente para poder modelar. Acrescente por último as duas colheres de semente de gergelim e misture. Verifique o sal e acrescente a pimenta-do-reino a gosto. Molde no formato de hambúrguer. Em um prato grande coloque farelo de aveia o suficiente para empanar os hambúrgueres. Coloque uma pitadinha de sal e se quiser pode adicionar uma pitadinha de pimenta-do-reino. Também pode acrescentar orégano, salsinha desidratada ou outras ervas secas que desejar. Empane. Disponha os hambúrgueres modelados na assadeira previamente untada. Leve a assadeira ao forno pré-aquecido a 180°C por 30 minutos virando na metade do tempo. Espere esfriar um pouco para retirar os hambúrgueres da forma para evitar que se quebrem."),
]
