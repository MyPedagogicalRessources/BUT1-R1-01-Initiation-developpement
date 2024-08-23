#let remarque(body, fill: luma(250), title: "Remarque") = {
  rect(
    fill: fill,
    inset: 8pt,
    radius: 4pt,
    stroke: luma(200),
    [#title :\ #body],
  )
}

#let correction(body, displayCorrection:true) = {
  if (displayCorrection) {
    block(
    fill: luma(250),
    inset: 8pt,
    radius: 4pt,
    stroke: luma(200),
    [
      *Correction* 
      #body
    ],
  )
  }
}

#let comment(body, prefix: "--") = {
  set text(green)
  [_ #prefix #body _]
}

#let fix(body, fill: rgb("#DFEED7"), title: "fix") = {
  rect(
    fill: fill,
    inset: 8pt,
    radius: 4pt,
    stroke: luma(200),
    [#title #body],
  )
}