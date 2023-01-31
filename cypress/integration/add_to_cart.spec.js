describe ("Add to Cart", () => {
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

  it ("Should add a product to cart and check for the number to increase", () => {

    cy.viewport(1920,1080)

    cy.visit("/")

    cy.get('[alt="Scented Blade"]').click()

    cy.get('.btn').click()

    cy.contains("My Cart (1)").should("exist")
  });
}) 