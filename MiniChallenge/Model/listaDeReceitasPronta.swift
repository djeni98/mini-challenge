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
        modoPreparo: "Deixe o feijão fradinho de molho por pelo menos 8h. Descarte a água que o feijão ficou de molho e cozinhe na panela de pressão por 20 minutos, contando a partir do início da pressão, reserve. Cozinhe a cenoura e o brócolis. Em um recipiente fundo, misture bem o feijão, a cenoura e o brócolis já frios, com o resto dos ingredientes.",
        nomeImagem: "receitaFeijaoFradinho"),
    
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
        modoPreparo: "Em um recipiente misture a abobrinha, os pimentões, o palmito, a cebola e a abobrinha, acrescente o suco de meio limão, o vinho, sal e a pimenta-do-reino, deixe marinando por 20 minutos. Acrescente azeite em uma frigideira e aqueça. Cozinhe os legumes marinados, utilizando o líquido da marinada, cuidado para não cozinhar demais, eles devem ficar al dente.",
        nomeImagem: "receitaLegumesMarinados"),
    
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
        modoPreparo: "Coloque a água para ferver. Lave, descasque e corte a batata-baroa em cubos não muito grande para cozinhar mais rápido. Coloque as batatas na água fervente e deixe cozinhar. Deixe que elas fiquem bem macias. Escorra para sair a água e passe no espremedor de batatas ou então amasse em uma peneira média para obter o purê. Coloque o purê numa panela, acrescente o azeite e mexa bem. Acerte o sal, rale um pouco de noz-moscada e misture.",
        nomeImagem: "receitaPureMandioquinha"),
    
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
        modoPreparo: "Mistura todos os ingredientes e faça bolinhas no formato de almôndega. Em uma frigideira quente acrescente um pouco de azeite, grelhe as almôndegas até ficarem douradas. Em uma outra panela, aqueça o molho de tomate, adicione as almôndegas e deixe cozinhar por 10 minutos.",
        nomeImagem: "receitaAlmodegaCarne"),
    
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
        modoPreparo: "Misture todos os ingredientes, e modele os bolinhos com as mãos. Coloque numa assadeira e leve ao forno preaquecido a 180 °C por 25 minutos.",
        nomeImagem: "receitaBolinhoAtum"),
    
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
        modoPreparo: "Em uma panela adicione água e deixe a água ferver, coloque a quinoa e uma pitada de sal, e mexa de vez em quando até levantar fervura. Assim que ferver, tampe e abaixe o fogo e deixe cozinhar por 10 a 15 minutos. Cuidado para não cozinhar demais, deixe cozinhar por 10 minutos e verifique se está bem cozida, caso não esteja, deixe por mais 5 minutos. Escorra a quinoa e lave em água corrente para interromper o cozimento. Coloque numa travessa funda, solte os grãos com um garfo. Deixe esfriar para começar a preparar os hambúrgueres. Unte bem uma assadeira com azeite e reserve. Em um prato grande coloque a quinoa, a cenoura ralada, o alho amassado, o orégano, a páprica e misture bem. Acerte o sal. Acrescente a farinha de aveia, a cebolinha verde picada e misture bem. Se achar necessário coloque mais um pouco de farinha de aveia, apenas o suficiente para poder modelar. Acrescente por último as duas colheres de semente de gergelim e misture. Verifique o sal e acrescente a pimenta-do-reino a gosto. Molde no formato de hambúrguer. Em um prato grande coloque farelo de aveia o suficiente para empanar os hambúrgueres. Coloque uma pitadinha de sal e se quiser pode adicionar uma pitadinha de pimenta-do-reino. Também pode acrescentar orégano, salsinha desidratada ou outras ervas secas que desejar. Empane. Disponha os hambúrgueres modelados na assadeira previamente untada. Leve a assadeira ao forno pré-aquecido a 180°C por 30 minutos virando na metade do tempo. Espere esfriar um pouco para retirar os hambúrgueres da forma para evitar que se quebrem.",
    nomeImagem: "receitaHambuguerQuinoa"),
    
    
    Receita(
        id: 7, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
        nome: "Geleia de morango",
        tempoPreparo: "20 min",
        ingredientes: [
            Ingrediente(nome: "morango", descricao: "200 g de morangos limpos e cortados em quatro"),
            Ingrediente(nome: "açucar", descricao: "½ de xícara de açucar"),
            
        ],
        modoPreparo: "Coloque os morangos e o açúcar em uma panela pequena. Mexa até que o açúcar dissolva. Deixe ferver, diminua o fogo e cozinhe por aproximadamente 10 minutos. Retire do fogo e deixe esfriar.",
    nomeImagem: "receitaGeleiaMorango"),
    
    Receita(
        id: 8, categoria: .cafeDaManha, nivelDificuldade: .intermediario,
        nome: "Ovos mexidos cremosos",
        tempoPreparo: "10 min",
        ingredientes: [
            Ingrediente(nome: "ovos", descricao: "3 ovos"),
            Ingrediente(nome: "leite", descricao: "3 colheres (sopa) de leite"),
            Ingrediente(nome: "manteiga", descricao: "1 colher (sopa) de manteiga derretida"),
            Ingrediente(nome: "sal", descricao: "1 colher (café) de sal.")
            
        ],
        modoPreparo: "Comece retirando a membrana (aquela pelinha fina) que envolve as gemas para não deixar seus ovos com aquele forte odor. Se você não tem muita experiência para fazer isso manualmente, separe as gemas das claras, agora coloque as gemas em uma peneira apoiada sobre um recipiente. Espete-as com uma faquinha afiada para que o interior líquido derrame. Deixe escorrer sem pressioná-las. Descarte as pelinhas que ficaram na peneira. Misture novamente as gemas com as claras e adicione o leite, a manteiga derretida e o sal.  Mexa bem, de preferência com um batedor de arame.Aqueça levemente em uma frigideira antiaderente e coloque a mistura. Com uma espátula mexa sem parar até começar a ficar com consistência de mingau. Ele deve ficar com a clara e a gema o mais misturadas possível, em uma coloração uniforme, amarelo claro.Retire o fogo e sirva imediatamente.",
        nomeImagem: "receitaOvosMexidos"),
    
    Receita(
        id: 9, categoria: .cafeDaManha, nivelDificuldade: .avancado,
        nome: "Pão de batata vegano",
        tempoPreparo: "1h 50min",
        ingredientes: [
            Ingrediente(nome: "batata inglesa", descricao: "3 xícaras (de chá) de batata inglesa cortada em cubinhos pequenos"),
            Ingrediente(nome: "fermento biológico", descricao: "1 tablete de fermento biológico fresco"),
            Ingrediente(nome: "açucar", descricao: "1 colher (de sopa) de açúcar"),
            Ingrediente(nome: "água", descricao: "120 ml de água morna (½ xícara de chá)"),
            Ingrediente(nome: "sal", descricao: "1 colher (de chá) de sal"),
            Ingrediente(nome: "óleo", descricao: "1/4 de xícara de chá de óleo vegetal"),
            Ingrediente(nome: "farimha de trigo", descricao: "Cerca de 4 e ½ xícaras (de chá) de farinha de trigo + um pouco para polvilhar na superfície"),
            Ingrediente(nome: "azeite", descricao: "1 colher (de sopa) de azeite"),
            Ingrediente(nome: "shoyu", descricao: "1 colher (de sopa) de shoyu"),
            Ingrediente(nome: "gergelim", descricao: "Gergelim branco a gosto"),
            Ingrediente(nome: "alho", descricao: "Recheio: 2 dentes de alho picados"),
            Ingrediente(nome: "cebola", descricao: "½ cebola média picada"),
            Ingrediente(nome: "brócolis", descricao: "5 xícaras (de chá) de brócolis bem picado (1 maço médio)"),
            Ingrediente(nome: "orégano", descricao: "1 colher (de sopa) de orégano desidratado"),
            Ingrediente(nome: "leite", descricao: "½ xícara (de chá) de leite vegetal"),
            Ingrediente(nome: "amido de milho", descricao: "1 colher (de sopa) amido de milho"),
            Ingrediente(nome: "sal", descricao: "Sal a gosto"),
            
            
        ],
        modoPreparo: "Em uma panela em fogo médio, coloque um fio de óleo e refogue o alho e a cebola até ficarem levemente dourados. Acrescente o brócolis, tempere com sal a gosto, com o orégano e refogue por cerca de 1 ou 2 minutos, até o brócolis ficar macio. Abaixe o fogo, adicione o leite vegetal misturado com amido de milho e misture bem, para não empelotar. Corrija o sal, se necessário. Se quiser, acrescente salsinha, cebolinha ou pimenta. Reserve.Em uma panela com água fervente e uma pitada de sal, cozinhe as batatas até ficarem bem macias. Escorra toda a água e amasse bem, enquanto ainda estão mornas. Reserve.Em uma vasilha, coloque o tablete de fermento, o açúcar e amasse até virar uma pasta líquida. Adicione a água morna, o sal, o óleo e as batatas amassadas. Misture e acrescente a farinha de trigo aos poucos, até virar uma massa uniforme e que desgrude das mãos com facilidade. Nesta receita foram cerca de 4 xícaras e meia. Divida a massa ao meio, novamente ao meio, e novamente ao meio, formando 8 bolinhas iguais.Em uma superfície limpa e levemente enfarinhada, abra uma a uma das bolinhas na espessura de 0,5cm. Coloque uma colher de sopa bem cheia de recheio no centro e feche formando uma trouxinha. Trabalhe com a massa para que ela fique redondinha e certifique-se de que esteja bem fechada. Coloque os pães em uma assadeira untada ou forrada com papel manteiga, com 2 dedos de distância entre eles. Coloque a parte aberta virada para baixo. Cubra com um guardanapo limpo e seco e deixe descansando por 40 minutos. Pré-aqueça o forno a 240ºC e em um potinho, misture uma colher de sopa de azeite com uma colher de sopa de shoyu. Pincele esta mistura nos pães e salpique gergelim branco. Leve para assar por cerca de 30 minutos ou até os pães estiverem levemente corados.",
        nomeImagem: "receitaPaoBatataVegano"),
    
    Receita(
        id: 10, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
        nome: "Vitamina de Frutas com Leite de Aveia",
        tempoPreparo: "30 min",
        ingredientes: [
            Ingrediente(nome: "aveia", descricao: "½  xícara (de chá) de aveia em flocos"),
            Ingrediente(nome: "água", descricao: "1 xícara (de chá) de água filtrada"),
            Ingrediente(nome: "banana", descricao: "1 xícara (de chá) de banana nanica picada"),
            Ingrediente(nome: "mamão", descricao: "1 xícara (de chá) de mamão papaya picado (cerca de ½ unidade)")
            
        ],
        modoPreparo: "Coloque a aveia no liquidificador juntamente com a água, e deixe de molho por meia hora. Em seguida, acrescente a banana, o mamão, e se quiser adicione maçã ou outra fruta do seu gosto.",
        nomeImagem: "receitaVitamina"),
    
    Receita(
        id: 11, categoria: .cafeDaManha, nivelDificuldade: .intermediario,
        nome: "Pão de queijo simples",
        tempoPreparo: "30 min",
        ingredientes: [
            Ingrediente(nome: "polvilho doce", descricao: "400g de polvilho doce"),
            Ingrediente(nome: "queijo parmesão", descricao: "400g de queijo parmesão ralado"),
            Ingrediente(nome: "creme de leite", descricao: "2 caixas de creme de leite (400g)"),
            Ingrediente(nome: "óleo", descricao: "Óleo para untar")
            
        ],
        modoPreparo: "Em uma vasilha, junte o polvilhe doce, o parmesão e misture. Adicione o creme de leite, aos poucos, misturando com as mãos até formar uma massa homogênea e firme. É necessário que o creme de leite seja adicionado aos poucos, para não perder o ponto da massa. Retire porções pequenas da massa e modele bolinhas. Coloque, uma ao lado da outra, em uma fôrma grande untada e leve ao forno alto, preaquecido, por 15 minutos ou até dourar. Retire e sirva em seguida.",
        nomeImagem: "receitaPaoDeQueijo"),
    
    Receita(
        id: 12, categoria: .lanche, nivelDificuldade: .iniciante,
        nome: "Guacamole",
        tempoPreparo: "10 min",
        ingredientes: [
            Ingrediente(nome: "abacate", descricao: "1 abacate"),
            Ingrediente(nome: "cebola", descricao: "1 cebola picada"),
            Ingrediente(nome: "limão", descricao: "Suco de 1 limão taiti"),
            Ingrediente(nome: "tomate", descricao: "1 tomate picado"),
            Ingrediente(nome: "sal", descricao: "Sal a gosto"),
            Ingrediente(nome: "pimenta", descricao: "Pimenta do reino a gosto"),
            Ingrediente(nome: "salsa", descricao: "Salsa a gosto"),
            Ingrediente(nome: "coentro", descricao: "Coentro fresco picado")
            
        ],
        modoPreparo: "Retire a polpa do abacate e amasse com um garfo. Pique a cebola, os tomates e misture todos os ingredientes em uma tigela. Sirva com tortillas!",
        nomeImagem: "receitaGuacamole"),
    
    Receita(
        id: 13, categoria: .lanche, nivelDificuldade: .iniciante,
        nome: "Banana com iogurte",
        tempoPreparo: "3 min",
        ingredientes: [
            Ingrediente(nome: "banana", descricao: "2 bananas"),
            Ingrediente(nome: "iogurte", descricao: "1 copo de chá de iogurte"),
            
        ],
        modoPreparo: "Corte as bananas em fatias e misture ao iogurte de sua preferência",
        nomeImagem: "receitaBananaIogurte"),
    
    Receita(
        id: 14, categoria: .lanche, nivelDificuldade: .iniciante,
        nome: "Sanduíche de Presunto",
        tempoPreparo: "5 min",
        ingredientes: [
            Ingrediente(nome: "pão integral", descricao: "2 fatias de pão integral"),
            Ingrediente(nome: "presunto", descricao: "50 gramas de presunto magro"),
            Ingrediente(nome: "tomate", descricao: "Tomate"),
            Ingrediente(nome: "alface", descricao: "Alface"),
            Ingrediente(nome: "pimenta", descricao: "Pimenta biquinho")
        ],
        modoPreparo: "Corte o tomate e monte o sanduíche com os ingredientes",
        nomeImagem: "receitaSanduichePresunto"),
            
    
    Receita(
        id: 15, categoria: .lanche, nivelDificuldade: .intermediario,
        nome: "Chips Assados",
        tempoPreparo: "1 hr",
        ingredientes: [
            Ingrediente(nome: "batata doce", descricao: "2 unidades médias de batata doce"),
            Ingrediente(nome: "azeite", descricao: "Azeite a gosto"),
            Ingrediente(nome: "sal", descricao: "Sal a gosto"),
        ],
        modoPreparo: "Pré-aqueça o forno a 180ºC e descasque a batata. Corte-a em fatias finas e uniformes, cerca de 1mm está ótimo. Deixe a batata-doce de molho em uma mistura de água com sal por pelo menos 15 minutos, e em seguida seque bem no papel toalha ou guardanapo. Faça uma misturinha de azeite com sal a gosto, em quantidade suficiente para passar uma fina camada sobre os chips.Disponha as fatias sobre uma assadeira com papel manteiga e com o auxílio de um pincel passe esta mistura de azeite e sal. Asse por 20 minutos, vire as fatias, abaixe a temperatura do forno para 160ºC e devolva a assadeira para terminar de assar. Veja de tempos em tempos, de 10 em 10 minutos, ou de 5 em 5 (se seu forno for meio maluquinho). Vai demorar um total de 40 minutos para ficarem prontos.",
        
        nomeImagem: "receitaChipsAssados"),
    
    Receita(
        id: 16, categoria: .lanche, nivelDificuldade: .iniciante,
        nome: "Tapioca com banana e mel",
        tempoPreparo: "5 min",
        ingredientes: [
            Ingrediente(nome: "goma de mandioca hidratada", descricao: "2 colheres (sopa) de goma de mandioca hidratada"),
            Ingrediente(nome: "banana", descricao: "1 banana em rodelas"),
            Ingrediente(nome: "mel", descricao: "2 colher de sopa de mel")
            
        ],
        modoPreparo: "Coloque as duas colheres da goma, espalhando com a colher. Pode peneirar a goma se quiser ela mais fininha, como fiz no vídeo abaixo. Se você quiser ela mais macia, ligue o fogo somente depois que a goma estiver lá. Deixe um minuto de cada lado e recheie com as fatias de banana e mel.",
        nomeImagem: "receitaTapiocaBanana"),
    
    Receita(
        id: 17, categoria: .lanche, nivelDificuldade: .iniciante,
        nome: "Smoothie de morango",
        tempoPreparo: "5 min",
        ingredientes: [
            Ingrediente(nome: "morangos", descricao: "300g de morangos, (150g por smoothie)"),
            Ingrediente(nome: "leite", descricao: "1 xícara e meia de leite"),
            Ingrediente(nome: "açucar", descricao: "2 colheres de açúcar")
            
        ],
        modoPreparo: "Deixe os morangos no congelador por no mínimo 1 hora, para dar a textura de smoothie. Misture o leite, o açúcar e bate no iquidificador.",
        
        nomeImagem: "receitaSmoothieMorango"),
    
    Receita(
        id: 18, categoria: .lanche, nivelDificuldade: .intermediario,
        nome: "Cookie tradicional",
        tempoPreparo: "25 min",
        ingredientes: [
            Ingrediente(nome: "manteiga", descricao: "125 g de manteiga"),
            Ingrediente(nome: "açucar", descricao: "3/4 xícara de açúcar"),
            Ingrediente(nome: "açucar mascavo", descricao: "½ xícara de açúcar mascavo"),
            Ingrediente(nome: "ovo", descricao: "1 ovo"),
            Ingrediente(nome: "farinha de trigo", descricao: "1 e 3/4 xícara de farinha de trigo"),
            Ingrediente(nome: "fermento em pó", descricao: "1 colher (chá) de fermento em pó"),
            Ingrediente(nome: "chocolate", descricao: "1 xícara de gotas de chocolate"),
            Ingrediente(nome: "essência de baunilha", descricao: "1 colher (chá) de essência de baunilha"),
            
        ],
        modoPreparo: "Em uma tigela, misture a manteiga, os açúcares, o ovo e a essência de baunilha. Acrescente a farinha, o fermento e, por último, as gostas de chocolate, mexendo delicadamente. Forme bolinhas pequenas e coloque sobre uma forma untada ou com papel manteiga. Depois, é só assar por 15 minutos a 250°C.",
    
    nomeImagem: "receitaCookie"),
    
    Receita(
        id: 18, categoria: .lanche, nivelDificuldade: .iniciante,
        nome: "Chocolate quente cremoso",
        tempoPreparo: "5 min",
        ingredientes: [
            Ingrediente(nome: "leite", descricao: "2 xícaras (chá) de leite"),
            Ingrediente(nome: "cacau em pó", descricao: "3 colheres (sopa) de cacau em pó"),
            Ingrediente(nome: "açucar", descricao: "2 colheres (sopa) de açúcar"),
            Ingrediente(nome: "amido de milho", descricao: "1 colher (sopa) de amido de milho")
        ],
        modoPreparo: "Em uma panela, misture bem todos os ingredientes e leve ao fogo baixo, mexendo sempre até levantar fervura, e deixe cozinhe por 2 minutos. Sirva a seguir.",
    
    nomeImagem: "receitaChocolateQuenteCremoso"),
    
    Receita(
        id: 19, categoria: .lanche, nivelDificuldade: .iniciante,
        nome: "Pasta de amendoim",
        tempoPreparo: "10 min",
        ingredientes: [
            Ingrediente(nome: "amendoim", descricao: "½ kg de amendoim sem casca e sem pele torrado"),
            Ingrediente(nome: "açucar", descricao: "1 e ½ xícaras de chá de açúcar"),
            Ingrediente(nome: "óleo", descricao: "Óleo de amendoim ou vegetal"),
            Ingrediente(nome: "sal", descricao: "1 colher de chá rasa de sal")
        ],
        modoPreparo: "Coloque os amendoins em um processador de alimentos ou liquidificador e triture até tudo virar um farelo bem homogêneo. Destampe e mexa a mistura com uma colher de vez em quando para nenhum amendoim ficar inteiro. Acrescente o sal, metade do açúcar e três colheres de sopa de óleo. Misture com a colher e ligue o liquidificador novamente. Acrescente o restante do açúcar, misture com a colher e observe bem a consistência. Você precisará acrescentar óleo o suficiente para que o liquidificador consiga movimentar toda a mistura, lentamente. Acrescente o óleo aos pouquinhos para não ficar muito oleoso. Prove para ver se o açúcar está do seu gosto e acrescente mais se for o caso. Coloque em um vidro ou pote com tampa e deixe descansar na geladeira por 24 horas antes de consumir.",
        
        nomeImagem: "receitaPastaAmendoim"),
    
    Receita(
        id: 20, categoria: .lanche, nivelDificuldade: .iniciante,
        nome: "Sanduíche de tofu",
        tempoPreparo: "10 min",
        ingredientes: [
            Ingrediente(nome: "tofu", descricao: "1 bloco de tofu (200g) marinado"),
            Ingrediente(nome: "cenoura", descricao: "1 cenoura pequena cortada em fatias finas"),
            Ingrediente(nome: "pepino", descricao: "1 pepino pequeno cortado em fatias finas"),
            Ingrediente(nome: "pão", descricao: "2 fatias do pão de sua preferência"),
            Ingrediente(nome: "maionese", descricao: "1/4 de xícara de maionese vegana de sua preferência"),
            Ingrediente(nome: "molho de pimenta", descricao: "1 colher de sopa de molho de pimenta"),
            Ingrediente(nome: "limão", descricao: "1 colher de chá de suco de limão")
        ],
        modoPreparo: "Corte o bloco de tofu ao meio de forma a criar duas fatias iguais como um “bife”. Asse-o na grelha, no forno ou na panela (da maneira que você preferir) até que ele fique com o exterior crocante/durinho. Reserve. Para fazer a maionese, basta misturar em uma tigela a maionese, o molho e o limão. Reserve. Agora, basta montar o seu sanduíche utilizando também o restante dos ingredientes.",
    
    nomeImagem: "receitaSanduicheTofu"),
    
    Receita(
        id: 21, categoria: .lanche, nivelDificuldade: .intermediario,
        nome: "Bolo de milho vegano",
        tempoPreparo: "50 min",
        ingredientes: [
            Ingrediente(nome: "água", descricao: "1 xícara (de chá) de de água"),
            Ingrediente(nome: "óleo", descricao: "1/3 de xícara (de chá) de óleo vegetal"),
            Ingrediente(nome: "milho", descricao: "1 e ½ xícaras (de chá) de milho cru (cerca de 3 espigas)"),
            Ingrediente(nome: "coco", descricao: " ½ xícara (de chá) de coco ralado não adoçado"),
            Ingrediente(nome: "açucar", descricao: "3/4 de xícara (de chá) de açúcar demerara ou cristal"),
            Ingrediente(nome: "fubá", descricao: "1 xícara (de chá) de fubá mimoso"),
            Ingrediente(nome: "vinagre", descricao: "1 colher (de sopa) de vinagre branco ou de maçã"),
            Ingrediente(nome: "fermento", descricao: "1 colher (de sopa) de fermento químico em pó"),
            Ingrediente(nome: "sal", descricao: "Uma pitada de sal")
        ],
        modoPreparo: "Preaqueça o forno a 210ºC e unte uma assadeira média com óleo e fubá. Em um liquidificador, coloque a água, o óleo, o milho, o coco ralado, o açúcar, o fubá, o vinagre, uma pitada de sal e bata até obter uma mistura uniforme. Acrescente o fermento químico em pó e bata rapidamente para misturar. Coloque esta massa na forma e leve para assar por cerca de 40 minutos ou até espetar uma faca ou garfo e sair limpo.Se quiser, você pode derreter cerca de 1 xícara de goiabada bem picadinha com água para fazer uma calda. É só misturar a goiabada, com cerca de 1/2 xícara de água e deixar cozinhar em fogo baixo, mexendo sempre até ficar bem derretida. Caso necessário, coloque mais água. Está pronto!",
        
        nomeImagem: "receitaBoloDeMilho"),
    
    Receita(
        id: 22, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
        nome: "Tofu mexido",
        tempoPreparo: "10 min",
        ingredientes: [
            Ingrediente(nome: "tofu", descricao: "250g tofu (normal ou firme, que dê para amassar)"),
            Ingrediente(nome: "óleo", descricao: "1 col (de sopa) de óleo (de coco, azeite, milho, girassol…)"),
            Ingrediente(nome: "açafrão", descricao: "Aproximadamente 1 colher (de chá) de açafrão em pó (cúrcuma)"),
            Ingrediente(nome: "sal negro", descricao: "Aproximadamente 1/4 de colher (de chá) de sal negro"),
            Ingrediente(nome: "leite vegetal", descricao: "1/4 de xícara (de chá) de leite vegetal"),
        ],
        modoPreparo: "Amasse o tofu. Se quiser ele mais sequinho, use um voal ou pano de prato limpo para espremer o excesso de água. Em uma frigideira antiaderente grande, coloque o óleo, o tofu amassado, o açafrão e o sal. Misture bem e deixe refogar em fogo médio por cerca de 5 minutos ou até o tofu ficar sequinho e com a cor amarela (depois que desligar, ela vai ficar mais acentuada). Mexa sempre.Se quiser seu tofu cremoso, coloque o leite de aveia ou creme de soja. Sirva quente. Está pronto!",
        
        nomeImagem: "receitaTofuMexido"),
    
    Receita(
        id: 23, categoria: .lanche, nivelDificuldade: .intermediario,
        nome: "Petisco de grão de bico",
        tempoPreparo: "55 min",
        ingredientes: [
            Ingrediente(nome: "grão-de-bico", descricao: " ½ xícara (de chá) de grão-de-bico cru"),
            Ingrediente(nome: "gergelim", descricao: "1 colher (de sopa) de óleo de gergelim torrado ou azeite"),
            Ingrediente(nome: "páprica", descricao: "½  colher (de chá) de páprica picante"),
            Ingrediente(nome: "cominho", descricao: "½  colher (de chá) de cominho"),
            Ingrediente(nome: "sal", descricao: "Sal a gosto"),
        ],
        modoPreparo: "Coloque o grão-de-bico em uma vasilha, cubra com o triplo de água e deixe de molho por 12 horas (veja a importância deste processo aqui). Escorra e lave. Coloque em uma panela de pressão, cubra com dois dedos de água e deixe cozinhar em fogo médio. Quando pegar pressão, abaixe o fogo, conte 5 minutos e desligue. Pré-aqueça o forno a 210ºC. Escorra os grãos, retire as casquinhas que estiverem por cima e os grãos que estiverem quebrados. Coloque em uma vasilha, adicione o óleo de gergelim torrado ou azeite, a páprica picante, o cominho e tempere com sal a gosto. Misture delicadamente, coloque em uma assadeira antiaderente e leve para assar por cerca de 40 minutos ou até estarem bem crocantes. Não deixe os grãos sobrepostos, deixe eles bem espalhadinhos pela assadeira.Vá experimentando para saber o ponto (cuidado, é bem quente!). Retire os petiscos do forno a cada 15 minutos e dê uma chacoalhadinha na assadeira. Está pronto!",
        
        nomeImagem: "receitaPetiscoGraoDeBico"),
    
    Receita(
        id: 24, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
        nome: "Torrada com ovo",
        tempoPreparo: "5 min",
        ingredientes: [
            Ingrediente(nome: "ovo", descricao: "1 ovo"),
            Ingrediente(nome: "torrada", descricao: "2 torradas grandes"),
            Ingrediente(nome: "sal", descricao: "Sal a gosto"),
            Ingrediente(nome: "óleo", descricao: "1 fio de óleo")
        ],
        modoPreparo: "Espalhe o azeite aos poucos sobre o pão.Em uma frigideira antiaderente, toste um dos lados do pão em fogo baixo, por aproximadamente, 5 min. Ao virar o pão, corte o centro dele, retire a parte cortada e reserve; Quebre o ovo no centro do pão e coloque o sal e a pimenta. Retire com cuidado da frigideira; Pique parte do pão reservado e jogue por cima do ovo. Sirva ainda quente.",
    
    nomeImagem: "receitaTorradaOvo"),
    
    Receita(
        id: 25, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Strogonoff vegano",
        tempoPreparo: "30 min",
        ingredientes: [
            Ingrediente(nome: "cogumelo", descricao: "200 g de cogumelos"),
            Ingrediente(nome: "palmito", descricao: "100 g de palmito"),
            Ingrediente(nome: "tomate", descricao: "1 tomate médio picado"),
            Ingrediente(nome: "cebola", descricao: "1 cebola cortada"),
            Ingrediente(nome: "azeite", descricao: "1 colher de sopa de óleo"),
            Ingrediente(nome: "mostarda", descricao: "1 colher de sopa de mostarda"),
            Ingrediente(nome: "ketchup", descricao: "1 colher de sopa de ketchup"),
            Ingrediente(nome: "shoyu", descricao: "2 colheres de sopa de shoyo"),
            Ingrediente(nome: "leite vegetal", descricao: "200 ml de leite vegetal"),
            Ingrediente(nome: "farinha de trigo", descricao: "1 e ½ de farinha de trigo "),
            Ingrediente(nome: "alho", descricao: "1 dente de alho picado"),
            Ingrediente(nome: "sal", descricao: "Sal a gosto"),
            Ingrediente(nome: "pimenta", descricao: "Pimenta do reino a gosto"),
            
        ],
        modoPreparo: "Em uma panela aqueça o azeite e refogue a cebola e o alho. Junte o palmito e os cogumelos e refogue ligeiramente. Adicione o sal, a pimenta-do-reino, os tomates, a mostarda, o shoyu e o ketchup e misture bem. Junte o leite vegetal com a farinha de trigo em outro recipiente e misture bem. Adicione o leite vegetal na panela e mexa até incoroporar o molho.Retire do fogo antes de ferver. Sirva.",
    
    nomeImagem: "receitaStrogonoffVegano"),
]

