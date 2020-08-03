CollineParoles = {
  \new Lyrics \lyricsto "CollineCouplet" {
    A la source de la col line
    Où nous bu vions nos seize ans
    Je suis mon té ce ma tin
    Pour voir si tour naient en cor’
    Les roues des pe tits mou lins
    Mais j’n’ai trou vé qu’le vent du nord
  }
}

CollineResteParolesdeux = \markuplist {
  "Il m’a dit que la colline"
  "Où nous buvions nos seize ans"
  "Avait changé de chemise"
  "Avait changé d’opinion"
  "Qu’il n’fallait plus trop qu’on mise"
  "Sur une réconciliation"
}

CollineResteParolestrois = \markuplist {
  "A la source de la colline"
  "Je n’ai plus chanté son nom"
  "Et le gros châtaignier creux"
  "Ne m’a plus cligné de l’œil"
  "Un combat contre le feu"
  "Lui a fait prendre le deuil"
}

CollineResteParolesquatre = \markuplist {
  "C’est le deuil de la colline"
  "Qui a perdu nos prénoms"
  "Ces prénoms de gars de filles"
  "Qui sont devenus bourgeois"
  "Aux soirées de camomille"
  "Aux souvenirs pour seules joies"

}

CollineResteParolescinq = \markuplist {
  "Aux souvenirs de la colline"
  "A la source des seize ans"
  "Vous remonterez un jour"
  "Quand vous manquerez d’amour"
  "Car le goût est toujours bon"
  "A la source des saisons"
}

CollineResteParolessix = \markuplist {
  "A la source de la colline"
  "D’où sont partis nos seize ans"
  "Je suis monté ce matin"
  "J’ai rencontré l’vent du nord"
  "Il m’a dit « fait pas l’malin !"
  "La grande roue tourn’ encor’"
}

CollineResteParolessept = \markuplist {
  "Et j’ai quitté ma colline"
  "Avec trois sous et vingt ans"
  "J’étais resté le dernier"
  "A croire aux petits moulins"
  "Ne peut-on me pardonner"
  "D’avoir aimé ces chemins"
}

CollineResteParoleshuit = \markuplist {
  "Ces chemins de la colline"
  "Où chaque pierre à seize ans"
  "J’étais fier de leur montrer"
  "Que moi je voulais rester"
  "Mais la vie est une piste"
  "Qui n’aime guèr’ les artistes"
}

CollineResteParolesneuf =  \markuplist {
  "A la source de la colline"
  "Où nous buvions nos seize ans"
  "Je suis monté ce matin"
  "Pour voir si tournaient encor’"
  "Les roues des petits moulins"
  "Mais j’n’ai trouvé qu’l’vent du nord"
}

#(define CollineResteParoles (list
  CollineResteParolesdeux
  CollineResteParolestrois
  CollineResteParolesquatre
  CollineResteParolescinq
  CollineResteParolessix
  CollineResteParolessept
  CollineResteParoleshuit
  CollineResteParolesneuf))

CollineTexte = \reste-paroles \CollineResteParoles
