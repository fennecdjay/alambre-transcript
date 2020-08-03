OiseauParoles = {
  \new Lyrics \lyricsto "OiseauMelodie" {
    Dans cet te lan gueur de sai son
    Où les pen du les font la moue
    Le sou ve nir a le fris son.
    C'est l'é tia ge. Je pense à vous.

    A lais ser fi ler les an nées
    Dans le cou rant sans re gar der;
    En i gno rant vents et ma rées,
    J'ai ou bli é de m'ar rê ter.

    % refrain
    A pré sent j'em por te par tout
    Nos soirs de No ëls cé la dons,
    Où se crè tem ent, mais pour vous,
    Je rac com mo dais mes chan sons.
    Où se crè te ment, mais pour vous - -,
    Je rac com modais mes chan sons.
  }
}

OiseauResteParoles_deux = \markuplist {
  "J'étais un chanteur de bourdaine,"
  "Gardien de tout, semeur de rien,"
  "Un qui à longueur de semaine"
  "Comptait les pierres des chemins."

  "Si les chercheurs de chanterelles"
  "Savaient conduire leurs gamins"
  "Au devant de leurs citadelles"
  "Ils ne marcheraient plus en vain."

  "Mais il nous restera toujours"
  "La mélodie qu'à l'unisson"
  "Tous ensemble nous écrivions"
  "Sur le front de ciel des beaux jours"
}

OiseauResteParoles_trois = \markuplist {
  "J'aurais dû plus souvent jouer"
  "Aux balaises et aux cavaliers,"
  "Aux soldats de plomb, aux guerriers,"
  "Tout ce qui vous faisait rêver."

  "J'aurais dû vous accompagner"
  "Par les sous bois, dans les greniers,"
  "Sauter les flaques à cloche pied"
  "Rien que pour vous faire rigoler."

  "Mais il nous restera toujours"
  "La mélodie qu'à l'unisson"
  "Tous ensemble nous écrivions"
  "Sur le front de ciel des beaux jours"
}

OiseauResteParoles_quatre = \markuplist {
  "Dans cette brume de novembre"
  "Entre l'amanite et le houx,"
  "Avant les rites de décembre"
  "C'est l'étiage. Je pense à vous."

  "Bonne route petits lutins"
  "En songeant à l'oiseau blessé"
  "Sauvé par des bonheurs passés"
  "Sur les plages de Saint-Martin."

  "Et il nous restera toujours"
  "La mélodie qu'à l'unisson"
  "Tous ensemble nous écrivions"
  "Sur le front de ciel des beaux jours."
}

#(define OiseauResteParolesList (list
                                 OiseauResteParoles_deux
                                 OiseauResteParoles_trois
                                 OiseauResteParoles_quatre
                                 ))

OiseauTexte = \reste-paroles \OiseauResteParolesList
