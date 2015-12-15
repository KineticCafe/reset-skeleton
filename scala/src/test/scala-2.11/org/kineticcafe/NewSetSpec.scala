package org.kineticcafe

import org.scalatest._

class NewSetSpec extends FlatSpec with Matchers {
  "A NewSet" should "accepts empty initial arguments" in {
    val new_set = new NewSet

    assertResult(0) {
      new_set.length
    }
  }
}
