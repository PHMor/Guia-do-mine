import '../models/guide_item.dart';

const stages = [
  GuideItem(
    title: 'Pegue madeira',
    subtitle: 'Os primeiros recursos',
    image: 'assets/minecraft/items/madeira.png',
    instructions: [
      'Crie um mundo no modo Sobrevivência. Use a dificuldade Fácil ou Normal: no Pacífico, os monstros necessários para as etapas finais não aparecem.',
      'Encontre uma árvore e segure o comando de quebrar bloco sobre o tronco. Você pode coletar madeira com a própria mão.',
      'Recolha pelo menos 6 troncos e abra o inventário. Transforme parte deles em tábuas: cada tronco rende 4 tábuas.',
    ],
    tip: 'Guarde alguns troncos. Eles podem virar carvão vegetal mais tarde.',
  ),
  GuideItem(
    title: 'Monte sua bancada',
    subtitle: 'Hora de fabricar',
    image: 'assets/minecraft/items/bancada.png',
    instructions: [
      'No espaço de fabricação 2 × 2 do inventário, coloque uma tábua em cada espaço. As 4 tábuas formam uma bancada de trabalho.',
      'Coloque a bancada no chão e interaja com ela para abrir a fabricação 3 × 3.',
      'Coloque 2 tábuas uma sobre a outra para fazer 4 gravetos. Use o livro de receitas para consultar os próximos itens.',
    ],
    tip: 'Você pode quebrar a bancada e levá-la nas suas viagens.',
  ),
  GuideItem(
    title: 'Faça uma picareta',
    subtitle: 'Sua primeira ferramenta',
    image: 'assets/minecraft/items/picareta.png',
    instructions: [
      'Abra a bancada. Coloque 3 tábuas na primeira linha e 2 gravetos no centro, um na segunda linha e outro na terceira.',
      'Pegue a picareta de madeira e coloque-a na barra de itens.',
      'Se sobrar madeira, faça também um machado para cortar árvores mais rápido. Consulte o formato no livro de receitas.',
    ],
    tip: 'Pedra quebrada com a mão não entrega pedregulho. Use a picareta.',
  ),
  GuideItem(
    title: 'Colete pedra',
    subtitle: 'Ferramentas melhores',
    image: 'assets/minecraft/items/pedra.png',
    instructions: [
      'Procure pedra exposta em uma encosta ou cave uma pequena escada. Nunca cave diretamente para baixo.',
      'Minere pelo menos 17 blocos com a picareta de madeira para recolher pedregulho.',
      'Na bancada, use 3 pedregulhos e 2 gravetos para uma picareta de pedra. Faça também uma espada com 2 pedregulhos e 1 graveto.',
    ],
    tip: 'A picareta de pedra permite minerar ferro; a de madeira não.',
  ),
  GuideItem(
    title: 'Forno e tochas',
    subtitle: 'Calor e iluminação',
    image: 'assets/minecraft/items/forno.png',
    instructions: [
      'Coloque 8 pedregulhos ao redor da bancada, deixando o centro vazio. Pegue o forno e coloque-o no chão.',
      'Procure carvão, o minério com manchas pretas, e minere com uma picareta.',
      'Se não encontrar carvão, coloque um tronco no espaço superior do forno e tábuas como combustível no inferior. O resultado será carvão vegetal.',
      'Combine 1 carvão ou carvão vegetal com 1 graveto abaixo dele para fazer 4 tochas. Ilumine o abrigo e os caminhos.',
    ],
    tip: 'Tábuas também servem como combustível para cozinhar e fundir itens.',
  ),
  GuideItem(
    title: 'Garanta comida',
    subtitle: 'A fome não espera',
    image: 'assets/minecraft/items/comida.png',
    instructions: [
      'Procure animais como vacas, porcos e galinhas. Derrote alguns com a espada para conseguir carne.',
      'Coloque a carne no espaço superior do forno e combustível no inferior. Espere e retire a comida cozida.',
      'Você também pode colher alimentos em uma vila ou plantar sementes. Três trigos na bancada formam um pão.',
      'Leve comida na barra de itens. Com a fome alta, você consegue recuperar vida naturalmente.',
    ],
    tip:
        'Guarde sementes e plante perto de água para ter alimento nas próximas viagens.',
  ),
  GuideItem(
    title: 'Construa um abrigo',
    subtitle: 'Seu primeiro lar',
    image: 'assets/minecraft/items/casa.png',
    instructions: [
      'Escolha um local perto de árvores e água. Use terra, madeira ou pedra para fazer paredes e um teto.',
      'Deixe um espaço para a entrada. Faça uma porta com 6 tábuas, em duas colunas de três na bancada.',
      'Coloque tochas dentro do abrigo e feche possíveis entradas. Não deixe buracos por onde monstros possam entrar.',
      'Faça um baú com 8 tábuas ao redor da bancada e guarde os materiais que não precisa carregar.',
    ],
    tip:
        'Uma pequena sala escavada na encosta também serve de abrigo no começo.',
  ),
  GuideItem(
    title: 'Consiga lã e uma cama',
    subtitle: 'Um lugar para descansar',
    image: 'assets/minecraft/items/cama.png',
    instructions: [
      'Encontre ovelhas. No início, você pode derrotá-las para conseguir lã. Mais tarde, use uma tesoura de 2 barras de ferro para coletar sem matar.',
      'Reúna 3 blocos de lã da mesma cor. Na bancada, coloque a lã em uma linha e 3 tábuas na linha logo abaixo.',
      'Coloque a cama em um lugar protegido do abrigo. Interaja com ela para definir seu ponto de renascimento.',
    ],
    tip: 'Durma apenas no mundo normal. Camas explodem no Nether e no End.',
  ),
  GuideItem(
    title: 'Passe a primeira noite',
    subtitle: 'Sobreviva até o amanhecer',
    image: 'assets/minecraft/items/noite.png',
    instructions: [
      'Antes de escurecer, volte ao abrigo com comida, ferramentas e tochas. Feche a entrada.',
      'Durma na cama quando anoitecer. Se houver monstros muito perto, você precisará afastá-los ou usar um local mais seguro.',
      'Se não tiver cama, espere o amanhecer dentro do abrigo e aproveite para organizar o baú ou cozinhar.',
      'Ao sair, tome cuidado: creepers e aranhas podem continuar por perto mesmo durante o dia.',
    ],
    tip:
        'Em um servidor, pular a noite pode depender de quantos jogadores estão dormindo.',
  ),
  GuideItem(
    title: 'Minere ferro',
    subtitle: 'Um novo nível de ferramentas',
    image: 'assets/minecraft/items/ferro.png',
    instructions: [
      'Leve uma picareta de pedra, comida e tochas. Procure o minério de ferro em cavernas ou montanhas.',
      'Minere com a picareta de pedra ou melhor. Recolha o ferro bruto e volte ao forno.',
      'Coloque o ferro bruto no espaço superior e combustível no inferior para obter barras de ferro.',
      'Colete ferro aos poucos. Uma picareta usa 3 barras; uma armadura completa usa 24.',
    ],
    tip: 'Ilumine o caminho e deixe marcas para conseguir voltar para casa.',
  ),
  GuideItem(
    title: 'Equipe-se para explorar',
    subtitle: 'Armadura, escudo e balde',
    image: 'assets/minecraft/items/armadura.png',
    instructions: [
      'Faça uma picareta com 3 barras de ferro e 2 gravetos. Faça também uma espada de ferro com 2 barras e 1 graveto.',
      'Use o livro de receitas para fabricar capacete, peitoral, calças e botas. Equipe as quatro peças nos espaços de armadura do inventário.',
      'Faça um escudo com 6 tábuas e 1 barra de ferro. Coloque-o na mão secundária. Na edição Java, use o comando de bloquear; na Bedrock, agache para usar.',
      'Faça um balde com 3 barras em formato de V e encha em um bloco de água. Ele será útil contra quedas e lava no mundo normal.',
    ],
    tip:
        'Se faltar ferro, faça as peças aos poucos. Priorize a picareta e o escudo.',
  ),
  GuideItem(
    title: 'Encontre diamantes',
    subtitle: 'Nas profundezas do mundo',
    image: 'assets/minecraft/items/diamante.png',
    instructions: [
      'Desça com segurança até as camadas profundas do mundo, onde aparece ardósia. Leve picaretas de ferro, tochas, comida e água.',
      'Procure o minério com manchas azuis. Use uma picareta de ferro ou melhor para conseguir os diamantes.',
      'Reúna pelo menos 3 diamantes. Na bancada, coloque os 3 na primeira linha e 2 gravetos no centro para uma picareta de diamante.',
      'Evite cavar embaixo dos próprios pés. Ao encontrar lava, recue e use o balde de água com cuidado.',
    ],
    tip:
        'Guarde os diamantes extras para melhorar equipamentos e fazer uma mesa de encantamentos.',
  ),
  GuideItem(
    title: 'Colete obsidiana',
    subtitle: 'A base do portal',
    image: 'assets/minecraft/items/obsidiana.png',
    instructions: [
      'Encontre uma poça de lava no mundo normal. Despeje água sobre os blocos de fonte de lava para formar obsidiana.',
      'Use a picareta de diamante para minerar. Com uma picareta de ferro, o bloco não entrega obsidiana.',
      'Reúna pelo menos 10 blocos. Verifique se há lava embaixo antes de retirar cada bloco e mantenha água por perto.',
    ],
    tip: 'Obsidiana chorona não serve para fazer o portal do Nether.',
  ),
  GuideItem(
    title: 'Abra o portal do Nether',
    subtitle: 'Uma passagem para outra dimensão',
    image: 'assets/minecraft/items/portal_nether.png',
    instructions: [
      'Monte uma moldura vertical com 4 blocos de largura e 5 de altura. Deixe um vão interno de 2 × 3 blocos.',
      'Os quatro cantos podem ficar sem obsidiana. Assim, você usa apenas 10 blocos.',
      'Quebre cascalho até conseguir uma pederneira. Combine-a com 1 barra de ferro para fabricar um isqueiro.',
      'Use o isqueiro dentro da moldura. A parte interna deve ficar roxa; permaneça nela para atravessar.',
    ],
    tip: 'Anote as coordenadas do portal antes de partir.',
  ),
  GuideItem(
    title: 'Explore o Nether',
    subtitle: 'Prepare-se para o perigo',
    image: 'assets/minecraft/items/nether.png',
    instructions: [
      'Entre com armadura, escudo, espada, picareta, comida, blocos e um isqueiro. Guarde itens extras em casa.',
      'Use uma peça de armadura de ouro para evitar que piglins comuns ataquem só por você estar perto. Isso não protege dos brutos piglins.',
      'Proteja o portal com blocos resistentes e marque o caminho. Evite bater em piglins ou abrir baús perto deles.',
      'Procure uma fortaleza do Nether: uma estrutura grande com pontes de tijolos escuros. É lá que você encontrará blazes.',
    ],
    tip:
        'Água de balde não pode ser colocada no Nether. Camas explodem se você tentar dormir nele.',
  ),
  GuideItem(
    title: 'Derrote os blazes',
    subtitle: 'Consiga varas de blaze',
    image: 'assets/minecraft/items/blaze.png',
    instructions: [
      'Na fortaleza do Nether, procure os blazes: criaturas amarelas que flutuam e lançam fogo.',
      'Use o escudo contra os ataques e aproveite os intervalos para atacar. Faça uma proteção com blocos para enfrentar poucos de cada vez.',
      'Derrote os blazes você mesmo e recolha as varas que caírem. Nem todo blaze entrega uma vara.',
      'Tente reunir pelo menos 8 varas. Cada uma pode ser transformada em 2 pós de blaze no inventário. Depois, volte pelo portal.',
    ],
    tip:
        'Não destrua o gerador de blazes: ele pode ajudar se você precisar de mais varas.',
  ),
  GuideItem(
    title: 'Junte pérolas do End',
    subtitle: 'O outro ingrediente',
    image: 'assets/minecraft/items/perola.png',
    instructions: [
      'Procure endermen no mundo normal à noite ou em uma floresta distorcida no Nether. São criaturas altas, escuras e com olhos roxos.',
      'Construa uma cobertura a dois blocos de altura e fique embaixo dela. O enderman é alto demais para passar pelo espaço.',
      'Ataque com a espada sem sair da proteção e recolha as pérolas que caírem. Tente reunir 16 ou mais.',
      'Outra opção é trocar barras de ouro com piglins comuns: eles podem entregar pérolas, mas o resultado da troca é aleatório.',
    ],
    tip:
        'Olhar diretamente para um enderman pode deixá-lo agressivo. Prepare o abrigo antes.',
  ),
  GuideItem(
    title: 'Faça olhos do End',
    subtitle: 'A chave para a fortaleza',
    image: 'assets/minecraft/items/olho.png',
    instructions: [
      'Transforme as varas de blaze em pó de blaze no espaço de fabricação.',
      'Combine 1 pérola do End com 1 pó de blaze para fabricar 1 olho do End.',
      'Prepare pelo menos 16 olhos para começar a busca. O portal pode exigir até 12 e alguns podem quebrar durante a viagem.',
    ],
    tip:
        'Se muitos olhos quebrarem, consiga mais antes de continuar. Não existe uma quantidade que garanta toda viagem.',
  ),
  GuideItem(
    title: 'Encontre a fortaleza',
    subtitle: 'Siga os olhos do End',
    image: 'assets/minecraft/items/fortaleza.png',
    instructions: [
      'No mundo normal, use um olho do End para lançá-lo. Siga a direção em que ele voar.',
      'Recupere o olho se ele cair inteiro. Caminhe uma boa distância antes de lançar outro para economizar.',
      'Quando o olho apontar para o chão, cave uma escada com cuidado. A fortaleza fica no subsolo.',
      'Explore os corredores até encontrar a sala do portal. Deixe tochas ou marcas para não se perder. Na Bedrock, algumas fortalezas podem não ter essa sala; nesse caso, procure outra.',
    ],
    tip:
        'Antes de entrar no End, faça uma base com cama e baú perto da fortaleza, no mundo normal.',
  ),
  GuideItem(
    title: 'Prepare a batalha',
    subtitle: 'Confira seu equipamento',
    image: 'assets/minecraft/items/arco.png',
    instructions: [
      'Leve armadura completa, espada, picareta, comida, blocos e um balde de água. Se possível, encante seus equipamentos.',
      'Faça um arco com 3 gravetos e 3 linhas, usando o livro de receitas. Leve muitas flechas; cada grupo de 4 pode ser fabricado com pederneira, graveto e pena.',
      'Durma na cama da base no mundo normal. Guarde equipamentos extras no baú para usar se perder a batalha.',
      'Na sala do portal, coloque um olho em cada moldura vazia. Quando os 12 espaços tiverem olhos, o portal será ativado.',
    ],
    tip:
        'Depois de entrar no End, a saída normal só abre quando o dragão é derrotado. Entre preparado.',
  ),
  GuideItem(
    title: 'Entre no End',
    subtitle: 'A ilha do dragão',
    image: 'assets/minecraft/items/end.png',
    instructions: [
      'Entre no portal ativado. Você aparecerá em uma plataforma de obsidiana, que pode estar afastada da ilha principal.',
      'Se precisar, faça uma ponte com blocos. Agache ao construir para reduzir o risco de cair no vazio.',
      'Na ilha, evite olhar para os endermen e identifique as torres de obsidiana com cristais no topo.',
      'Mantenha a comida, a água, a espada e o arco à mão. Afaste-se das nuvens roxas do sopro do dragão.',
    ],
    tip: 'Não use uma cama no End: ela explode ao tentar dormir.',
  ),
  GuideItem(
    title: 'Derrote o Ender Dragon',
    subtitle: 'O último desafio da jornada',
    image: 'assets/minecraft/items/dragao.png',
    instructions: [
      'Destrua os cristais no alto das torres com o arco. Eles recuperam a vida do dragão e explodem ao serem destruídos.',
      'Nos cristais protegidos por grades, suba com cuidado, quebre parte da grade e afaste-se antes de destruir o cristal. Use água no End para ajudar em quedas.',
      'Com os cristais destruídos, use flechas enquanto o dragão voa. Quando ele pousar no portal central, aproxime-se da cabeça e ataque com a espada; flechas não funcionam durante o pouso.',
      'Evite o sopro roxo, cure-se com comida e repita os ataques até acabar com a vida dele.',
      'Recolha a experiência e entre no portal central para voltar. Parabéns: você chegou aos créditos! Seu mundo ainda tem muito para explorar.',
    ],
    tip:
        'Depois da vitória, você pode explorar cidades do End e procurar uma elytra.',
  ),
];

