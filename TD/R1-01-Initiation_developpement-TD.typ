#import "@preview/ilm:1.1.2": *


#show: ilm.with(
  title: [R1-01 - Initiation au développement - TD],
  author: "Silvia Valéro, Équipe pédagogique",
  date: datetime(year: 2024, month: 08, day: 19),
  abstract: [],
  preface: [],
 // bibliography: bibliography("refs.bib"),
  figure-index: (enabled: false),
  table-index: (enabled: false),
  listing-index: (enabled: false)
)

#set heading(numbering: "1.1.")

#import "TD1-Structures-controle.typ":*
#td1(isCorrection: true)

#import "TD2-Trace-dessins.typ":*
#td2(isCorrection: true)