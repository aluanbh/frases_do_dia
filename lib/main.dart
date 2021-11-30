import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:frases_do_dia/frases.dart';
void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Enfrente os problemas e leve a melhor!",
    "Dê mais atenção ao que você tem de bom na sua vida!",
    "Para chegar ao topo, o que importa é começar!",
    "De nada adianta ter sonhos, se você não se empenhar em correr atrás.",
    "Preste atenção nas oportunidades que estão à sua frente!",
    "Positividade para começar o dia é colocar a sua fé em prática",
    "Não deixe nada nem ninguém estragar o seu bom humor",
    "Ontem já passou, é hora de planejar o futuro",
    "Você pode não ter o melhor do mundo, mas tem muito pelo que agradecer!",
    "Não deixe sua felicidade nas mãos de ninguém!",
    "Ninguém, além de você, está no controle de sua felicidade. Portanto, ajuste as velas e corrija e rumo.",
    "Você é capaz de escrever a sua nova história todos os dias",
    "Sua satisfação depende muito da sua determinação",
    "Qual a sua motivação maior ao acordar hoje?",
    "Hoje acordei pra viver, levantar e seguir em frente. Porque a vida sempre pede um pouco mais da gente.",
    "Nunca é tarde para fazer o que você realmente quer fazer",
    "Mais palavras para quê?",
    "Nunca duvide que você é especial!",
    "A beleza começa quando você decide ser você mesma.",
    "Tenha um objetivo na vida e lute sempre para alcançá-lo!",
    "Se quer viver uma vida feliz, amarre-se a um objetivo, não às pessoas ou aos objetos.",
    "A sua melhor chance é o hoje",
    "Um passo de cada vez e a sua vida pode mudar completamente",
    "Se tiver que amar, ame hoje. Se tiver que sorrir, sorria hoje. Se tiver que chorar, chore hoje. Pois o importante é viver hoje. O ontem já foi e o amanhã talvez não venha.",
    "Comece fazendo o que é necessário, depois o que é possível, e de repente você estará fazendo o impossível.",
    "Aproveite o seu presente!",
    "Sorria! Deus acaba de te dar uma nova chance de fazer coisas extraordinárias acontecerem.",
    "Todos os dias você possui uma nova chance de pensar diferente",
    "Nossas cabeças são redondas para que o pensamento possa mudar de direção.",
    "Encare a vida com mais leveza",
    "A vida é muito importante para ser levada a sério.",
    "Confie na esperança todos os dias!",
    "Eu sei que não se pode viver só de esperança, mas sem esperança não vale a pena viver.",
    "Minha idade não define minha maturidade, minhas notas não definem minha inteligência e as fofocas que fazem de mim não definem quem eu sou.",
    "Não deixe que as pessoas te façam desistir daquilo que você mais quer na vida. Acredite. Lute. Conquiste. E acima de tudo, seja feliz.",
    "Não importa o que você decidiu. O que importa é que isso te faça feliz.",
    "Não coloque limites em seus sonhos, coloque fé.",
    "Um pequeno pensamento positivo pela manhã pode mudar todo o seu dia.",
    "O que você tem de diferente é o que você tem de mais bonito.",
    "Algumas pessoas sempre vão jogar pedras no seu caminho, depende de você o que você faz com elas. Uma parede ou uma ponte?",
    "Viva simples, sonhe grande, seja grato, dê amor, ria muito!",
    "Independente do que estiver sentindo, levante-se, vista-se e saia para brilhar.",
    "Se apaixone por alguém que te faça rir dos seus próprios erros, que te aceite do jeito que você é.",
    "Esqueça. Sorria. Deixe ir.",
    "Prefira o sorriso, faz bem a você e aos que estão ao seu redor. Dê risada de tudo, de si mesmo. Não adie alegrias. Seja feliz hoje!",
    "Quer um conselho? Valorize-se.",
    "Valorize-se. É grátis!",
    "Tire o dia para sorrir.",
    "Não se importe com o que as pessoas estão falando por suas costas. Elas estão atrás por uma razão.",
    "Assim como o sol retorna com o seu brilho após a tempestade, você encontrará luz após a escuridão.",
    "Seja a melhor versão de você mesma.",
    "Os tímidos sempre impressionam aqueles que têm paciência de conhecê-los melhor.",
    "Não deixe que o medo de cair te impeça de voar.",
    "Ser especial não é chegar e arrasar, mas sim sair e deixar saudades.",
    "Você é único. Deste modo, ame-se, cuide-se, queira-se bem todos os dias. Perdoe-se sempre e tenha paz consigo mesmo.",
    "Crescer, evoluir e manter as bases fortes!",
    "Seja quem você é, não quem o mundo deseja que você seja.",
    "Não corra atrás de alguém que não dá um passo por você.",
    "Não leve o espelho tão a sério. A verdadeira beleza está dentro do coração.",
    "Beleza atrai atenção, personalidade atrai coração.",
    "Quem nasceu pra ser oceano não se contenta com aquários.",
    "Chorar litros, sorrir mares.",
    "Ela parou de procurar o amor da sua vida depois que achou seu amor próprio.",
    "Não desanime, muita coisa boa vai acontecer.",
    "Seja otimista. Esta é a melhor forma de ver a vida.",
    "Seja você o grande amor da sua vida!  ",
    "Metade de você é melhor do que qualquer outra pessoa por inteiro.",
    "Em vez de se preocupar com o que os outros pensam de você, fique perto de quem te faz feliz.",
    "Querer ser outra pessoa é um desperdício da pessoa que você é.",
    "Quando conseguimos expressar quem a gente é, naquilo que a gente faz, então conseguimos experimentar a realização plena.",
    "Com o passar dos anos aprendi que o mais importante num vestido é a mulher que o veste.",
    "Tem que ser imenso para saber ser sozinho.",
    "Não preciso ser a mais bonita, a mais inteligente ou a mais magra... Quero ser a mais feliz!",
    "Quando você estiver muito apaixonado por você mesmo, vai poder ser muito feliz e se apaixonar por alguém.",
    "Não sou melhor que ninguém, mas procuro ser melhor que eu mesmo a cada dia.",
    "Hoje, é dia de se apaixonar... Por você, por sua família, por seus sonhos, pela vida.",
    "Ria da vida, antes que ela ria de você.",
    "Por muito tempo fui tudo o que pude, agora sou tudo o que quero."
  ];

  var _fraseGerada = "Clique abaixo para gerar a frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases de Sabedoria"),
        backgroundColor: Colors.deepPurple,
      ),
      /*esse Center abaixo centraliza a largura de acordo com a tela,
      é criando um filho e todoo conteúdo dentro dele será alinhado*/
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          /*aqui é uma borda para verificar o tamanho do container
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "NOVA FRASE",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.deepPurple,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      )
    );
  }
}