const easterEggs = [
  GuideItem(
    title: 'Ovelha arco-íris',
    subtitle: 'jeb_',
    image: 'assets/minecraft/items/jeb.png',
    instructions: [
      'Consiga uma etiqueta em baús, pescando ou negociando com um aldeão bibliotecário. Nas versões com a atualização Tiny Takeover, também é possível fabricar uma etiqueta com papel e uma pepita de metal.',
      'Prepare uma bigorna e tenha experiência. A bigorna serve para escrever o nome na etiqueta antes de usar no animal.',
      'Na bigorna, renomeie a etiqueta exatamente para jeb_, com letras minúsculas e o sublinhado no final.',
      'Use a etiqueta em uma ovelha. A lã dela passará a mudar de cor continuamente.',
    ],
    tip:
        'O efeito funciona em ovelhas. Ao tosquiar, a lã continua com a cor original.',
  ),
  GuideItem(
    title: 'De cabeça para baixo',
    subtitle: 'Dinnerbone ou Grumm',
    image: 'assets/minecraft/items/dinnerbone.png',
    instructions: [
      'Separe uma etiqueta e renomeie na bigorna para Dinnerbone ou Grumm. Respeite a primeira letra maiúscula.',
      'Use a etiqueta em um animal, como uma vaca, porco ou ovelha.',
      'O animal será exibido de cabeça para baixo e continuará andando normalmente.',
    ],
    tip: 'É uma mudança visual: o comportamento do animal continua o mesmo.',
  ),
  GuideItem(
    title: 'Um coelho especial',
    subtitle: 'Toast',
    image: 'assets/minecraft/items/toast.png',
    instructions: [
      'Encontre um coelho e mantenha-o em um cercado para facilitar a aproximação.',
      'Renomeie uma etiqueta para Toast na bigorna, com T maiúsculo.',
      'Use a etiqueta no coelho. Ele ganhará uma aparência especial com manchas pretas e brancas.',
    ],
    tip: 'A aparência é uma homenagem a um coelho real chamado Toast.',
  ),
  GuideItem(
    title: 'Aqui está o Johnny!',
    subtitle: 'Johnny',
    image: 'assets/minecraft/items/johnny.png',
    instructions: [
      'Este segredo usa um vingador: o illager de machado encontrado em mansões da floresta e invasões. Ele é perigoso.',
      'Prepare uma área isolada, longe de aldeões e dos seus animais. Para experimentar com mais segurança, use um mundo Criativo separado.',
      'Na bigorna, renomeie uma etiqueta para Johnny, com J maiúsculo, e use no vingador.',
      'Ele passará a atacar muitos outros tipos de criaturas, além dos alvos habituais.',
    ],
    tip:
        'O efeito muda o comportamento do vingador. Não teste perto dos seus animais.',
  ),
  GuideItem(
    title: 'Wololo!',
    subtitle: 'A magia das ovelhas',
    image: 'assets/minecraft/items/wololo.png',
    instructions: [
      'Este easter egg funciona nas edições Java e Bedrock. O protagonista é o invocador, o illager que usa magia e pode deixar um totem da imortalidade ao ser derrotado.',
      'Para observar com facilidade, use um mundo Criativo separado. Coloque uma ovelha, pinte sua lã com corante azul e aproxime um invocador que não esteja em combate.',
      'Espere perto dos dois. O invocador faz uma magia com um som especial e transforma a ovelha azul em vermelha.',
    ],
    tip:
        'A brincadeira faz referência à conversão de unidades de Age of Empires. Não é preciso renomear a ovelha.',
  ),
  GuideItem(
    title: 'Encontre a Jellie',
    subtitle: 'Uma gata da comunidade',
    image: 'assets/minecraft/items/jellie.png',
    instructions: [
      'Nas edições Java e Bedrock, procure gatos em vilas. Entre as aparências possíveis está a Jellie, uma gata de pelagem cinza e branca.',
      'Aproxime-se devagar com bacalhau cru ou salmão cru na mão. Alimente o gato até aparecerem corações e ele ser domesticado.',
      'A aparência Jellie entrou no jogo depois de vencer um concurso da comunidade. Observe os diferentes gatos até encontrar essa variante.',
    ],
    tip:
        'Renomear um gato para Jellie não muda sua aparência. Você precisa encontrar a variante correta.',
  ),
  GuideItem(
    title: 'Axolote azul',
    subtitle: 'Curiosidade: uma cor rara',
    image: 'assets/minecraft/items/axolote.png',
    instructions: [
      'Nas edições Java e Bedrock modernas, encontre dois axolotes nas cavernas exuberantes e transporte-os em baldes com água.',
      'Prepare um pequeno aquário e dê um balde com peixe tropical para cada axolote. Peixe tropical solto no inventário não substitui o balde na reprodução.',
      'O filhote normalmente herda uma das cores dos pais, mas pode nascer azul, uma variante muito rara. Observe as reproduções e cuide dos animais.',
    ],
    tip:
        'Não existe um nome de etiqueta que transforme um axolote em azul. O nascimento dessa cor depende da sorte.',
  ),
  GuideItem(
    title: 'Minceraft?',
    subtitle: 'Um título quase igual',
    image: 'assets/minecraft/items/minceraft.png',
    instructions: [
      'Este easter egg pertence à edição Java. Observe com atenção o logotipo da tela inicial do jogo.',
      'Muito raramente, o título aparece escrito Minceraft: as letras de Minecraft ficam trocadas.',
      'A chance é de 1 em 10.000 ao iniciar o jogo. Não há uma sequência de cliques que garanta o resultado; registre se encontrar durante suas sessões.',
    ],
    tip:
        'Não confunda com um pacote de textura que altere o logotipo. O easter egg existe no jogo original.',
  ),
  GuideItem(
    title: 'Baús de presente',
    subtitle: 'Natal na edição Java',
    image: 'assets/minecraft/items/natal.png',
    instructions: [
      'Na edição Java, jogue entre os dias 24 e 26 de dezembro, usando as texturas originais.',
      'Coloque um baú comum no seu mundo e observe o visual de presente de Natal. Confira também um baú duplo.',
      'Abra o baú normalmente. A mudança é apenas na aparência; os itens guardados e o funcionamento continuam iguais.',
    ],
    tip:
        'O efeito usa a data do computador. A edição Bedrock não apresenta esse evento da mesma forma no jogo original.',
  ),
  GuideItem(
    title: 'Monstros de Halloween',
    subtitle: '31 de outubro • Java',
    image: 'assets/minecraft/items/halloween.png',
    instructions: [
      'Na edição Java, entre no mundo no dia 31 de outubro, com dificuldade que permita o aparecimento de monstros.',
      'Observe os zumbis e esqueletos que surgirem durante a noite. Alguns aparecem com uma abóbora esculpida ou uma abóbora iluminada na cabeça.',
      'Mantenha distância e observe de um lugar protegido. Em um mundo Criativo separado, você pode estudar os monstros com mais tranquilidade.',
    ],
    tip:
        'Depende da data e da sorte. Nem todo monstro recebe uma abóbora, e monstros que já existiam não se transformam automaticamente.',
  ),
  GuideItem(
    title: 'Papagaio dançarino',
    subtitle: 'Curiosidade: festa musical',
    image: 'assets/minecraft/items/papagaio.png',
    instructions: [
      'Nas edições Java e Bedrock, procure um papagaio na selva. Alimente-o com sementes até domesticá-lo e leve-o a um local seguro.',
      'Faça uma jukebox com 8 tábuas ao redor de 1 diamante na bancada. Consiga um disco de música em estruturas ou por meio de um creeper derrotado por um esqueleto.',
      'Deixe o papagaio no chão perto da jukebox e coloque o disco para tocar. Ele começará a dançar.',
    ],
    tip:
        'Use sementes para domesticar. Não dê biscoitos: eles fazem mal ao papagaio dentro do jogo.',
  ),
  GuideItem(
    title: 'Disco vindo de um creeper',
    subtitle: 'Curiosidade: um drop diferente',
    image: 'assets/minecraft/items/disco.png',
    instructions: [
      'Nas edições Java e Bedrock, encontre um creeper e um esqueleto. Use armadura, escudo e um espaço com proteção; esse desafio exige cuidado.',
      'Posicione-se de forma que o creeper fique entre você e o esqueleto. Faça as flechas do esqueleto acertarem o creeper sem deixá-lo explodir.',
      'O golpe que derrota o creeper precisa vir da flecha do esqueleto. Recolha o disco que ele deixar e experimente em uma jukebox.',
    ],
    tip:
        'Esse método entrega um disco aleatório de um conjunto específico. Ele não permite obter todos os discos existentes.',
  ),
];
