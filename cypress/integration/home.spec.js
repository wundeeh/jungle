  describe("Home Page", () => {

    before(() => {

      cy.visit("/signup")

      cy.get("[id=user_name]").type("username")

      cy.get("[id=user_email]").type("test@test.com")

      cy.get("[id=user_password]").type("password")
      cy.get("[id=user_password_confirmation]").type("password")

      cy.contains("Submit").click()

      cy.visit("/")

      cy.get("body").then(($body) => {

        console.log("body===", $body)

        if ($body.find("input[id=email]").length > 0) {
          cy.get("[id=email]").type("test@test.com")
          cy.get("[id=password]").type("password")

          cy.contains("Submit").click()
        }
      })
    });

    it("Checks if there are 2 products on the page", () => {
      cy.get(".products article").should("have.length", 2);
    });


  })