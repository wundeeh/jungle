describe ("Product Details", () => {
  before(() => {

    cy.visit("/signup")

    cy.get("[id=user_name]").type("username")

    cy.get("[id=user_email]").type("test@test.com")

    cy.get("[id=user_password]").type("password")
    cy.get("[id=user_password_confirmation]").type("password")

    cy.contains("Submit").click()

    cy.visit("/")

    cy.get("body").then(($body) => {

      if ($body.find("input[id=email]").length > 0) {
        cy.get("[id=email]").type("test@test.com")
        cy.get("[id=password]").type("password")

        cy.contains("Submit").click()
      }
    })
  });

  it ("Should be able to check the product details", () => {
    
    cy.visit("/")

    cy.get('[alt="Scented Blade"]').click()

    cy.contains("The Scented Blade is an extremely rare, tall plant and can be found mostly in savannas. It blooms once a year, for 2 weeks.")
    .should("exist")
  });
})