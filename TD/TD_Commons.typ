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
    rect(
    fill: luma(250),
    [
      *Correction* 
      #body
    ],
  )
  }
}